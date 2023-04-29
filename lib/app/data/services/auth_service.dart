import 'dart:async';

import 'package:dungeon_paper/app/data/services/loading_service.dart';
import 'package:dungeon_paper/app/data/services/repository_service.dart';
import 'package:dungeon_paper/app/data/services/user_service.dart';
import 'package:dungeon_paper/core/platform_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../model_utils/user_utils.dart';

class AuthService extends GetxService with UserServiceMixin, LoadingServiceMixin, RepositoryServiceMixin {
  StreamSubscription<User?>? _sub;

  FirebaseAuth get auth => FirebaseAuth.instance;
  final gSignIn = GoogleSignIn.standard();
  final _fbUser = Rx<User?>(null);
  User? get fbUser => _fbUser.value;

  Future<UserCredential> loginWithPassword({
    required String email,
    required String password,
  }) async =>
      auth.signInWithEmailAndPassword(email: email, password: password);

  Future<UserCredential> loginWithProvider(ProviderName provider) {
    switch (provider) {
      case ProviderName.google:
        return loginWithGoogle();
      case ProviderName.apple:
        return loginWithApple();
      default:
        throw ArgumentError('Invalid provider: $provider');
    }
  }

  Future<AuthCredential> getProviderCredential(ProviderName provider) {
    switch (provider) {
      case ProviderName.google:
        return getGoogleCredential();
      case ProviderName.apple:
        return getAppleCredential();
      default:
        throw ArgumentError('Invalid provider: $provider');
    }
  }

  Future<void> logoutFromProvider(ProviderName provider) {
    switch (provider) {
      case ProviderName.google:
        return gSignIn.signOut();
      case ProviderName.apple:
        return Future.value();
      default:
        throw ArgumentError('Invalid provider: $provider');
    }
  }

  Future<UserCredential> loginWithGoogle() async {
    final cred = await getGoogleCredential();
    return auth.signInWithCredential(cred);
  }

  Future<AuthCredential> getGoogleCredential() async {
    final gUser = await gSignIn.signIn();
    if (gUser == null) {
      throw StateError('user_cancel');
    }
    final gAuth = await gUser.authentication;
    return GoogleAuthProvider.credential(
      idToken: gAuth.idToken,
      accessToken: gAuth.accessToken,
    );
  }

  Future<UserCredential> loginWithApple() async {
    final credential = await getAppleCredential();
    return auth.signInWithCredential(credential);
  }

  Future<OAuthCredential> getAppleCredential() async {
    final cred = await SignInWithApple.getAppleIDCredential(
      // webAuthenticationOptions: WebAuthenticationOptions(
      //   clientId: 'clientId',
      //   redirectUri: Uri.parse(
      //       'intent://callback?${PARAMETERS_FROM_CALLBACK_BODY}#Intent;package=YOUR.PACKAGE.IDENTIFIER;scheme=signinwithapple;end'),
      // ),
      // webAuthenticationOptions: WebAuthenticationOptions(
      //   clientId: 'app.dungeonpaper',
      //   redirectUri:
      //       // kIsWeb
      //       //     ? Uri.parse('https://${window.location.host}/'):
      //       Uri.parse(
      //     'https://flutter-sign-in-with-apple-example.glitch.me/callbacks/sign_in_with_apple',
      //   ),
      // ),
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );
    final oAuthProvider = OAuthProvider('apple.com');
    final credential = oAuthProvider.credential(
      idToken: cred.identityToken,
      accessToken: cred.authorizationCode,
    );
    return credential;
  }

  Future<void> logout() async {
    _clearAuthListener();
    // await StorageHandler.instance.local.clear();
    await repo.my.dispose();
    await auth.signOut();
    try {
      if (PlatformHelper.canUseGoogleSignIn) {
        await gSignIn.signOut();
      }
      // if (PlatformHelper.canUseAppleSignIn) {
      //   SignInWithApple.
      // }
    } catch (e) {
      debugPrint('Error while logging out: $e');
    }
    user.applyDefaultTheme();
    _registerAuthListener();
  }

  @override
  void onInit() {
    super.onInit();
    _registerAuthListener();
  }

  void _registerAuthListener() {
    debugPrint('Registering auth listener');
    _sub = auth.userChanges().listen(_authListener);
  }

  void _authListener(User? user) {
    if (_sub == null) {
      return;
    }
    debugPrint('fb user changed: $user');
    _fbUser.value = user;

    if (user != null) {
      loadingService.loadingCharacters = !loadingService.afterFirstLoad;
      loadingService.afterFirstLoad = false;
      userService.loadUserData(user);
      return;
    }

    userService.loadGuestData();
  }

  Future<UserCredential> signUp({required String email, required String password}) async =>
      auth.createUserWithEmailAndPassword(email: email, password: password);

  void _clearAuthListener() {
    debugPrint('clearing auth listener');
    _sub?.cancel();
    _sub = null;
  }
}

mixin AuthServiceMixin {
  AuthService get authService => Get.find();
}
