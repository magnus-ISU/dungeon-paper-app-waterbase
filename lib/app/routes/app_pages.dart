import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../data/models/character_class.dart';
import '../data/models/item.dart';
import '../data/models/meta.dart';
import '../data/models/move.dart';
import '../data/models/note.dart';
import '../data/models/race.dart';
import '../data/models/spell.dart';
import '../data/services/character_service.dart';
import '../modules/AbilityScoreForm/bindings/ability_score_form_binding.dart';
import '../modules/AbilityScoreForm/views/ability_score_form_view.dart';
import '../modules/AbilityScoresForm/bindings/ability_scores_form_binding.dart';
import '../modules/AbilityScoresForm/views/ability_scores_form_view.dart';
import '../modules/About/bindings/about_binding.dart';
import '../modules/About/views/about_view.dart';
import '../modules/Account/bindings/account_binding.dart';
import '../modules/Account/views/account_view.dart';
import '../modules/BasicInfoForm/bindings/basic_info_form_binding.dart';
import '../modules/BasicInfoForm/views/basic_info_form_view.dart';
import '../modules/BioForm/bindings/bio_form_binding.dart';
import '../modules/BioForm/views/bio_form_view.dart';
import '../modules/BondsFlagsForm/bindings/bonds_flags_form_binding.dart';
import '../modules/BondsFlagsForm/views/bonds_flags_form_view.dart';
import '../modules/Campaign/CampaignsList/bindings/campaigns_list_binding.dart';
import '../modules/Campaign/CampaignsList/views/campaigns_list_view.dart';
import '../modules/Campaign/bindings/campaign_binding.dart';
import '../modules/Campaign/views/campaign_view.dart';
import '../modules/CharacterList/bindings/character_list_binding.dart';
import '../modules/CharacterList/views/character_list_view.dart';
import '../modules/ClassAlignments/bindings/class_alignments_binding.dart';
import '../modules/ClassAlignments/views/class_alignments_view.dart';
import '../modules/CreateCharacter/SelectMovesSpells/bindings/select_moves_spells_binding.dart';
import '../modules/CreateCharacter/SelectMovesSpells/views/select_moves_spells_view.dart';
import '../modules/CreateCharacter/bindings/create_character_binding.dart';
import '../modules/CreateCharacter/views/create_character_view.dart';
import '../modules/Home/bindings/home_binding.dart';
import '../modules/Home/views/home_view.dart';
import '../modules/ImportExport/bindings/import_export_binding.dart';
import '../modules/ImportExport/views/import_export_view.dart';
import '../modules/LibraryList/bindings/library_collection_binding.dart';
import '../modules/LibraryList/bindings/library_form_binding.dart';
import '../modules/LibraryList/bindings/library_list_binding.dart';
import '../modules/LibraryList/views/character_classes_library_list_view.dart';
import '../modules/LibraryList/views/items_library_list_view.dart';
import '../modules/LibraryList/views/library_collection_view.dart';
import '../modules/LibraryList/views/moves_library_list_view.dart';
import '../modules/LibraryList/views/races_library_list_view.dart';
import '../modules/LibraryList/views/spells_library_list_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Migration/bindings/migration_binding.dart';
import '../modules/Migration/views/migration_view.dart';
import '../modules/SelectCharacterTheme/bindings/select_character_theme_binding.dart';
import '../modules/SelectCharacterTheme/views/select_character_theme_view.dart';
import '../modules/SendFeedback/bindings/send_feedback_binding.dart';
import '../modules/SendFeedback/views/send_feedback_view.dart';
import '../modules/Settings/bindings/settings_binding.dart';
import '../modules/Settings/views/settings_view.dart';
import '../modules/StartingGearForm/bindings/starting_gear_form_binding.dart';
import '../modules/StartingGearForm/views/starting_gear_form_view.dart';
import '../modules/UniversalSearch/bindings/universal_search_binding.dart';
import '../modules/UniversalSearch/views/universal_search_view.dart';
import '../widgets/forms/character_class_form.dart';
import '../widgets/forms/item_form.dart';
import '../widgets/forms/move_form.dart';
import '../widgets/forms/note_form.dart';
import '../widgets/forms/race_form.dart';
import '../widgets/forms/spell_form.dart';
import '../widgets/molecules/user_menu_popover.dart';
import '../widgets/views/roll_dice_view.dart';
import 'custom_transitions.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final pageController = PageController();

  static final CharacterService characterService = Get.find();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.userMenu,
      page: () => UserMenuPopover(),
      preventDuplicates: false,
      fullscreenDialog: true,
      opaque: false,
      customTransition: CustomTransitions.circularReveal(
        alignment: Alignment.topRight,
        offset: const Offset(-24, 64),
      ),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.characterList,
      page: () => const CharacterListPageView(),
      binding: CharacterListPageBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.settings,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.importExport,
      page: () => const ImportExportView(),
      binding: ImportExportBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.rollDice,
      page: () => RollDiceView(dice: Get.arguments),
      opaque: false,
      fullscreenDialog: true,
      customTransition: CustomTransitions.circularReveal(
        alignment: Alignment.bottomCenter,
      ),
      transition: Transition.circularReveal,
    ),

    //

    GetPage(
      name: Routes.library,
      page: () => const LibraryCollectionView(),
      binding: LibraryCollectionBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.moves,
      page: () => const MovesLibraryListView(),
      binding: LibraryListBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.editMove,
      page: () => const MoveForm(),
      binding: LibraryFormBinding<Move>(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.spells,
      page: () => const SpellsLibraryListView(),
      binding: LibraryListBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.editSpell,
      page: () => const SpellForm(),
      binding: LibraryFormBinding<Spell>(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.items,
      page: () => const ItemsLibraryListView(),
      binding: LibraryListBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.editItem,
      page: () => const ItemForm(),
      binding: LibraryFormBinding<Item>(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.classes,
      page: () => const CharacterClassesLibraryListView(),
      binding: LibraryListBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.editClass,
      page: () => const CharacterClassForm(),
      binding: LibraryFormBinding<CharacterClass>(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.races,
      page: () => const RacesLibraryListView(),
      binding: LibraryListBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.editRace,
      page: () => const RaceForm(),
      binding: LibraryFormBinding<Race>(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.editNote,
      page: () => const NoteForm(),
      binding: LibraryFormBinding<Note>(),
      preventDuplicates: false,
    ),

    //

    GetPage(
      name: Routes.bondsFlags,
      page: () => const BondsFlagsFormView(),
      binding: BondsFlagsFormBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.bio,
      page: () => const BioFormView(),
      binding: BioFormBinding(),
    ),
    GetPage(
      name: Routes.basicInfo,
      page: () => const BasicInfoFormView(),
      binding: BasicInfoFormBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.abilityScores,
      page: () => const AbilityScoresFormView(),
      binding: AbilityScoresFormBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.abilityScoreForm,
      page: () => const AbilityScoreFormView(),
      binding: AbilityScoreFormBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.bondsFlags,
      page: () => const BondsFlagsFormView(),
      binding: AbilityScoresFormBinding(),
      preventDuplicates: false,
    ),

    //

    GetPage(
      name: Routes.createCharacter,
      page: () => const CreateCharacterView(),
      binding: CreateCharacterBinding(),
      preventDuplicates: false,
      opaque: false,
      fullscreenDialog: true,
    ),
    GetPage(
      name: Routes.createCharacterSelectClass,
      page: () => const CharacterClassesLibraryListView(),
      binding: LibraryListBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.createCharacterStartingGear,
      page: () => const StartingGearFormView(),
      binding: StartingGearFormBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.createCharacterMovesSpells,
      page: () => const SelectMovesSpellsView(),
      binding: SelectMovesSpellsBinding(),
      preventDuplicates: false,
    ),

    GetPage(
      name: Routes.createCharacterBasicInfo,
      page: () => const BasicInfoFormView(),
      binding: BasicInfoFormBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.createCharacterAbilityScores,
      page: () => const AbilityScoresFormView(),
      binding: AbilityScoresFormBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.classAlignments,
      page: () => const ClassAlignmentsView(),
      binding: ClassAlignmentsBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.universalSearch,
      page: () => UniversalSearchView(),
      binding: UniversalSearchBinding(),
      opaque: false,
      fullscreenDialog: true,
      customTransition: CustomTransitions.circularReveal(
        // alignment: Alignment.topRight,
        // offset: const Offset(-76, 64),
        alignment: Alignment.topLeft,
        offset: const Offset(26, 64),
      ),
      // transitionDuration: const Duration(seconds: 1),
      transition: Transition.circularReveal,
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.migration,
      page: () => const MigrationView(),
      binding: MigrationBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.about,
      page: () => const AboutView(),
      binding: AboutBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: Routes.selectCharacterTheme,
      page: () => const SelectCharacterThemeView(),
      binding: SelectCharacterThemeBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: _Paths.abilityScoreForm,
      page: () => const AbilityScoreFormView(),
      binding: AbilityScoreFormBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: _Paths.account,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.sendFeedback,
      page: () => const SendFeedbackView(),
      binding: SendFeedbackBinding(),
    ),
    GetPage(
      name: _Paths.campaigns,
      page: () => const CampaignsListView(),
      binding: CampaignsListBinding(),
    ),
  ];
}

class CustomTransitions {
  static CustomTransition circularReveal({
    Offset? offset,
    Alignment? alignment,
  }) {
    return CustomCircularRevealTransition(offset: offset, alignment: alignment);
  }
}
