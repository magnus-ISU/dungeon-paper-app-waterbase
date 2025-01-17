import 'dart:async';

import 'package:dungeon_paper/app/data/models/meta.dart';
import 'package:dungeon_paper/app/data/services/character_service.dart';
import 'package:dungeon_paper/app/data/services/library_service.dart';
import 'package:dungeon_paper/app/data/services/repository_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum FiltersGroup {
  playbook,
  my,
  // online,
}

class LibraryListController<T extends WithMeta, F extends EntityFilters<T>> extends GetxController
    with GetSingleTickerProviderStateMixin, LibraryServiceMixin, CharacterServiceMixin {
  final repo = Get.find<RepositoryService>().obs;
  final chars = Get.find<CharacterService>().obs;

  final selected = <T>[].obs;
  final removed = <T>[].obs;
  final filters = <FiltersGroup, F?>{}.obs;
  final search = <FiltersGroup, TextEditingController>{}.obs;

  late final void Function(Iterable<T> items)? onSelected;
  late final bool Function(T item, F filters) filterFn;
  late final int Function(T a, T b) Function(F filters) sortFn;
  late final bool multiple;
  late final Iterable<T> preSelections;
  late final Map<String, dynamic> extraData;
  late final TabController tabController;

  bool get selectable => onSelected != null;

  Iterable<T> get builtInList => filterList(builtInListRaw, FiltersGroup.playbook, filterFn, sortFn);

  Iterable<T> get builtInListRaw => repo.value.builtIn.listByType<T>().values.toList();

  Iterable<T> get myList => filterList(myListRaw, FiltersGroup.my, filterFn, sortFn);

  Iterable<T> get myListRaw => repo.value.my.listByType<T>().values.toList();
  String get storageKey => Meta.storageKeyFor(T);

  @override
  void onInit() {
    super.onInit();
    assert(Get.arguments != null);
    final LibraryListArguments<T, F> args = Get.arguments;
    filters.addAll(args.filters.cast<FiltersGroup, F?>());
    onSelected = args.onSelected;
    filterFn = args.filterFn;
    sortFn = args.sortFn;
    multiple = args.multiple;
    preSelections = args.preSelections;
    extraData = args.extraData;
    search[FiltersGroup.playbook] ??= TextEditingController();
    search[FiltersGroup.playbook]!.addListener(_updatePlaybookSearch);
    search[FiltersGroup.my] ??= TextEditingController();
    search[FiltersGroup.my]!.addListener(_updateMySearch);
    tabController = TabController(
      initialIndex: FiltersGroup.values.indexOf(args.initialTab),
      // length: 3,
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    search[FiltersGroup.playbook]!.removeListener(_updatePlaybookSearch);
    search[FiltersGroup.my]!.removeListener(_updateMySearch);
    super.dispose();
  }

  void setFilters(FiltersGroup group, F? filters) {
    this.filters[group] = filters;
    this.filters.refresh();
  }

  void toggleItem(T item, bool state) {
    if (!selectable) {
      return;
    }

    if (!multiple) {
      selected.clear();
      for (final sel in preSelections) {
        removed.addIf(
          removed.firstWhereOrNull(_compare(sel)) == null,
          sel,
        );
      }
    }

    if (state) {
      selected.addIf(
        selected.firstWhereOrNull(_compare(item)) == null,
        item,
      );
      removed.removeWhere(_compare(item));
    } else {
      selected.removeWhere(_compare(item));
      removed.addIf(
        removed.firstWhereOrNull(_compare(item)) == null,
        item,
      );
    }
  }

  _compare(T item) {
    return (T element) {
      return (element.meta.sharing?.sourceKey ?? element.key) == item.key || element.key == item.key;
    };
  }

  void saveCustomItem(String storageKey, T item) {
    toggleItem(item, true);
    debugPrint('Saving $item');
    library.upsertToLibrary<T>([item]);
  }

  void deleteCustomItem(String storageKey, T item) {
    toggleItem(item, false);
    debugPrint('Deleting $item');
    library.removeFromLibrary<T>([item]);
  }

  List<T> get selectedWithMeta => selected;
  // selected.map((e) => forkMeta<T>(e, Get.find<UserService>().current)).toList();

  bool isSelected(T item) => multiple
      ?
      // multiple: if is selected or pre-selected
      isInCurrentSelectedList(item) || isPreSelected(item)
      :
      // single: if is pre-selected, then only if it was not removed,
      //         if not pre-selected, then only if nothing else is selected
      (isPreSelected(item) && !isRemoved(item)) || isInCurrentSelectedList(item);

  bool isInCurrentSelectedList(T item) =>
      selected.firstWhereOrNull((element) => [element.meta.sharing?.sourceKey, element.key].contains(item.key)) != null;

  bool isRemoved(T item) => removed.firstWhereOrNull(_compare(item)) != null;

  bool isPreSelected(T item) => preSelections.toList().firstWhereOrNull(_compare(item)) != null;

  bool isEnabled(T item) => multiple
      ?
      // multiple: if is not pre-selected
      !isPreSelected(item)
      : true;
  // single: if is pre-selected or nothing is selected
  // isPreSelected(item, preSelections, multiple) ||
  //     (preSelections.isEmpty || isRemoved(preSelections.first));

  Iterable<T> filterList(
    Iterable<T> list,
    FiltersGroup group,
    bool Function(T item, F filters)? filterFn, [
    int Function(T a, T b) Function(F filters)? sortFn,
    F? initialFilters,
  ]) {
    final filtered = filterFn != null && (filters[group] != null || initialFilters != null)
        ? list.where((x) => filterFn(x, filters[group] ?? initialFilters!)).toList()
        : list.toList();
    return sortFn != null ? (filtered..sort(sortFn(filters[group] ?? initialFilters!))) : filtered;
  }

  void _updatePlaybookSearch() {
    filters[FiltersGroup.playbook]?.setSearch(search[FiltersGroup.playbook]!.text);
    search.refresh();
    repo.refresh();
  }

  void _updateMySearch() {
    filters[FiltersGroup.my]?.setSearch(search[FiltersGroup.my]!.text);
    search.refresh();
    repo.refresh();
  }
}

abstract class EntityFilters<T> {
  void setSearch(String search);
  bool filter(T item);
  double getScore(T item);

  final controller = StreamController<EntityFilters<T>>.broadcast();

  Stream get onChanged => controller.stream;

  List<bool?> get filterActiveList;

  int get activeFilterCount => filterActiveList.where((element) => element == true).length;

  int get totalFilterCount => filterActiveList.length;

  bool get isEmpty => activeFilterCount == 0;
  bool get isNotEmpty => !isEmpty;

  int sortByScore(T a, T b) => getScore(b).compareTo(getScore(a));
}

abstract class LibraryListArguments<T extends WithMeta, F extends EntityFilters<T>> {
  final Map<FiltersGroup, F?> filters;

  final void Function(Iterable<T> items)? onSelected;
  final bool Function(T item, F filters) filterFn;
  final int Function(T a, T b) Function(F filters) sortFn;
  final bool multiple;
  final Iterable<T> preSelections;
  final Map<String, dynamic> extraData;
  final FiltersGroup initialTab;

  LibraryListArguments({
    required this.filters,
    required this.onSelected,
    required this.filterFn,
    required this.sortFn,
    this.multiple = true,
    required this.preSelections,
    required this.extraData,
    FiltersGroup? initialTab = FiltersGroup.playbook,
  }) : initialTab = initialTab ?? FiltersGroup.playbook;
}
