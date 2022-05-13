import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'character_service.dart';
import 'library_service.dart';
import 'repository_service.dart';
import 'user_service.dart';

Future<void> initServices() async {
  debugPrint('Starting services...');

  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.
  await Get.putAsync(() => Future.value(UserService()));
  await Get.putAsync(() => Future.value(CharacterService()));
  await Get.putAsync(() => Future.value(RepositoryService()));
  await Get.putAsync(() => Future.value(LibraryService()));
  debugPrint('All services started');
}
