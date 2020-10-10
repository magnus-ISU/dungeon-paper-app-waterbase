import 'package:apple_sign_in/apple_sign_in.dart';
import 'package:dungeon_paper/db/db.dart';
import 'package:dungeon_paper/db/listeners.dart';
import 'package:dungeon_paper/db/models/user.dart';
import 'package:dungeon_paper/src/redux/stores.dart';
import 'package:dungeon_paper/src/redux/users/user_store.dart';
import 'package:dungeon_paper/src/utils/analytics.dart';
import 'package:dungeon_paper/src/utils/api.dart';
import 'package:dungeon_paper/src/utils/logger.dart';
import 'package:dungeon_paper/src/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pedantic/pedantic.dart';
import 'auth_common.dart';
export 'auth_common.dart';
part 'auth_email.dart';
part 'auth_google.dart';
part 'auth_apple.dart';
part 'auth_helpers.dart';

Future<UserLogin> signInWithCredentials(AuthCredential creds) async {
  assert(creds != null);
  dwStore.dispatch(RequestLogin());

  final res = await auth.signInWithCredential(creds);
  return signInWithFbUser(
      SignInMethod.fromCredential(res.credential), res?.user);
}

Future<bool> linkWithCredentials(AuthCredential creds) async {
  final user = auth.currentUser;
  try {
    await user.linkWithCredential(creds);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'requires-recent-login') {
      await reauthenticateUser(user);
      await user.linkWithCredential(creds);
      return true;
    }
    rethrow;
  } catch (e, stack) {
    logger.w('Could not link with credential: $creds', e, stack);
    return false;
  }
}

Future<bool> unlinkFromProvider(String providerId) async {
  final user = auth.currentUser;
  try {
    await user.unlink(providerId);
    return true;
  } on PlatformException catch (e) {
    if (e.code == 'ERROR_REQUIRES_RECENT_LOGIN') {
      await reauthenticateUser(user);
      await user.unlink(providerId);
      return true;
    }
    rethrow;
  } catch (e, stack) {
    logger.w('Could not unlink with provider: $providerId', e, stack);
    return false;
  }
}

Future<bool> updateEmail(String email) async {
  final user = auth.currentUser;
  try {
    await user.updateEmail(email);
    return true;
  } on PlatformException catch (e) {
    if (e.code == 'ERROR_REQUIRES_RECENT_LOGIN') {
      await reauthenticateUser(user);
      await user.updateEmail(email);
      return true;
    }
    rethrow;
  } catch (e, stack) {
    logger.w('Could not update email to: $email', e, stack);
    return false;
  }
}

Future<bool> reauthenticateUser(fb.User user) async {
  try {
    AuthCredential origCreds;
    final primary = getPrimaryAuthProvider(user);
    switch (primary.providerId) {
      case 'google.com':
        origCreds = await getGoogleCredential(interactive: true);
        break;
      case 'apple.com':
        origCreds = await getAppleCredential(interactive: true);
        break;
      default:
        throw Exception('Unimplemented provider method');
    }
    await user.reauthenticateWithCredential(origCreds);
    return true;
  } catch (e) {
    return false;
  }
}

Future<void> sendPasswordResetLink() async {
  final user = auth.currentUser;
  await auth.sendPasswordResetEmail(email: user.email);
}

Future<UserLogin> signInAutomatically() async {
  return signInWithFbUser(SignInMethod.firebase, auth.currentUser);
}

Future<UserLogin> signInWithFbUser(
    SignInMethod signInMethod, fb.User fbUser) async {
  final dbUser = await getDatabaseUser(
    fbUser,
    signInMethod: signInMethod,
  );

  dispatchFinalDataToStore(
    firebaseUser: fbUser,
    user: dbUser,
  );

  return UserLogin(
    firebaseUser: fbUser,
    user: dbUser,
  );
}

Future<void> signOutAll() async {
  dwStore.dispatch(Logout());
  await _getGSignIn();
  unawaited(_gSignIn.disconnect());
  unawaited(auth.signOut());
}

void dispatchFinalDataToStore({
  @required fb.User firebaseUser,
  @required User user,
}) async {
  if ([firebaseUser, user].any((el) => el == null)) {
    dwStore.dispatch(NoLogin());
    return;
  }

  dwStore.dispatch(Login(
    user: user,
    firebaseUser: firebaseUser,
  ));

  unawaited(analytics.logLogin(
    loginMethod: 'firebase',
  ));
  unawaited(analytics.setUserId(firebaseUser.uid));
  unawaited(analytics.setUserProperty(
    name: 'document_id',
    value: user.documentID,
  ));
  unawaited(analytics.setUserProperty(
    name: 'is_tester',
    value: user.isTester.toString(),
  ));

  registerAllListeners(firebaseUser);
}

void registerAllListeners(fb.User fbUser) {
  registerFirebaseUserListener();
  registerUserListener(fbUser);
  registerCharactersListener();
  registerCustomClassesListener();
}
