// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
        _current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// ``
  String get abilityScoreBondDebilityDescription {
    return Intl.message(
      '',
      name: 'abilityScoreBondDebilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Lonely`
  String get abilityScoreBondDebilityName {
    return Intl.message(
      'Lonely',
      name: 'abilityScoreBondDebilityName',
      desc: '',
      args: [],
    );
  }

  /// `When a move has you roll+BOND you'll count the number of bonds you have with the character in question and add that to the roll.`
  String get abilityScoreBondDescription {
    return Intl.message(
      'When a move has you roll+BOND you\'ll count the number of bonds you have with the character in question and add that to the roll.',
      name: 'abilityScoreBondDescription',
      desc: '',
      args: [],
    );
  }

  /// `Charisma`
  String get abilityScoreBondName {
    return Intl.message(
      'Charisma',
      name: 'abilityScoreBondName',
      desc: '',
      args: [],
    );
  }

  /// `Roll +{stat}`
  String abilityScoreButtonTooltip(Object stat) {
    return Intl.message(
      'Roll +$stat',
      name: 'abilityScoreButtonTooltip',
      desc: '',
      args: [stat],
    );
  }

  /// `It may not be permanent, but for now you don't look so good.`
  String get abilityScoreChaDebilityDescription {
    return Intl.message(
      'It may not be permanent, but for now you don\'t look so good.',
      name: 'abilityScoreChaDebilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Scarred`
  String get abilityScoreChaDebilityName {
    return Intl.message(
      'Scarred',
      name: 'abilityScoreChaDebilityName',
      desc: '',
      args: [],
    );
  }

  /// `Measures a character's personality, personal magnetism, ability to lead, and appearance.`
  String get abilityScoreChaDescription {
    return Intl.message(
      'Measures a character\'s personality, personal magnetism, ability to lead, and appearance.',
      name: 'abilityScoreChaDescription',
      desc: '',
      args: [],
    );
  }

  /// `Charisma`
  String get abilityScoreChaName {
    return Intl.message(
      'Charisma',
      name: 'abilityScoreChaName',
      desc: '',
      args: [],
    );
  }

  /// `Something just isn't right inside. Maybe you've got a disease or a wasting illness. Maybe you just drank too much ale last night and it's coming back to haunt you.`
  String get abilityScoreConDebilityDescription {
    return Intl.message(
      'Something just isn\'t right inside. Maybe you\'ve got a disease or a wasting illness. Maybe you just drank too much ale last night and it\'s coming back to haunt you.',
      name: 'abilityScoreConDebilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sick`
  String get abilityScoreConDebilityName {
    return Intl.message(
      'Sick',
      name: 'abilityScoreConDebilityName',
      desc: '',
      args: [],
    );
  }

  /// `Represents your character's health and stamina.`
  String get abilityScoreConDescription {
    return Intl.message(
      'Represents your character\'s health and stamina.',
      name: 'abilityScoreConDescription',
      desc: '',
      args: [],
    );
  }

  /// `Constitution`
  String get abilityScoreConName {
    return Intl.message(
      'Constitution',
      name: 'abilityScoreConName',
      desc: '',
      args: [],
    );
  }

  /// `You're unsteady on your feet and you've got a shake in your hands.`
  String get abilityScoreDexDebilityDescription {
    return Intl.message(
      'You\'re unsteady on your feet and you\'ve got a shake in your hands.',
      name: 'abilityScoreDexDebilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Shaky`
  String get abilityScoreDexDebilityName {
    return Intl.message(
      'Shaky',
      name: 'abilityScoreDexDebilityName',
      desc: '',
      args: [],
    );
  }

  /// `Measures agility, reflexes and balance.`
  String get abilityScoreDexDescription {
    return Intl.message(
      'Measures agility, reflexes and balance.',
      name: 'abilityScoreDexDescription',
      desc: '',
      args: [],
    );
  }

  /// `Dexterity`
  String get abilityScoreDexName {
    return Intl.message(
      'Dexterity',
      name: 'abilityScoreDexName',
      desc: '',
      args: [],
    );
  }

  /// `A description of the effect causing the debility and/or how it affects your character`
  String get abilityScoreFormDebilityDescriptionDescription {
    return Intl.message(
      'A description of the effect causing the debility and/or how it affects your character',
      name: 'abilityScoreFormDebilityDescriptionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Debility Description`
  String get abilityScoreFormDebilityDescriptionLabel {
    return Intl.message(
      'Debility Description',
      name: 'abilityScoreFormDebilityDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `The name for the debility that occurs when this stat is debilitated (takes -1 until recovered).`
  String get abilityScoreFormDebilityNameDescription {
    return Intl.message(
      'The name for the debility that occurs when this stat is debilitated (takes -1 until recovered).',
      name: 'abilityScoreFormDebilityNameDescription',
      desc: '',
      args: [],
    );
  }

  /// `Debility Name`
  String get abilityScoreFormDebilityNameLabel {
    return Intl.message(
      'Debility Name',
      name: 'abilityScoreFormDebilityNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `A description of what this ability score represents`
  String get abilityScoreFormDescriptionDescription {
    return Intl.message(
      'A description of what this ability score represents',
      name: 'abilityScoreFormDescriptionDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ability Score Description`
  String get abilityScoreFormDescriptionLabel {
    return Intl.message(
      'Ability Score Description',
      name: 'abilityScoreFormDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Icon`
  String get abilityScoreFormIconLabel {
    return Intl.message(
      'Icon',
      name: 'abilityScoreFormIconLabel',
      desc: '',
      args: [],
    );
  }

  /// `A 3-letter unique key that identifies this ability score in dice and is used as the short label for the modifier value (and not the actual score)`
  String get abilityScoreFormKeyDescription {
    return Intl.message(
      'A 3-letter unique key that identifies this ability score in dice and is used as the short label for the modifier value (and not the actual score)',
      name: 'abilityScoreFormKeyDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ability Score Key`
  String get abilityScoreFormKeyLabel {
    return Intl.message(
      'Ability Score Key',
      name: 'abilityScoreFormKeyLabel',
      desc: '',
      args: [],
    );
  }

  /// `The name of this ability score`
  String get abilityScoreFormNameDescription {
    return Intl.message(
      'The name of this ability score',
      name: 'abilityScoreFormNameDescription',
      desc: '',
      args: [],
    );
  }

  /// `Ability Score Name`
  String get abilityScoreFormNameLabel {
    return Intl.message(
      'Ability Score Name',
      name: 'abilityScoreFormNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Change Icon`
  String get abilityScoreFormPickIconLabel {
    return Intl.message(
      'Change Icon',
      name: 'abilityScoreFormPickIconLabel',
      desc: '',
      args: [],
    );
  }

  /// `You can drag & drop the stat cards to change the order in which they appear throughout this character's screens.`
  String get abilityScoreInfo {
    return Intl.message(
      'You can drag & drop the stat cards to change the order in which they appear throughout this character\'s screens.',
      name: 'abilityScoreInfo',
      desc: '',
      args: [],
    );
  }

  /// `That last knock to the head shook something loose. Brain not work so good.`
  String get abilityScoreIntDebilityDescription {
    return Intl.message(
      'That last knock to the head shook something loose. Brain not work so good.',
      name: 'abilityScoreIntDebilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Stunned`
  String get abilityScoreIntDebilityName {
    return Intl.message(
      'Stunned',
      name: 'abilityScoreIntDebilityName',
      desc: '',
      args: [],
    );
  }

  /// `Determines how well your character learns and reasons.`
  String get abilityScoreIntDescription {
    return Intl.message(
      'Determines how well your character learns and reasons.',
      name: 'abilityScoreIntDescription',
      desc: '',
      args: [],
    );
  }

  /// `Intelligence`
  String get abilityScoreIntName {
    return Intl.message(
      'Intelligence',
      name: 'abilityScoreIntName',
      desc: '',
      args: [],
    );
  }

  /// `Modifier:\n{modifier}`
  String abilityScoreModifierValueLabel(Object modifier) {
    return Intl.message(
      'Modifier:\n$modifier',
      name: 'abilityScoreModifierValueLabel',
      desc: '',
      args: [modifier],
    );
  }

  /// `Roll random stat`
  String get abilityScoreRollButtonTooltip {
    return Intl.message(
      'Roll random stat',
      name: 'abilityScoreRollButtonTooltip',
      desc: '',
      args: [],
    );
  }

  /// `You can't exert much force. Maybe it's just fatigue and injury, or maybe your strength was drained by magic.`
  String get abilityScoreStrDebilityDescription {
    return Intl.message(
      'You can\'t exert much force. Maybe it\'s just fatigue and injury, or maybe your strength was drained by magic.',
      name: 'abilityScoreStrDebilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Weak`
  String get abilityScoreStrDebilityName {
    return Intl.message(
      'Weak',
      name: 'abilityScoreStrDebilityName',
      desc: '',
      args: [],
    );
  }

  /// `Measures muscle and physical power.`
  String get abilityScoreStrDescription {
    return Intl.message(
      'Measures muscle and physical power.',
      name: 'abilityScoreStrDescription',
      desc: '',
      args: [],
    );
  }

  /// `Strength`
  String get abilityScoreStrName {
    return Intl.message(
      'Strength',
      name: 'abilityScoreStrName',
      desc: '',
      args: [],
    );
  }

  /// `Ears ringing. Vision blurred. You're more than a little out of it.`
  String get abilityScoreWisDebilityDescription {
    return Intl.message(
      'Ears ringing. Vision blurred. You\'re more than a little out of it.',
      name: 'abilityScoreWisDebilityDescription',
      desc: '',
      args: [],
    );
  }

  /// `Confused`
  String get abilityScoreWisDebilityName {
    return Intl.message(
      'Confused',
      name: 'abilityScoreWisDebilityName',
      desc: '',
      args: [],
    );
  }

  /// `Describes a character's willpower, common sense, awareness, and intuition.`
  String get abilityScoreWisDescription {
    return Intl.message(
      'Describes a character\'s willpower, common sense, awareness, and intuition.',
      name: 'abilityScoreWisDescription',
      desc: '',
      args: [],
    );
  }

  /// `Wisdom`
  String get abilityScoreWisName {
    return Intl.message(
      'Wisdom',
      name: 'abilityScoreWisName',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Chen Asraf`
  String get aboutAuthor {
    return Intl.message(
      'Chen Asraf',
      name: 'aboutAuthor',
      desc: '',
      args: [],
    );
  }

  /// `Copyright © 2018-{year}`
  String aboutCopyright(Object year) {
    return Intl.message(
      'Copyright © 2018-$year',
      name: 'aboutCopyright',
      desc: '',
      args: [year],
    );
  }

  /// `Icon Credits`
  String get aboutIconCredits {
    return Intl.message(
      'Icon Credits',
      name: 'aboutIconCredits',
      desc: '',
      args: [],
    );
  }

  /// `Join Our Discord`
  String get aboutJoinDiscord {
    return Intl.message(
      'Join Our Discord',
      name: 'aboutJoinDiscord',
      desc: '',
      args: [],
    );
  }

  /// `Join the Discord community to ask questions, get help, send feedback, or just chat with other players.`
  String get aboutJoinDiscordSubtitle {
    return Intl.message(
      'Join the Discord community to ask questions, get help, send feedback, or just chat with other players.',
      name: 'aboutJoinDiscordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Send Feedback`
  String get aboutSendFeedback {
    return Intl.message(
      'Send Feedback',
      name: 'aboutSendFeedback',
      desc: '',
      args: [],
    );
  }

  /// `We reply more promptly through Discord, but you can send us feedback, bug reports or suggestions about the app directly here as an alternative.`
  String get aboutSendFeedbackSubtitle {
    return Intl.message(
      'We reply more promptly through Discord, but you can send us feedback, bug reports or suggestions about the app directly here as an alternative.',
      name: 'aboutSendFeedbackSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Links`
  String get aboutSocialLinks {
    return Intl.message(
      'Links',
      name: 'aboutSocialLinks',
      desc: '',
      args: [],
    );
  }

  /// `Special Thanks`
  String get aboutSpecialThanks {
    return Intl.message(
      'Special Thanks',
      name: 'aboutSpecialThanks',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get aboutTitle {
    return Intl.message(
      'About',
      name: 'aboutTitle',
      desc: '',
      args: [],
    );
  }

  /// `Version {version}`
  String aboutVersion(Object version) {
    return Intl.message(
      'Version $version',
      name: 'aboutVersion',
      desc: '',
      args: [version],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Account Details`
  String get accountCategoryDetails {
    return Intl.message(
      'Account Details',
      name: 'accountCategoryDetails',
      desc: '',
      args: [],
    );
  }

  /// `Connected Logins`
  String get accountCategorySocials {
    return Intl.message(
      'Connected Logins',
      name: 'accountCategorySocials',
      desc: '',
      args: [],
    );
  }

  /// `Enter your public display name`
  String get accountChangeDisplayNameHint {
    return Intl.message(
      'Enter your public display name',
      name: 'accountChangeDisplayNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Display Name`
  String get accountChangeDisplayNameLabel {
    return Intl.message(
      'Display Name',
      name: 'accountChangeDisplayNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Display name changed successfully`
  String get accountChangeDisplayNameSuccess {
    return Intl.message(
      'Display name changed successfully',
      name: 'accountChangeDisplayNameSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Change Display Name`
  String get accountChangeDisplayNameTitle {
    return Intl.message(
      'Change Display Name',
      name: 'accountChangeDisplayNameTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new email address`
  String get accountChangeEmailHint {
    return Intl.message(
      'Enter your new email address',
      name: 'accountChangeEmailHint',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get accountChangeEmailLabel {
    return Intl.message(
      'Email Address',
      name: 'accountChangeEmailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Email address changed successfully`
  String get accountChangeEmailSuccess {
    return Intl.message(
      'Email address changed successfully',
      name: 'accountChangeEmailSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Change Email Address`
  String get accountChangeEmailTitle {
    return Intl.message(
      'Change Email Address',
      name: 'accountChangeEmailTitle',
      desc: '',
      args: [],
    );
  }

  /// `Change your profile picture`
  String get accountChangeImageSubtitle {
    return Intl.message(
      'Change your profile picture',
      name: 'accountChangeImageSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Change Profile Picture`
  String get accountChangeImageTitle {
    return Intl.message(
      'Change Profile Picture',
      name: 'accountChangeImageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the same password again`
  String get accountChangePasswordConfirmHint {
    return Intl.message(
      'Enter the same password again',
      name: 'accountChangePasswordConfirmHint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get accountChangePasswordConfirmLabel {
    return Intl.message(
      'Confirm New Password',
      name: 'accountChangePasswordConfirmLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password`
  String get accountChangePasswordHint {
    return Intl.message(
      'Enter your new password',
      name: 'accountChangePasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get accountChangePasswordLabel {
    return Intl.message(
      'New Password',
      name: 'accountChangePasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Change your password`
  String get accountChangePasswordSubtitle {
    return Intl.message(
      'Change your password',
      name: 'accountChangePasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get accountChangePasswordSuccess {
    return Intl.message(
      'Password changed successfully',
      name: 'accountChangePasswordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get accountChangePasswordTitle {
    return Intl.message(
      'Change Password',
      name: 'accountChangePasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Delete Your Account`
  String get accountDelete {
    return Intl.message(
      'Delete Your Account',
      name: 'accountDelete',
      desc: '',
      args: [],
    );
  }

  /// `Basic Moves`
  String get actionsBasicMoves {
    return Intl.message(
      'Basic Moves',
      name: 'actionsBasicMoves',
      desc: '',
      args: [],
    );
  }

  /// `Special Moves`
  String get actionsSpecialMoves {
    return Intl.message(
      'Special Moves',
      name: 'actionsSpecialMoves',
      desc: '',
      args: [],
    );
  }

  /// `{coins} G`
  String actionSummaryChipCoins(Object coins) {
    return Intl.message(
      '$coins G',
      name: 'actionSummaryChipCoins',
      desc: '',
      args: [coins],
    );
  }

  /// `Load: {load}/{maxLoad}`
  String actionSummaryChipLoad(Object load, Object maxLoad) {
    return Intl.message(
      'Load: $load/$maxLoad',
      name: 'actionSummaryChipLoad',
      desc: '',
      args: [load, maxLoad],
    );
  }

  /// `Show`
  String get actionsViewVisibleLabel {
    return Intl.message(
      'Show',
      name: 'actionsViewVisibleLabel',
      desc: '',
      args: [],
    );
  }

  /// `Add New {entity}`
  String addCustomGeneric(Object entity) {
    return Intl.message(
      'Add New $entity',
      name: 'addCustomGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Add Existing {entity}`
  String addExistingGeneric(Object entity) {
    return Intl.message(
      'Add Existing $entity',
      name: 'addExistingGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Add {entity}`
  String addGeneric(Object entity) {
    return Intl.message(
      'Add $entity',
      name: 'addGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Online`
  String get addRepoItemTabOnline {
    return Intl.message(
      'Online',
      name: 'addRepoItemTabOnline',
      desc: '',
      args: [],
    );
  }

  /// `Playbook`
  String get addRepoItemTabPlaybook {
    return Intl.message(
      'Playbook',
      name: 'addRepoItemTabPlaybook',
      desc: '',
      args: [],
    );
  }

  /// `{alignment, select, chaotic {Chaotic} evil {Evil} good {Good} lawful {Lawful} neutral {Neutral} other {{alignment}}}`
  String alignment(Object alignment) {
    return Intl.select(
      alignment,
      {
        'chaotic': 'Chaotic',
        'evil': 'Evil',
        'good': 'Good',
        'lawful': 'Lawful',
        'neutral': 'Neutral',
        'other': '$alignment',
      },
      name: 'alignment',
      desc: '',
      args: [alignment],
    );
  }

  /// `Alignment`
  String get alignmentLabel {
    return Intl.message(
      'Alignment',
      name: 'alignmentLabel',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `All {entity}`
  String allGeneric(Object entity) {
    return Intl.message(
      'All $entity',
      name: 'allGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Already added`
  String get alreadyAdded {
    return Intl.message(
      'Already added',
      name: 'alreadyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `Dungeon Paper`
  String get appName {
    return Intl.message(
      'Dungeon Paper',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Armor`
  String get armor {
    return Intl.message(
      'Armor',
      name: 'armor',
      desc: '',
      args: [],
    );
  }

  /// `Choose Photo...`
  String get basicInfoImageChoose {
    return Intl.message(
      'Choose Photo...',
      name: 'basicInfoImageChoose',
      desc: '',
      args: [],
    );
  }

  /// `Change Photo...`
  String get basicInfoImageChooseNew {
    return Intl.message(
      'Change Photo...',
      name: 'basicInfoImageChooseNew',
      desc: '',
      args: [],
    );
  }

  /// `Sign in or create an account`
  String get basicInfoImageNeedAccountLinkLabel {
    return Intl.message(
      'Sign in or create an account',
      name: 'basicInfoImageNeedAccountLinkLabel',
      desc: '',
      args: [],
    );
  }

  /// `You need to be signed in to upload images.`
  String get basicInfoImageNeedAccountPrefix {
    return Intl.message(
      'You need to be signed in to upload images.',
      name: 'basicInfoImageNeedAccountPrefix',
      desc: '',
      args: [],
    );
  }

  /// `, or upload using your own URL below.`
  String get basicInfoImageNeedAccountSuffix {
    return Intl.message(
      ', or upload using your own URL below.',
      name: 'basicInfoImageNeedAccountSuffix',
      desc: '',
      args: [],
    );
  }

  /// `Remove Photo`
  String get basicInfoImageRemove {
    return Intl.message(
      'Remove Photo',
      name: 'basicInfoImageRemove',
      desc: '',
      args: [],
    );
  }

  /// `UPLOADING...`
  String get basicInfoImageUploading {
    return Intl.message(
      'UPLOADING...',
      name: 'basicInfoImageUploading',
      desc: '',
      args: [],
    );
  }

  /// `Basic Information`
  String get basicInformationTitle {
    return Intl.message(
      'Basic Information',
      name: 'basicInformationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Change {entity}`
  String changeGeneric(Object entity) {
    return Intl.message(
      'Change $entity',
      name: 'changeGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Use armor from class & equipped items`
  String get characterAutoArmor {
    return Intl.message(
      'Use armor from class & equipped items',
      name: 'characterAutoArmor',
      desc: '',
      args: [],
    );
  }

  /// `Use damage dice from class & equipped items`
  String get characterAutoDamage {
    return Intl.message(
      'Use damage dice from class & equipped items',
      name: 'characterAutoDamage',
      desc: '',
      args: [],
    );
  }

  /// `Use class base load + STR mod`
  String get characterAutoMaxLoad {
    return Intl.message(
      'Use class base load + STR mod',
      name: 'characterAutoMaxLoad',
      desc: '',
      args: [],
    );
  }

  /// `HP`
  String get characterBarHp {
    return Intl.message(
      'HP',
      name: 'characterBarHp',
      desc: '',
      args: [],
    );
  }

  /// `XP`
  String get characterBarXp {
    return Intl.message(
      'XP',
      name: 'characterBarXp',
      desc: '',
      args: [],
    );
  }

  /// `Alignment Description`
  String get characterBioDialogAlignmentDescriptionLabel {
    return Intl.message(
      'Alignment Description',
      name: 'characterBioDialogAlignmentDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Alignment is your character's way of thinking and moral compass. This can center on an ethical ideal, religious strictures or early life events. It reflects what your character values and aspires to protect or create.`
  String get characterBioDialogAlignmentDescriptionPlaceholder {
    return Intl.message(
      'Alignment is your character\'s way of thinking and moral compass. This can center on an ethical ideal, religious strictures or early life events. It reflects what your character values and aspires to protect or create.',
      name: 'characterBioDialogAlignmentDescriptionPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Alignment:`
  String get characterBioDialogAlignmentNameDisplayLabel {
    return Intl.message(
      'Alignment:',
      name: 'characterBioDialogAlignmentNameDisplayLabel',
      desc: '',
      args: [],
    );
  }

  /// `Alignment`
  String get characterBioDialogAlignmentNameLabel {
    return Intl.message(
      'Alignment',
      name: 'characterBioDialogAlignmentNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Select alignment`
  String get characterBioDialogAlignmentNamePlaceholder {
    return Intl.message(
      'Select alignment',
      name: 'characterBioDialogAlignmentNamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Character & background description`
  String get characterBioDialogDescLabel {
    return Intl.message(
      'Character & background description',
      name: 'characterBioDialogDescLabel',
      desc: '',
      args: [],
    );
  }

  /// `Describe your character's background, personality, goals, etc.`
  String get characterBioDialogDescPlaceholder {
    return Intl.message(
      'Describe your character\'s background, personality, goals, etc.',
      name: 'characterBioDialogDescPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Looks`
  String get characterBioDialogLooksLabel {
    return Intl.message(
      'Looks',
      name: 'characterBioDialogLooksLabel',
      desc: '',
      args: [],
    );
  }

  /// `Describe your character's appearance. You may use the presets from the buttons above.`
  String get characterBioDialogLooksPlaceholder {
    return Intl.message(
      'Describe your character\'s appearance. You may use the presets from the buttons above.',
      name: 'characterBioDialogLooksPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Character Biography`
  String get characterBioDialogTitle {
    return Intl.message(
      'Character Biography',
      name: 'characterBioDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Bond`
  String get characterBondsFlagsDialogBond {
    return Intl.message(
      'Bond',
      name: 'characterBondsFlagsDialogBond',
      desc: '',
      args: [],
    );
  }

  /// `Bonds`
  String get characterBondsFlagsDialogBonds {
    return Intl.message(
      'Bonds',
      name: 'characterBondsFlagsDialogBonds',
      desc: '',
      args: [],
    );
  }

  /// `Flag`
  String get characterBondsFlagsDialogFlag {
    return Intl.message(
      'Flag',
      name: 'characterBondsFlagsDialogFlag',
      desc: '',
      args: [],
    );
  }

  /// `Flags`
  String get characterBondsFlagsDialogFlags {
    return Intl.message(
      'Flags',
      name: 'characterBondsFlagsDialogFlags',
      desc: '',
      args: [],
    );
  }

  /// `You can add, update or remove bonds & flags using the edit icon above.`
  String get characterBondsFlagsDialogInfoText {
    return Intl.message(
      'You can add, update or remove bonds & flags using the edit icon above.',
      name: 'characterBondsFlagsDialogInfoText',
      desc: '',
      args: [],
    );
  }

  /// `You have no bonds or flags. You can add some using the edit button above, then mark them off as completed as you go along your adventure.`
  String get characterBondsFlagsDialogNoData {
    return Intl.message(
      'You have no bonds or flags. You can add some using the edit button above, then mark them off as completed as you go along your adventure.',
      name: 'characterBondsFlagsDialogNoData',
      desc: '',
      args: [],
    );
  }

  /// `Bonds & Flags`
  String get characterBondsFlagsDialogTitle {
    return Intl.message(
      'Bonds & Flags',
      name: 'characterBondsFlagsDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Debilities are temporary, negative conditions or states in which your character is in. When a stat is debilitated, it causes its modifier to be reduced by 1 until recovered.`
  String get characterDebilitiesDialogInfoText {
    return Intl.message(
      'Debilities are temporary, negative conditions or states in which your character is in. When a stat is debilitated, it causes its modifier to be reduced by 1 until recovered.',
      name: 'characterDebilitiesDialogInfoText',
      desc: '',
      args: [],
    );
  }

  /// `Debilities`
  String get characterDebilitiesDialogTitle {
    return Intl.message(
      'Debilities',
      name: 'characterDebilitiesDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Level {level} ∙ {charClass} ∙ {race} ∙`
  String characterHeaderSubtitle(Object level, Object charClass, Object race) {
    return Intl.message(
      'Level $level ∙ $charClass ∙ $race ∙',
      name: 'characterHeaderSubtitle',
      desc: '',
      args: [level, charClass, race],
    );
  }

  /// `{alignment}`
  String characterHeaderSubtitleAlignment(Object alignment) {
    return Intl.message(
      '$alignment',
      name: 'characterHeaderSubtitleAlignment',
      desc: '',
      args: [alignment],
    );
  }

  /// `{charClass}`
  String characterHeaderSubtitleClass(Object charClass) {
    return Intl.message(
      '$charClass',
      name: 'characterHeaderSubtitleClass',
      desc: '',
      args: [charClass],
    );
  }

  /// `Level {level}`
  String characterHeaderSubtitleLevel(Object level) {
    return Intl.message(
      'Level $level',
      name: 'characterHeaderSubtitleLevel',
      desc: '',
      args: [level],
    );
  }

  /// `{race}`
  String characterHeaderSubtitleRace(Object race) {
    return Intl.message(
      '$race',
      name: 'characterHeaderSubtitleRace',
      desc: '',
      args: [race],
    );
  }

  /// ` ∙ `
  String get characterHeaderSubtitleSeparator {
    return Intl.message(
      ' ∙ ',
      name: 'characterHeaderSubtitleSeparator',
      desc: '',
      args: [],
    );
  }

  /// `All Characters`
  String get characterListTitle {
    return Intl.message(
      'All Characters',
      name: 'characterListTitle',
      desc: '',
      args: [],
    );
  }

  /// `Character Menu`
  String get characterMenu {
    return Intl.message(
      'Character Menu',
      name: 'characterMenu',
      desc: '',
      args: [],
    );
  }

  /// `No Category`
  String get characterNoCategory {
    return Intl.message(
      'No Category',
      name: 'characterNoCategory',
      desc: '',
      args: [],
    );
  }

  /// `Ability Scores`
  String get characterRollsTitle {
    return Intl.message(
      'Ability Scores',
      name: 'characterRollsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Character Theme`
  String get characterSelectTheme {
    return Intl.message(
      'Character Theme',
      name: 'characterSelectTheme',
      desc: '',
      args: [],
    );
  }

  /// `Coins`
  String get coins {
    return Intl.message(
      'Coins',
      name: 'coins',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0 {No coins} one {One coin} other {{fmtCount} coins}}`
  String coinsWithCount(num count, Object fmtCount) {
    return Intl.plural(
      count,
      zero: 'No coins',
      one: 'One coin',
      other: '$fmtCount coins',
      name: 'coinsWithCount',
      desc: '',
      args: [count, fmtCount],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove the {entity} "{name}" from the list?`
  String confirmDeleteBody(Object entity, Object name) {
    return Intl.message(
      'Are you sure you want to remove the $entity "$name" from the list?',
      name: 'confirmDeleteBody',
      desc: '',
      args: [entity, name],
    );
  }

  /// `Delete {entity}?`
  String confirmDeleteTitle(Object entity) {
    return Intl.message(
      'Delete $entity?',
      name: 'confirmDeleteTitle',
      desc: '',
      args: [entity],
    );
  }

  /// `Are you sure you want to delete your account?\n\nThis action cannot be undone.`
  String get confirmDeleteAccount1Body {
    return Intl.message(
      'Are you sure you want to delete your account?\n\nThis action cannot be undone.',
      name: 'confirmDeleteAccount1Body',
      desc: '',
      args: [],
    );
  }

  /// `Delete Your Account?`
  String get confirmDeleteAccount1Title {
    return Intl.message(
      'Delete Your Account?',
      name: 'confirmDeleteAccount1Title',
      desc: '',
      args: [],
    );
  }

  /// `We do not save any data for deleted accounts. All your data will be permanently deleted.\n\nAre you sure you want to delete your account?\n\nPlease confirm this one last time.`
  String get confirmDeleteAccount2Body {
    return Intl.message(
      'We do not save any data for deleted accounts. All your data will be permanently deleted.\n\nAre you sure you want to delete your account?\n\nPlease confirm this one last time.',
      name: 'confirmDeleteAccount2Body',
      desc: '',
      args: [],
    );
  }

  /// `Are you really sure?`
  String get confirmDeleteAccount2Title {
    return Intl.message(
      'Are you really sure?',
      name: 'confirmDeleteAccount2Title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to unlink your account from {provider}?\nBy clicking "Unlink", you will no longer be able to sign in with {provider}.\n\nYou will be able to re-link your account at any time by going to your account settings.`
  String confirmUnlinkProviderBody(Object provider) {
    return Intl.message(
      'Are you sure you want to unlink your account from $provider?\nBy clicking "Unlink", you will no longer be able to sign in with $provider.\n\nYou will be able to re-link your account at any time by going to your account settings.',
      name: 'confirmUnlinkProviderBody',
      desc: '',
      args: [provider],
    );
  }

  /// `Unlink from {entity}?`
  String confirmUnlinkProviderTitle(Object entity) {
    return Intl.message(
      'Unlink from $entity?',
      name: 'confirmUnlinkProviderTitle',
      desc: '',
      args: [entity],
    );
  }

  /// `Continue editing`
  String get confirmExitDefaultCancelLabel {
    return Intl.message(
      'Continue editing',
      name: 'confirmExitDefaultCancelLabel',
      desc: '',
      args: [],
    );
  }

  /// `Exit & Discard`
  String get confirmExitDefaultOkLabel {
    return Intl.message(
      'Exit & Discard',
      name: 'confirmExitDefaultOkLabel',
      desc: '',
      args: [],
    );
  }

  /// `Going back will lose any unsaved changes.\nAre you sure you want to go back?`
  String get confirmExitDefaultText {
    return Intl.message(
      'Going back will lose any unsaved changes.\nAre you sure you want to go back?',
      name: 'confirmExitDefaultText',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get confirmExitDefaultTitle {
    return Intl.message(
      'Are you sure?',
      name: 'confirmExitDefaultTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueLabel {
    return Intl.message(
      'Continue',
      name: 'continueLabel',
      desc: '',
      args: [],
    );
  }

  /// `Create Character`
  String get createCharacterAddButton {
    return Intl.message(
      'Create Character',
      name: 'createCharacterAddButton',
      desc: '',
      args: [],
    );
  }

  /// `Photo URL`
  String get createCharacterAvatarFieldLabel {
    return Intl.message(
      'Photo URL',
      name: 'createCharacterAvatarFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Paste an image URL`
  String get createCharacterAvatarFieldPlaceholder {
    return Intl.message(
      'Paste an image URL',
      name: 'createCharacterAvatarFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Biography`
  String get createCharacterBioFieldLabel {
    return Intl.message(
      'Biography',
      name: 'createCharacterBioFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Describe your character as shortly or thoroughly as you want here.\nPut your backstory, a visual description, some personality traits, etc. to help you keep in character.`
  String get createCharacterBioFieldPlaceholder {
    return Intl.message(
      'Describe your character as shortly or thoroughly as you want here.\nPut your backstory, a visual description, some personality traits, etc. to help you keep in character.',
      name: 'createCharacterBioFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Base HP: {hp}, Load: {load}, Damage Dice: {damageDice}`
  String createCharacterClassDescription(Object hp, Object load, Object damageDice) {
    return Intl.message(
      'Base HP: $hp, Load: $load, Damage Dice: $damageDice',
      name: 'createCharacterClassDescription',
      desc: '',
      args: [hp, load, damageDice],
    );
  }

  /// `No class selected (required)`
  String get createCharacterClassHelpText {
    return Intl.message(
      'No class selected (required)',
      name: 'createCharacterClassHelpText',
      desc: '',
      args: [],
    );
  }

  /// `Biography/description`
  String get createCharacterDescFieldLabel {
    return Intl.message(
      'Biography/description',
      name: 'createCharacterDescFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter general information about your character - backstory, goals & ambitions, behavior descriptions, etc`
  String get createCharacterDescFieldPlaceholder {
    return Intl.message(
      'Enter general information about your character - backstory, goals & ambitions, behavior descriptions, etc',
      name: 'createCharacterDescFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get createCharacterFinishButton {
    return Intl.message(
      'Review',
      name: 'createCharacterFinishButton',
      desc: '',
      args: [],
    );
  }

  /// `Moves & Spells`
  String get createCharacterMovesSpells {
    return Intl.message(
      'Moves & Spells',
      name: 'createCharacterMovesSpells',
      desc: '',
      args: [],
    );
  }

  /// `{moves} Moves, {spells} Spells selected`
  String createCharacterMovesSpellsDescription(Object moves, Object spells) {
    return Intl.message(
      '$moves Moves, $spells Spells selected',
      name: 'createCharacterMovesSpellsDescription',
      desc: '',
      args: [moves, spells],
    );
  }

  /// `Character Name`
  String get createCharacterNameFieldLabel {
    return Intl.message(
      'Character Name',
      name: 'createCharacterNameFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your character's name`
  String get createCharacterNameFieldPlaceholder {
    return Intl.message(
      'Enter your character\'s name',
      name: 'createCharacterNameFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Max HP: {hp}`
  String createCharacterPreviewPageMaxHp(Object hp) {
    return Intl.message(
      'Max HP: $hp',
      name: 'createCharacterPreviewPageMaxHp',
      desc: '',
      args: [hp],
    );
  }

  /// `Preview Character`
  String get createCharacterPreviewPageTitle {
    return Intl.message(
      'Preview Character',
      name: 'createCharacterPreviewPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get createCharacterProceedTooltip {
    return Intl.message(
      'Continue',
      name: 'createCharacterProceedTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Race description`
  String get createCharacterRaceDescFieldLabel {
    return Intl.message(
      'Race description',
      name: 'createCharacterRaceDescFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Describe a special move usable by your race. It will appear alongside the rest of the moves.`
  String get createCharacterRaceDescFieldPlaceholder {
    return Intl.message(
      'Describe a special move usable by your race. It will appear alongside the rest of the moves.',
      name: 'createCharacterRaceDescFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Race`
  String get createCharacterRaceNameFieldLabel {
    return Intl.message(
      'Race',
      name: 'createCharacterRaceNameFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Race name`
  String get createCharacterRaceNameFieldPlaceholder {
    return Intl.message(
      'Race name',
      name: 'createCharacterRaceNameFieldPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Create Character`
  String get createCharacterSaveButton {
    return Intl.message(
      'Create Character',
      name: 'createCharacterSaveButton',
      desc: '',
      args: [],
    );
  }

  /// `{count} selected`
  String createCharacterStartingGearChoiceCountNoMax(Object count) {
    return Intl.message(
      '$count selected',
      name: 'createCharacterStartingGearChoiceCountNoMax',
      desc: '',
      args: [count],
    );
  }

  /// `{count} selected (class allowance: {max})`
  String createCharacterStartingGearChoiceCountWithMax(Object count, Object max) {
    return Intl.message(
      '$count selected (class allowance: $max)',
      name: 'createCharacterStartingGearChoiceCountWithMax',
      desc: '',
      args: [count, max],
    );
  }

  /// `{amount} coins`
  String createCharacterStartingGearDescriptionCoins(Object amount) {
    return Intl.message(
      '$amount coins',
      name: 'createCharacterStartingGearDescriptionCoins',
      desc: '',
      args: [amount],
    );
  }

  /// `{amount} × {name}`
  String createCharacterStartingGearDescriptionItem(Object amount, Object name) {
    return Intl.message(
      '$amount × $name',
      name: 'createCharacterStartingGearDescriptionItem',
      desc: '',
      args: [amount, name],
    );
  }

  /// `Select your starting gear determined by class (optional)`
  String get createCharacterStartingGearHelpText {
    return Intl.message(
      'Select your starting gear determined by class (optional)',
      name: 'createCharacterStartingGearHelpText',
      desc: '',
      args: [],
    );
  }

  /// `{step} - Changes Required`
  String createCharacterStepInvalidTooltip(Object step) {
    return Intl.message(
      '$step - Changes Required',
      name: 'createCharacterStepInvalidTooltip',
      desc: '',
      args: [step],
    );
  }

  /// `Create Character`
  String get createCharacterTitle {
    return Intl.message(
      'Create Character',
      name: 'createCharacterTitle',
      desc: '',
      args: [],
    );
  }

  /// `Unnamed Traveler`
  String get createCharacterTravelerBlankName {
    return Intl.message(
      'Unnamed Traveler',
      name: 'createCharacterTravelerBlankName',
      desc: '',
      args: [],
    );
  }

  /// `Level 1 {cls}`
  String createCharacterTravelerDescription(Object cls) {
    return Intl.message(
      'Level 1 $cls',
      name: 'createCharacterTravelerDescription',
      desc: '',
      args: [cls],
    );
  }

  /// `Select name & picture (required)`
  String get createCharacterTravelerHelpText {
    return Intl.message(
      'Select name & picture (required)',
      name: 'createCharacterTravelerHelpText',
      desc: '',
      args: [],
    );
  }

  /// `Click to generate a random name`
  String get createCharRandomizeNameTooltipClick {
    return Intl.message(
      'Click to generate a random name',
      name: 'createCharRandomizeNameTooltipClick',
      desc: '',
      args: [],
    );
  }

  /// `Tap to generate a random name`
  String get createCharRandomizeNameTooltipTouch {
    return Intl.message(
      'Tap to generate a random name',
      name: 'createCharRandomizeNameTooltipTouch',
      desc: '',
      args: [],
    );
  }

  /// `Create {entity}`
  String createGeneric(Object entity) {
    return Intl.message(
      'Create $entity',
      name: 'createGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Left Button`
  String get customButtonLeft {
    return Intl.message(
      'Left Button',
      name: 'customButtonLeft',
      desc: '',
      args: [],
    );
  }

  /// `Right Button`
  String get customButtonRight {
    return Intl.message(
      'Right Button',
      name: 'customButtonRight',
      desc: '',
      args: [],
    );
  }

  /// `Quick Roll Buttons`
  String get customRollButtons {
    return Intl.message(
      'Quick Roll Buttons',
      name: 'customRollButtons',
      desc: '',
      args: [],
    );
  }

  /// `Use Default`
  String get customRollButtonsUseDefault {
    return Intl.message(
      'Use Default',
      name: 'customRollButtonsUseDefault',
      desc: '',
      args: [],
    );
  }

  /// `Presets`
  String get customRollButtonsUsePreset {
    return Intl.message(
      'Presets',
      name: 'customRollButtonsUsePreset',
      desc: '',
      args: [],
    );
  }

  /// `Damage`
  String get damage {
    return Intl.message(
      'Damage',
      name: 'damage',
      desc: '',
      args: [],
    );
  }

  /// `Damage Dice`
  String get damageDice {
    return Intl.message(
      'Damage Dice',
      name: 'damageDice',
      desc: '',
      args: [],
    );
  }

  /// `{name} ({key})`
  String debilityLabel(Object name, Object key) {
    return Intl.message(
      '$name ($key)',
      name: 'debilityLabel',
      desc: '',
      args: [name, key],
    );
  }

  /// `Amount`
  String get diceAmount {
    return Intl.message(
      'Amount',
      name: 'diceAmount',
      desc: '',
      args: [],
    );
  }

  /// `Roll`
  String get diceRollAgain {
    return Intl.message(
      'Roll',
      name: 'diceRollAgain',
      desc: '',
      args: [],
    );
  }

  /// `d`
  String get diceSeparator {
    return Intl.message(
      'd',
      name: 'diceSeparator',
      desc: '',
      args: [],
    );
  }

  /// `Sides`
  String get diceSides {
    return Intl.message(
      'Sides',
      name: 'diceSides',
      desc: '',
      args: [],
    );
  }

  /// `Suggested: {dice}`
  String diceSuggestion(Object dice) {
    return Intl.message(
      'Suggested: $dice',
      name: 'diceSuggestion',
      desc: '',
      args: [dice],
    );
  }

  /// `Roll Stat`
  String get diceUseStat {
    return Intl.message(
      'Roll Stat',
      name: 'diceUseStat',
      desc: '',
      args: [],
    );
  }

  /// `Stat`
  String get diceUseStatLabel {
    return Intl.message(
      'Stat',
      name: 'diceUseStatLabel',
      desc: '',
      args: [],
    );
  }

  /// `Select Stat`
  String get diceUseStatPlaceholder {
    return Intl.message(
      'Select Stat',
      name: 'diceUseStatPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `{name} ({key})`
  String diceUseStatValue(Object name, Object key) {
    return Intl.message(
      '$name ($key)',
      name: 'diceUseStatValue',
      desc: '',
      args: [name, key],
    );
  }

  /// `Fixed Value`
  String get diceUseValue {
    return Intl.message(
      'Fixed Value',
      name: 'diceUseValue',
      desc: '',
      args: [],
    );
  }

  /// `Modifier value`
  String get diceUseValueLabel {
    return Intl.message(
      'Modifier value',
      name: 'diceUseValueLabel',
      desc: '',
      args: [],
    );
  }

  /// `Number, e.g. 2 or -1`
  String get diceUseValuePlaceholder {
    return Intl.message(
      'Number, e.g. 2 or -1',
      name: 'diceUseValuePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Equipped Items`
  String get dynamicCategoriesItems {
    return Intl.message(
      'Equipped Items',
      name: 'dynamicCategoriesItems',
      desc: '',
      args: [],
    );
  }

  /// `Favorite Moves`
  String get dynamicCategoriesMoves {
    return Intl.message(
      'Favorite Moves',
      name: 'dynamicCategoriesMoves',
      desc: '',
      args: [],
    );
  }

  /// `Bookmarked Notes`
  String get dynamicCategoriesNotes {
    return Intl.message(
      'Bookmarked Notes',
      name: 'dynamicCategoriesNotes',
      desc: '',
      args: [],
    );
  }

  /// `Prepared Spells`
  String get dynamicCategoriesSpells {
    return Intl.message(
      'Prepared Spells',
      name: 'dynamicCategoriesSpells',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Edit {entity}`
  String editGeneric(Object entity) {
    return Intl.message(
      'Edit $entity',
      name: 'editGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Did we learn something new and important about the world?`
  String get endOfSessionQ1 {
    return Intl.message(
      'Did we learn something new and important about the world?',
      name: 'endOfSessionQ1',
      desc: '',
      args: [],
    );
  }

  /// `Did we overcome a notable monster or enemy?`
  String get endOfSessionQ2 {
    return Intl.message(
      'Did we overcome a notable monster or enemy?',
      name: 'endOfSessionQ2',
      desc: '',
      args: [],
    );
  }

  /// `Did we loot a memorable treasure?`
  String get endOfSessionQ3 {
    return Intl.message(
      'Did we loot a memorable treasure?',
      name: 'endOfSessionQ3',
      desc: '',
      args: [],
    );
  }

  /// `End of Session Questions`
  String get endOfSessionQuestions {
    return Intl.message(
      'End of Session Questions',
      name: 'endOfSessionQuestions',
      desc: '',
      args: [],
    );
  }

  /// `Answer these questions as a group. For each "yes" answer, XP is marked.`
  String get endOfSessionQuestionsSubtitle {
    return Intl.message(
      'Answer these questions as a group. For each "yes" answer, XP is marked.',
      name: 'endOfSessionQuestionsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `{runtimeType, select, CharacterClass {Class} Item {Item} Monster {Monster} Move {Move} Race {Race} Spell {Spell} Tag {Tag} MoveCategory {Category} GearSelection {Starting Gear} Dice {Dice} AbilityScore {Ability Score} AlignmentValue {Alignment} Playbook {Playbook} other {{runtimeType}}}`
  String entity(Object runtimeType) {
    return Intl.select(
      runtimeType,
      {
        'CharacterClass': 'Class',
        'Item': 'Item',
        'Monster': 'Monster',
        'Move': 'Move',
        'Race': 'Race',
        'Spell': 'Spell',
        'Tag': 'Tag',
        'MoveCategory': 'Category',
        'GearSelection': 'Starting Gear',
        'Dice': 'Dice',
        'AbilityScore': 'Ability Score',
        'AlignmentValue': 'Alignment',
        'Playbook': 'Playbook',
        'other': '$runtimeType',
      },
      name: 'entity',
      desc: '',
      args: [runtimeType],
    );
  }

  /// `{runtimeType, select, CharacterClass {Classes} Item {Items} Monster {Monsters} Move {Moves} Race {Races} Spell {Spells} Tag {Tags} MoveCategory {Categories} Dice {Dice} GearSelection {Starting Gear} AbilityScore {Ability Scores} AlignmentValue {Alignment} Playbook {Playbooks} other {{runtimeType}s}}`
  String entityPlural(Object runtimeType) {
    return Intl.select(
      runtimeType,
      {
        'CharacterClass': 'Classes',
        'Item': 'Items',
        'Monster': 'Monsters',
        'Move': 'Moves',
        'Race': 'Races',
        'Spell': 'Spells',
        'Tag': 'Tags',
        'MoveCategory': 'Categories',
        'Dice': 'Dice',
        'GearSelection': 'Starting Gear',
        'AbilityScore': 'Ability Scores',
        'AlignmentValue': 'Alignment',
        'Playbook': 'Playbooks',
        'other': '${runtimeType}s',
      },
      name: 'entityPlural',
      desc: '',
      args: [runtimeType],
    );
  }

  /// `This {entity} is not linked to any library item`
  String entityShareStatusDetached(Object entity) {
    return Intl.message(
      'This $entity is not linked to any library item',
      name: 'entityShareStatusDetached',
      desc: '',
      args: [entity],
    );
  }

  /// `This {entity} is In Sync with its linked library item`
  String entityShareStatusInSync(Object entity) {
    return Intl.message(
      'This $entity is In Sync with its linked library item',
      name: 'entityShareStatusInSync',
      desc: '',
      args: [entity],
    );
  }

  /// `This {entity} is Out of Sync with its linked library item`
  String entityShareStatusOutOfSync(Object entity) {
    return Intl.message(
      'This $entity is Out of Sync with its linked library item',
      name: 'entityShareStatusOutOfSync',
      desc: '',
      args: [entity],
    );
  }

  /// `{count, plural, =0 {No {entPlural}} one {One {ent}} other {{count} {entPlural}}}`
  String entityWithCount(num count, Object entPlural, Object ent) {
    return Intl.plural(
      count,
      zero: 'No $entPlural',
      one: 'One $ent',
      other: '$count $entPlural',
      name: 'entityWithCount',
      desc: '',
      args: [count, entPlural, ent],
    );
  }

  /// `Must be exactly {length} {length, plural, one {character} other {characters}}`
  String errorExactLength(num length) {
    return Intl.message(
      'Must be exactly $length ${Intl.plural(length, one: 'character', other: 'characters')}',
      name: 'errorExactLength',
      desc: '',
      args: [length],
    );
  }

  /// `Invalid email address`
  String get errorInvalidEmail {
    return Intl.message(
      'Invalid email address',
      name: 'errorInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Must be no more than {length} {length, plural, one {character} other {characters}}`
  String errorMaxLength(num length) {
    return Intl.message(
      'Must be no more than $length ${Intl.plural(length, one: 'character', other: 'characters')}',
      name: 'errorMaxLength',
      desc: '',
      args: [length],
    );
  }

  /// `Must be at least {length} {length, plural, one {character} other {characters}}`
  String errorMinLength(num length) {
    return Intl.message(
      'Must be at least $length ${Intl.plural(length, one: 'character', other: 'characters')}',
      name: 'errorMinLength',
      desc: '',
      args: [length],
    );
  }

  /// `Must contain {pattern}`
  String errorMustContain(Object pattern) {
    return Intl.message(
      'Must contain $pattern',
      name: 'errorMustContain',
      desc: '',
      args: [pattern],
    );
  }

  /// `Must not contain {pattern}`
  String errorMustNotContain(Object pattern) {
    return Intl.message(
      'Must not contain $pattern',
      name: 'errorMustNotContain',
      desc: '',
      args: [pattern],
    );
  }

  /// `None selected`
  String get errorNoSelection {
    return Intl.message(
      'None selected',
      name: 'errorNoSelection',
      desc: '',
      args: [],
    );
  }

  /// `No {entity} selected`
  String errorNoSelectionGeneric(Object entity) {
    return Intl.message(
      'No $entity selected',
      name: 'errorNoSelectionGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `No {entity} selected (required)`
  String errorNoSelectionGenericRequired(Object entity) {
    return Intl.message(
      'No $entity selected (required)',
      name: 'errorNoSelectionGenericRequired',
      desc: '',
      args: [entity],
    );
  }

  /// `Must contain letters only`
  String get errorOnlyLetters {
    return Intl.message(
      'Must contain letters only',
      name: 'errorOnlyLetters',
      desc: '',
      args: [],
    );
  }

  /// `Error while uploading photo. Try again later, or contact support using the "About" page.`
  String get errorUpload {
    return Intl.message(
      'Error while uploading photo. Try again later, or contact support using the "About" page.',
      name: 'errorUpload',
      desc: '',
      args: [],
    );
  }

  /// `Operation canceled`
  String get errorUserOperationCanceled {
    return Intl.message(
      'Operation canceled',
      name: 'errorUserOperationCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Further details`
  String get explanation {
    return Intl.message(
      'Further details',
      name: 'explanation',
      desc: '',
      args: [],
    );
  }

  /// `Export`
  String get export {
    return Intl.message(
      'Export',
      name: 'export',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong.\nTry again or contact support if this persists`
  String get exportFailedMessage {
    return Intl.message(
      'Something went wrong.\nTry again or contact support if this persists',
      name: 'exportFailedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Export Failed`
  String get exportFailedTitle {
    return Intl.message(
      'Export Failed',
      name: 'exportFailedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your data was exported to file successfully`
  String get exportSuccessfulMessage {
    return Intl.message(
      'Your data was exported to file successfully',
      name: 'exportSuccessfulMessage',
      desc: '',
      args: [],
    );
  }

  /// `Export Successful`
  String get exportSuccessfulTitle {
    return Intl.message(
      'Export Successful',
      name: 'exportSuccessfulTitle',
      desc: '',
      args: [],
    );
  }

  /// `Bold`
  String get formatBold {
    return Intl.message(
      'Bold',
      name: 'formatBold',
      desc: '',
      args: [],
    );
  }

  /// `Bullet List`
  String get formatBulletList {
    return Intl.message(
      'Bullet List',
      name: 'formatBulletList',
      desc: '',
      args: [],
    );
  }

  /// `Cell {n}`
  String formatCell(Object n) {
    return Intl.message(
      'Cell $n',
      name: 'formatCell',
      desc: '',
      args: [n],
    );
  }

  /// `Check List (Checked)`
  String get formatCheckboxList {
    return Intl.message(
      'Check List (Checked)',
      name: 'formatCheckboxList',
      desc: '',
      args: [],
    );
  }

  /// `Check List (Unchecked)`
  String get formatCheckboxListUnchecked {
    return Intl.message(
      'Check List (Unchecked)',
      name: 'formatCheckboxListUnchecked',
      desc: '',
      args: [],
    );
  }

  /// `Header {n}`
  String formatHeader(Object n) {
    return Intl.message(
      'Header $n',
      name: 'formatHeader',
      desc: '',
      args: [n],
    );
  }

  /// `Header {n}`
  String formatHeaderNoNum(Object n) {
    return Intl.message(
      'Header $n',
      name: 'formatHeaderNoNum',
      desc: '',
      args: [n],
    );
  }

  /// `Heading {n}`
  String formatHeading(Object n) {
    return Intl.message(
      'Heading $n',
      name: 'formatHeading',
      desc: '',
      args: [n],
    );
  }

  /// `Headings`
  String get formatHeadings {
    return Intl.message(
      'Headings',
      name: 'formatHeadings',
      desc: '',
      args: [],
    );
  }

  /// `Formatting Help`
  String get formatHelp {
    return Intl.message(
      'Formatting Help',
      name: 'formatHelp',
      desc: '',
      args: [],
    );
  }

  /// `Image URL`
  String get formatImageURL {
    return Intl.message(
      'Image URL',
      name: 'formatImageURL',
      desc: '',
      args: [],
    );
  }

  /// `Italic`
  String get formatItalic {
    return Intl.message(
      'Italic',
      name: 'formatItalic',
      desc: '',
      args: [],
    );
  }

  /// `Numbered List`
  String get formatNumberedList {
    return Intl.message(
      'Numbered List',
      name: 'formatNumberedList',
      desc: '',
      args: [],
    );
  }

  /// `Preview`
  String get formatPreview {
    return Intl.message(
      'Preview',
      name: 'formatPreview',
      desc: '',
      args: [],
    );
  }

  /// `Table`
  String get formatTable {
    return Intl.message(
      'Table',
      name: 'formatTable',
      desc: '',
      args: [],
    );
  }

  /// `URL`
  String get formatURL {
    return Intl.message(
      'URL',
      name: 'formatURL',
      desc: '',
      args: [],
    );
  }

  /// `Base HP`
  String get formCharacterClassBaseHp {
    return Intl.message(
      'Base HP',
      name: 'formCharacterClassBaseHp',
      desc: '',
      args: [],
    );
  }

  /// `Base Load`
  String get formCharacterClassBaseLoad {
    return Intl.message(
      'Base Load',
      name: 'formCharacterClassBaseLoad',
      desc: '',
      args: [],
    );
  }

  /// `Damage Dice`
  String get formCharacterClassDamage {
    return Intl.message(
      'Damage Dice',
      name: 'formCharacterClassDamage',
      desc: '',
      args: [],
    );
  }

  /// `Give a general description of your class. Describe a calling for the type of person or creature that would choose or be raised in to this adventuring profession.`
  String get formCharacterClassDescriptionPlaceholder {
    return Intl.message(
      'Give a general description of your class. Describe a calling for the type of person or creature that would choose or be raised in to this adventuring profession.',
      name: 'formCharacterClassDescriptionPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Enter the class name`
  String get formCharacterClassNamePlaceholder {
    return Intl.message(
      'Enter the class name',
      name: 'formCharacterClassNamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get formGeneralCategory {
    return Intl.message(
      'Category',
      name: 'formGeneralCategory',
      desc: '',
      args: [],
    );
  }

  /// `{entity} category`
  String formGeneralCategoryGeneric(Object entity) {
    return Intl.message(
      '$entity category',
      name: 'formGeneralCategoryGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Description`
  String get formGeneralDescription {
    return Intl.message(
      'Description',
      name: 'formGeneralDescription',
      desc: '',
      args: [],
    );
  }

  /// `{entity} description`
  String formGeneralDescriptionGeneric(Object entity) {
    return Intl.message(
      '$entity description',
      name: 'formGeneralDescriptionGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Explanation`
  String get formGeneralExplanation {
    return Intl.message(
      'Explanation',
      name: 'formGeneralExplanation',
      desc: '',
      args: [],
    );
  }

  /// `{entity} explanation`
  String formGeneralExplanationGeneric(Object entity) {
    return Intl.message(
      '$entity explanation',
      name: 'formGeneralExplanationGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Name`
  String get formGeneralName {
    return Intl.message(
      'Name',
      name: 'formGeneralName',
      desc: '',
      args: [],
    );
  }

  /// `{entity} name`
  String formGeneralNameGeneric(Object entity) {
    return Intl.message(
      '$entity name',
      name: 'formGeneralNameGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Title`
  String get formGeneralTitle {
    return Intl.message(
      'Title',
      name: 'formGeneralTitle',
      desc: '',
      args: [],
    );
  }

  /// `{entity} title`
  String formGeneralTitleGeneric(Object entity) {
    return Intl.message(
      '$entity title',
      name: 'formGeneralTitleGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `{entity} description`
  String genericDescriptionField(Object entity) {
    return Intl.message(
      '$entity description',
      name: 'genericDescriptionField',
      desc: '',
      args: [entity],
    );
  }

  /// `{entity} name`
  String genericNameField(Object entity) {
    return Intl.message(
      '$entity name',
      name: 'genericNameField',
      desc: '',
      args: [entity],
    );
  }

  /// `{entity} value`
  String genericValueField(Object entity) {
    return Intl.message(
      '$entity value',
      name: 'genericValueField',
      desc: '',
      args: [entity],
    );
  }

  /// `Online data sync, library sharing, campaigns and more!`
  String get homeEmptyStateLoginSubtitle {
    return Intl.message(
      'Online data sync, library sharing, campaigns and more!',
      name: 'homeEmptyStateLoginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to get more features`
  String get homeEmptyStateLoginTitle {
    return Intl.message(
      'Sign in to get more features',
      name: 'homeEmptyStateLoginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create a Character to get started`
  String get homeEmptyStateSubtitle {
    return Intl.message(
      'Create a Character to get started',
      name: 'homeEmptyStateSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `No Characters`
  String get homeEmptyStateTitle {
    return Intl.message(
      'No Characters',
      name: 'homeEmptyStateTitle',
      desc: '',
      args: [],
    );
  }

  /// `HP`
  String get hp {
    return Intl.message(
      'HP',
      name: 'hp',
      desc: '',
      args: [],
    );
  }

  /// `Heal\n+{amount}`
  String hpDialogChangeAdd(Object amount) {
    return Intl.message(
      'Heal\n+$amount',
      name: 'hpDialogChangeAdd',
      desc: '',
      args: [amount],
    );
  }

  /// `No Change`
  String get hpDialogChangeNeutral {
    return Intl.message(
      'No Change',
      name: 'hpDialogChangeNeutral',
      desc: '',
      args: [],
    );
  }

  /// `Override Max HP`
  String get hpDialogChangeOverrideMax {
    return Intl.message(
      'Override Max HP',
      name: 'hpDialogChangeOverrideMax',
      desc: '',
      args: [],
    );
  }

  /// `Damage\n-{amount}`
  String hpDialogChangeRemove(Object amount) {
    return Intl.message(
      'Damage\n-$amount',
      name: 'hpDialogChangeRemove',
      desc: '',
      args: [amount],
    );
  }

  /// `Current HP`
  String get hpDialogCurrentHP {
    return Intl.message(
      'Current HP',
      name: 'hpDialogCurrentHP',
      desc: '',
      args: [],
    );
  }

  /// `Modify HP`
  String get hpDialogTitle {
    return Intl.message(
      'Modify HP',
      name: 'hpDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Import`
  String get import {
    return Intl.message(
      'Import',
      name: 'import',
      desc: '',
      args: [],
    );
  }

  /// `Browse...`
  String get importBrowseFile {
    return Intl.message(
      'Browse...',
      name: 'importBrowseFile',
      desc: '',
      args: [],
    );
  }

  /// `To start importing, pick the file you want to import from.\nYou will then be able to select what to save and what to leave out.`
  String get importBrowseHelp {
    return Intl.message(
      'To start importing, pick the file you want to import from.\nYou will then be able to select what to save and what to leave out.',
      name: 'importBrowseHelp',
      desc: '',
      args: [],
    );
  }

  /// `Clear selected file`
  String get importClearFile {
    return Intl.message(
      'Clear selected file',
      name: 'importClearFile',
      desc: '',
      args: [],
    );
  }

  /// `Export/Import`
  String get importExportTitle {
    return Intl.message(
      'Export/Import',
      name: 'importExportTitle',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong.\nTry again or contact support if this persists`
  String get importFailedMessage {
    return Intl.message(
      'Something went wrong.\nTry again or contact support if this persists',
      name: 'importFailedMessage',
      desc: '',
      args: [],
    );
  }

  /// `Import Failed`
  String get importFailedTitle {
    return Intl.message(
      'Import Failed',
      name: 'importFailedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Processing {entity}...`
  String importProgressProcessing(Object entity) {
    return Intl.message(
      'Processing $entity...',
      name: 'importProgressProcessing',
      desc: '',
      args: [entity],
    );
  }

  /// `Importing...`
  String get importProgressTitle {
    return Intl.message(
      'Importing...',
      name: 'importProgressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your data was imported from file successfully`
  String get importSuccessMessage {
    return Intl.message(
      'Your data was imported from file successfully',
      name: 'importSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Successful`
  String get importSuccessTitle {
    return Intl.message(
      'Successful',
      name: 'importSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `× {amount}`
  String itemAmountX(Object amount) {
    return Intl.message(
      '× $amount',
      name: 'itemAmountX',
      desc: '',
      args: [amount],
    );
  }

  /// `Count Armor`
  String get itemSettingsCountArmor {
    return Intl.message(
      'Count Armor',
      name: 'itemSettingsCountArmor',
      desc: '',
      args: [],
    );
  }

  /// `Count Damage`
  String get itemSettingsCountDamage {
    return Intl.message(
      'Count Damage',
      name: 'itemSettingsCountDamage',
      desc: '',
      args: [],
    );
  }

  /// `Count Weight`
  String get itemSettingsCountWeight {
    return Intl.message(
      'Count Weight',
      name: 'itemSettingsCountWeight',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get items {
    return Intl.message(
      'Items',
      name: 'items',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0 {No items} one {One item} other {{count} items}}`
  String itemsWithCount(num count) {
    return Intl.plural(
      count,
      zero: 'No items',
      one: 'One item',
      other: '$count items',
      name: 'itemsWithCount',
      desc: '',
      args: [count],
    );
  }

  /// `Level`
  String get level {
    return Intl.message(
      'Level',
      name: 'level',
      desc: '',
      args: [],
    );
  }

  /// `{count} in {type}`
  String libraryCollectionListItemSubtitle(Object count, Object type) {
    return Intl.message(
      '$count in $type',
      name: 'libraryCollectionListItemSubtitle',
      desc: '',
      args: [count, type],
    );
  }

  /// `{type, select, builtIn {Playbook} my {My Library} other {{type}}}`
  String libraryCollectionListItemSubtitleType(Object type) {
    return Intl.select(
      type,
      {
        'builtIn': 'Playbook',
        'my': 'My Library',
        'other': '$type',
      },
      name: 'libraryCollectionListItemSubtitleType',
      desc: '',
      args: [type],
    );
  }

  /// `My Library`
  String get libraryCollectionTitle {
    return Intl.message(
      'My Library',
      name: 'libraryCollectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Clear Filters`
  String get libraryListNoItemsFoundClearFiltersButton {
    return Intl.message(
      'Clear Filters',
      name: 'libraryListNoItemsFoundClearFiltersButton',
      desc: '',
      args: [],
    );
  }

  /// `Try changing the search or filters to find more {entities}.`
  String libraryListNoItemsFoundSubtitleFilters(Object entities) {
    return Intl.message(
      'Try changing the search or filters to find more $entities.',
      name: 'libraryListNoItemsFoundSubtitleFilters',
      desc: '',
      args: [entities],
    );
  }

  /// `No {entities} found in this list.`
  String libraryListNoItemsFoundSubtitleNoFilters(Object entities) {
    return Intl.message(
      'No $entities found in this list.',
      name: 'libraryListNoItemsFoundSubtitleNoFilters',
      desc: '',
      args: [entities],
    );
  }

  /// `No {entities} found`
  String libraryListNoItemsFoundTitle(Object entities) {
    return Intl.message(
      'No $entities found',
      name: 'libraryListNoItemsFoundTitle',
      desc: '',
      args: [entities],
    );
  }

  /// `Getting characters...`
  String get loadingCharacters {
    return Intl.message(
      'Getting characters...',
      name: 'loadingCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loadingGeneral {
    return Intl.message(
      'Loading...',
      name: 'loadingGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Signing in...`
  String get loadingUser {
    return Intl.message(
      'Signing in...',
      name: 'loadingUser',
      desc: '',
      args: [],
    );
  }

  /// `Content Preview`
  String get markdownPreview {
    return Intl.message(
      'Content Preview',
      name: 'markdownPreview',
      desc: '',
      args: [],
    );
  }

  /// `Max Load`
  String get maxLoad {
    return Intl.message(
      'Max Load',
      name: 'maxLoad',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to\nDungeon Paper 2!`
  String get migrationTitle {
    return Intl.message(
      'Welcome to\nDungeon Paper 2!',
      name: 'migrationTitle',
      desc: '',
      args: [],
    );
  }

  /// `To get started, pick a username and the language for the rulebook & app. If you already have an existing Dungeon Paper account your data might take a few seconds to migrate.`
  String get migrationSubtitle {
    return Intl.message(
      'To get started, pick a username and the language for the rulebook & app. If you already have an existing Dungeon Paper account your data might take a few seconds to migrate.',
      name: 'migrationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Your username is unique and can not be changed later, so think carefully! It will be used to identify all your library items when publishing.`
  String get migrationUsernameInfo {
    return Intl.message(
      'Your username is unique and can not be changed later, so think carefully! It will be used to identify all your library items when publishing.',
      name: 'migrationUsernameInfo',
      desc: '',
      args: [],
    );
  }

  /// `{category, select, starting {Starting} basic {Basic} special {Special} advanced1 {Advanced} advanced2 {Advanced} other {Other}}`
  String moveCategory(Object category) {
    return Intl.select(
      category,
      {
        'starting': 'Starting',
        'basic': 'Basic',
        'special': 'Special',
        'advanced1': 'Advanced',
        'advanced2': 'Advanced',
        'other': 'Other',
      },
      name: 'moveCategory',
      desc: '',
      args: [category],
    );
  }

  /// `{category, select, starting {Starting} basic {Basic} special {Special} advanced1 {Advanced (level 1-5)} advanced2 {Advanced (level 6-10)} other {Other}}`
  String moveCategoryWithLevel(Object category) {
    return Intl.select(
      category,
      {
        'starting': 'Starting',
        'basic': 'Basic',
        'special': 'Special',
        'advanced1': 'Advanced (level 1-5)',
        'advanced2': 'Advanced (level 6-10)',
        'other': 'Other',
      },
      name: 'moveCategoryWithLevel',
      desc: '',
      args: [category],
    );
  }

  /// `{category, select, starting {Starting} basic {Basic} special {Special} advanced1 {Advanced (1-5)} advanced2 {Advanced (6-10)} other {Other}}`
  String moveCategoryWithLevelShort(Object category) {
    return Intl.select(
      category,
      {
        'starting': 'Starting',
        'basic': 'Basic',
        'special': 'Special',
        'advanced1': 'Advanced (1-5)',
        'advanced2': 'Advanced (6-10)',
        'other': 'Other',
      },
      name: 'moveCategoryWithLevelShort',
      desc: '',
      args: [category],
    );
  }

  /// `Moves`
  String get moves {
    return Intl.message(
      'Moves',
      name: 'moves',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0 {No moves} one {One move} other {{count} moves}}`
  String movesWithCount(num count) {
    return Intl.plural(
      count,
      zero: 'No moves',
      one: 'One move',
      other: '$count moves',
      name: 'movesWithCount',
      desc: '',
      args: [count],
    );
  }

  /// `Move to bottom`
  String get moveToEnd {
    return Intl.message(
      'Move to bottom',
      name: 'moveToEnd',
      desc: '',
      args: [],
    );
  }

  /// `Move {entity} to bottom`
  String moveToEndGeneric(Object entity) {
    return Intl.message(
      'Move $entity to bottom',
      name: 'moveToEndGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Move to top`
  String get moveToStart {
    return Intl.message(
      'Move to top',
      name: 'moveToStart',
      desc: '',
      args: [],
    );
  }

  /// `Move {entity} to top`
  String moveToStartGeneric(Object entity) {
    return Intl.message(
      'Move $entity to top',
      name: 'moveToStartGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `My {entity}`
  String myGeneric(Object entity) {
    return Intl.message(
      'My $entity',
      name: 'myGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Use`
  String get navActions {
    return Intl.message(
      'Use',
      name: 'navActions',
      desc: '',
      args: [],
    );
  }

  /// `Character`
  String get navCharacter {
    return Intl.message(
      'Character',
      name: 'navCharacter',
      desc: '',
      args: [],
    );
  }

  /// `Journal`
  String get navJournal {
    return Intl.message(
      'Journal',
      name: 'navJournal',
      desc: '',
      args: [],
    );
  }

  /// `‹No description provided›`
  String get noDescription {
    return Intl.message(
      '‹No description provided›',
      name: 'noDescription',
      desc: '',
      args: [],
    );
  }

  /// `No {entity}`
  String noGeneric(Object entity) {
    return Intl.message(
      'No $entity',
      name: 'noGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `General`
  String get noteNoCategory {
    return Intl.message(
      'General',
      name: 'noteNoCategory',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0 {No notes} one {One note} other {{count} notes}}`
  String notesWithCount(num count) {
    return Intl.plural(
      count,
      zero: 'No notes',
      one: 'One note',
      other: '$count notes',
      name: 'notesWithCount',
      desc: '',
      args: [count],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Hide password`
  String get passwordHideTooltip {
    return Intl.message(
      'Hide password',
      name: 'passwordHideTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Show password`
  String get passwordShowTooltip {
    return Intl.message(
      'Show password',
      name: 'passwordShowTooltip',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, one {One {singular}} other {{count} {plural}}}`
  String pluralize(num count, Object singular, Object plural) {
    return Intl.plural(
      count,
      one: 'One $singular',
      other: '$count $plural',
      name: 'pluralize',
      desc: '',
      args: [count, singular, plural],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Items`
  String get quickIconsItems {
    return Intl.message(
      'Items',
      name: 'quickIconsItems',
      desc: '',
      args: [],
    );
  }

  /// `Moves`
  String get quickIconsMoves {
    return Intl.message(
      'Moves',
      name: 'quickIconsMoves',
      desc: '',
      args: [],
    );
  }

  /// `+ Note`
  String get quickIconsNote {
    return Intl.message(
      '+ Note',
      name: 'quickIconsNote',
      desc: '',
      args: [],
    );
  }

  /// `Spells`
  String get quickIconsSpells {
    return Intl.message(
      'Spells',
      name: 'quickIconsSpells',
      desc: '',
      args: [],
    );
  }

  /// `Reload Library`
  String get reloadLibrary {
    return Intl.message(
      'Reload Library',
      name: 'reloadLibrary',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Reset to default`
  String get resetToDefault {
    return Intl.message(
      'Reset to default',
      name: 'resetToDefault',
      desc: '',
      args: [],
    );
  }

  /// `Hack & Slash`
  String get rollAttackDamageButton {
    return Intl.message(
      'Hack & Slash',
      name: 'rollAttackDamageButton',
      desc: '',
      args: [],
    );
  }

  /// `Basic Action`
  String get rollBasicActionButton {
    return Intl.message(
      'Basic Action',
      name: 'rollBasicActionButton',
      desc: '',
      args: [],
    );
  }

  /// `Button Text`
  String get rollButtonLabel {
    return Intl.message(
      'Button Text',
      name: 'rollButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Roll {dice}`
  String rollButtonTooltip(Object dice) {
    return Intl.message(
      'Roll $dice',
      name: 'rollButtonTooltip',
      desc: '',
      args: [dice],
    );
  }

  /// `Roll {dice}\n* Rolling with debility`
  String rollButtonTooltipWithDebility(Object dice) {
    return Intl.message(
      'Roll $dice\n* Rolling with debility',
      name: 'rollButtonTooltipWithDebility',
      desc: '',
      args: [dice],
    );
  }

  /// `Dice: {dice} | Modifier: {mod}`
  String rollDialogResultBreakdown(Object dice, Object mod) {
    return Intl.message(
      'Dice: $dice | Modifier: $mod',
      name: 'rollDialogResultBreakdown',
      desc: '',
      args: [dice, mod],
    );
  }

  /// `Total: {total}`
  String rollDialogResultTotal(Object total) {
    return Intl.message(
      'Total: $total',
      name: 'rollDialogResultTotal',
      desc: '',
      args: [total],
    );
  }

  /// `Total: {total}`
  String rollDialogTitleRolled(Object total) {
    return Intl.message(
      'Total: $total',
      name: 'rollDialogTitleRolled',
      desc: '',
      args: [total],
    );
  }

  /// `Rolling {count} dice`
  String rollDialogTitleRolling(Object count) {
    return Intl.message(
      'Rolling $count dice',
      name: 'rollDialogTitleRolling',
      desc: '',
      args: [count],
    );
  }

  /// `Discern Realities`
  String get rollDiscernRealitiesButton {
    return Intl.message(
      'Discern Realities',
      name: 'rollDiscernRealitiesButton',
      desc: '',
      args: [],
    );
  }

  /// `Volley`
  String get rollVolleyButton {
    return Intl.message(
      'Volley',
      name: 'rollVolleyButton',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Save {entity}`
  String saveGeneric(Object entity) {
    return Intl.message(
      'Save $entity',
      name: 'saveGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Search in: `
  String get searchIn {
    return Intl.message(
      'Search in: ',
      name: 'searchIn',
      desc: '',
      args: [],
    );
  }

  /// `Type to search`
  String get searchPlaceholder {
    return Intl.message(
      'Type to search',
      name: 'searchPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Type to search {entity}`
  String searchPlaceholderGeneric(Object entity) {
    return Intl.message(
      'Type to search $entity',
      name: 'searchPlaceholderGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `See all`
  String get seeAll {
    return Intl.message(
      'See all',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Select All`
  String get selectAll {
    return Intl.message(
      'Select All',
      name: 'selectAll',
      desc: '',
      args: [],
    );
  }

  /// `Selected`
  String get selected {
    return Intl.message(
      'Selected',
      name: 'selected',
      desc: '',
      args: [],
    );
  }

  /// `Select {entity}`
  String selectGeneric(Object entity) {
    return Intl.message(
      'Select $entity',
      name: 'selectGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `Select None`
  String get selectNone {
    return Intl.message(
      'Select None',
      name: 'selectNone',
      desc: '',
      args: [],
    );
  }

  /// `Select {string} to add`
  String selectToAdd(Object string) {
    return Intl.message(
      'Select $string to add',
      name: 'selectToAdd',
      desc: '',
      args: [string],
    );
  }

  /// `Problem description`
  String get sendFeedbackBodyLabel {
    return Intl.message(
      'Problem description',
      name: 'sendFeedbackBodyLabel',
      desc: '',
      args: [],
    );
  }

  /// `Feedback title`
  String get sendFeedbackSendButton {
    return Intl.message(
      'Feedback title',
      name: 'sendFeedbackSendButton',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your feedback! We will review your feedback as soon as we can.`
  String get sendFeedbackSuccessMessage {
    return Intl.message(
      'Thank you for your feedback! We will review your feedback as soon as we can.',
      name: 'sendFeedbackSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Feedback sent!`
  String get sendFeedbackSuccessTitle {
    return Intl.message(
      'Feedback sent!',
      name: 'sendFeedbackSuccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Send App Feedback`
  String get sendFeedbackTitle {
    return Intl.message(
      'Send App Feedback',
      name: 'sendFeedbackTitle',
      desc: '',
      args: [],
    );
  }

  /// `Feedback title`
  String get sendFeedbackTitleLabel {
    return Intl.message(
      'Feedback title',
      name: 'sendFeedbackTitleLabel',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get separatorOr {
    return Intl.message(
      'OR',
      name: 'separatorOr',
      desc: '',
      args: [],
    );
  }

  /// `Default dark theme`
  String get settingsDefaultDarkTheme {
    return Intl.message(
      'Default dark theme',
      name: 'settingsDefaultDarkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Default light theme`
  String get settingsDefaultLightTheme {
    return Intl.message(
      'Default light theme',
      name: 'settingsDefaultLightTheme',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get settingsGeneral {
    return Intl.message(
      'General',
      name: 'settingsGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Keep screen awake while using the app`
  String get settingsKeepScreenAwake {
    return Intl.message(
      'Keep screen awake while using the app',
      name: 'settingsKeepScreenAwake',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsTitle {
    return Intl.message(
      'Settings',
      name: 'settingsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signinTitle {
    return Intl.message(
      'Sign In',
      name: 'signinTitle',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get signinGoToSignupLabel {
    return Intl.message(
      'Don\'t have an account?',
      name: 'signinGoToSignupLabel',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signinGoToSignupButton {
    return Intl.message(
      'Sign up',
      name: 'signinGoToSignupButton',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get signinGoToSigninLabel {
    return Intl.message(
      'Already have an account?',
      name: 'signinGoToSigninLabel',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signinGoToSigninButton {
    return Intl.message(
      'Sign in',
      name: 'signinGoToSigninButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to your account to sync your data online, and get access to many more features.`
  String get signinSubtitle {
    return Intl.message(
      'Sign in to your account to sync your data online, and get access to many more features.',
      name: 'signinSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signupTitle {
    return Intl.message(
      'Sign Up',
      name: 'signupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter the required details below to create your Dungeon Paper account.`
  String get signupSubtitle {
    return Intl.message(
      'Enter the required details below to create your Dungeon Paper account.',
      name: 'signupSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signinButton {
    return Intl.message(
      'Sign in',
      name: 'signinButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signupButton {
    return Intl.message(
      'Sign up',
      name: 'signupButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with {provider}`
  String signinWithButton(Object provider) {
    return Intl.message(
      'Sign in with $provider',
      name: 'signinWithButton',
      desc: '',
      args: [provider],
    );
  }

  /// `Sign up with {provider}`
  String signupWithButton(Object provider) {
    return Intl.message(
      'Sign up with $provider',
      name: 'signupWithButton',
      desc: '',
      args: [provider],
    );
  }

  /// `{provider, select, facebook {Facebook} google {Google} apple {Apple} password {Dungeon Paper} other {Other}}`
  String signinProvider(Object provider) {
    return Intl.select(
      provider,
      {
        'facebook': 'Facebook',
        'google': 'Google',
        'apple': 'Apple',
        'password': 'Dungeon Paper',
        'other': 'Other',
      },
      name: 'signinProvider',
      desc: '',
      args: [provider],
    );
  }

  /// `Facebook`
  String get signinProviderFacebook {
    return Intl.message(
      'Facebook',
      name: 'signinProviderFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get signinProviderGoogle {
    return Intl.message(
      'Google',
      name: 'signinProviderGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get signinProviderApple {
    return Intl.message(
      'Apple',
      name: 'signinProviderApple',
      desc: '',
      args: [],
    );
  }

  /// `Link`
  String get signinProviderLink {
    return Intl.message(
      'Link',
      name: 'signinProviderLink',
      desc: '',
      args: [],
    );
  }

  /// `Unlink`
  String get signinProviderUnlink {
    return Intl.message(
      'Unlink',
      name: 'signinProviderUnlink',
      desc: '',
      args: [],
    );
  }

  /// `This device only supports unlinking {provider} accounts.`
  String signinCantUseProvider(Object provider) {
    return Intl.message(
      'This device only supports unlinking $provider accounts.',
      name: 'signinCantUseProvider',
      desc: '',
      args: [provider],
    );
  }

  /// `You may only unlink {provider} from this device.\nTo link accounts using the {provider} provider is only available from supported devices.`
  String signinCantUseProviderTooltip(Object provider) {
    return Intl.message(
      'You may only unlink $provider from this device.\nTo link accounts using the $provider provider is only available from supported devices.',
      name: 'signinCantUseProviderTooltip',
      desc: '',
      args: [provider],
    );
  }

  /// `Sign out`
  String get signoutButton {
    return Intl.message(
      'Sign out',
      name: 'signoutButton',
      desc: '',
      args: [],
    );
  }

  /// `Default data language`
  String get signupDefaultDataLanguage {
    return Intl.message(
      'Default data language',
      name: 'signupDefaultDataLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get signupEmail {
    return Intl.message(
      'Email',
      name: 'signupEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get signupEmailPlaceholder {
    return Intl.message(
      'Enter your email',
      name: 'signupEmailPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get signupEmailValidation {
    return Intl.message(
      'Please enter a valid email',
      name: 'signupEmailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signupPassword {
    return Intl.message(
      'Password',
      name: 'signupPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get signupPasswordPlaceholder {
    return Intl.message(
      'Enter your password',
      name: 'signupPasswordPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get signupPasswordConfirm {
    return Intl.message(
      'Confirm Password',
      name: 'signupPasswordConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Enter the same password again`
  String get signupPasswordConfirmPlaceholder {
    return Intl.message(
      'Enter the same password again',
      name: 'signupPasswordConfirmPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least {length} characters`
  String signupPasswordValidationLength(Object length) {
    return Intl.message(
      'Password must be at least $length characters',
      name: 'signupPasswordValidationLength',
      desc: '',
      args: [length],
    );
  }

  /// `Passwords do not match`
  String get signupPasswordValidationMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'signupPasswordValidationMatch',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain {pattern}`
  String signupPasswordValidationPatternGeneric(Object pattern) {
    return Intl.message(
      'Password must contain $pattern',
      name: 'signupPasswordValidationPatternGeneric',
      desc: '',
      args: [pattern],
    );
  }

  /// `Password must contain at least one capital letter`
  String get signupPasswordValidationPatternLetter {
    return Intl.message(
      'Password must contain at least one capital letter',
      name: 'signupPasswordValidationPatternLetter',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one number`
  String get signupPasswordValidationPatternNumber {
    return Intl.message(
      'Password must contain at least one number',
      name: 'signupPasswordValidationPatternNumber',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get signupUsername {
    return Intl.message(
      'Username',
      name: 'signupUsername',
      desc: '',
      args: [],
    );
  }

  /// `Pick a unique username`
  String get signupUsernamePlaceholder {
    return Intl.message(
      'Pick a unique username',
      name: 'signupUsernamePlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Username must be at least {length} characters`
  String signupUsernameValidation(Object length) {
    return Intl.message(
      'Username must be at least $length characters',
      name: 'signupUsernameValidation',
      desc: '',
      args: [length],
    );
  }

  /// `Username must only contain letters, numbers, dashes and underscores`
  String get signupUsernameValidationPattern {
    return Intl.message(
      'Username must only contain letters, numbers, dashes and underscores',
      name: 'signupUsernameValidationPattern',
      desc: '',
      args: [],
    );
  }

  /// `Twitter`
  String get socialTwitter {
    return Intl.message(
      'Twitter',
      name: 'socialTwitter',
      desc: '',
      args: [],
    );
  }

  /// `Facebook`
  String get socialFacebook {
    return Intl.message(
      'Facebook',
      name: 'socialFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Discord`
  String get socialDiscord {
    return Intl.message(
      'Discord',
      name: 'socialDiscord',
      desc: '',
      args: [],
    );
  }

  /// `GitHub`
  String get socialGitHub {
    return Intl.message(
      'GitHub',
      name: 'socialGitHub',
      desc: '',
      args: [],
    );
  }

  /// `Play Store`
  String get socialGoogle {
    return Intl.message(
      'Play Store',
      name: 'socialGoogle',
      desc: '',
      args: [],
    );
  }

  /// `App Store`
  String get socialApple {
    return Intl.message(
      'App Store',
      name: 'socialApple',
      desc: '',
      args: [],
    );
  }

  /// `Move down`
  String get sortMoveDown {
    return Intl.message(
      'Move down',
      name: 'sortMoveDown',
      desc: '',
      args: [],
    );
  }

  /// `Move up`
  String get sortMoveUp {
    return Intl.message(
      'Move up',
      name: 'sortMoveUp',
      desc: '',
      args: [],
    );
  }

  /// `Special Dice`
  String get specialDice {
    return Intl.message(
      'Special Dice',
      name: 'specialDice',
      desc: '',
      args: [],
    );
  }

  /// `{button, select, damage {Damage} other {{button}}}`
  String specialRollButton(Object button) {
    return Intl.select(
      button,
      {
        'damage': 'Damage',
        'other': '$button',
      },
      name: 'specialRollButton',
      desc: '',
      args: [button],
    );
  }

  /// `{level, select, cantrip {Cantrip} rote {Rote} other {Level {level}}}`
  String spellLevel(Object level) {
    return Intl.select(
      level,
      {
        'cantrip': 'Cantrip',
        'rote': 'Rote',
        'other': 'Level $level',
      },
      name: 'spellLevel',
      desc: '',
      args: [level],
    );
  }

  /// `Spells`
  String get spells {
    return Intl.message(
      'Spells',
      name: 'spells',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0 {No spells} one {One spell} other {{count} spells}}`
  String spellsWithCount(num count) {
    return Intl.plural(
      count,
      zero: 'No spells',
      one: 'One spell',
      other: '$count spells',
      name: 'spellsWithCount',
      desc: '',
      args: [count],
    );
  }

  /// `Copy from: {tag}`
  String tagCopyFrom(Object tag) {
    return Intl.message(
      'Copy from: $tag',
      name: 'tagCopyFrom',
      desc: '',
      args: [tag],
    );
  }

  /// `Tag Information`
  String get tagDetails {
    return Intl.message(
      'Tag Information',
      name: 'tagDetails',
      desc: '',
      args: [],
    );
  }

  /// `Switch to Dark Mode`
  String get themeTurnDark {
    return Intl.message(
      'Switch to Dark Mode',
      name: 'themeTurnDark',
      desc: '',
      args: [],
    );
  }

  /// `Switch to Light Mode`
  String get themeTurnLight {
    return Intl.message(
      'Switch to Light Mode',
      name: 'themeTurnLight',
      desc: '',
      args: [],
    );
  }

  /// `Unselect`
  String get unselect {
    return Intl.message(
      'Unselect',
      name: 'unselect',
      desc: '',
      args: [],
    );
  }

  /// `Use default`
  String get useDefault {
    return Intl.message(
      'Use default',
      name: 'useDefault',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get userLoginButton {
    return Intl.message(
      'Sign in',
      name: 'userLoginButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign out`
  String get userLogoutButton {
    return Intl.message(
      'Sign out',
      name: 'userLogoutButton',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get userMenuMoreChars {
    return Intl.message(
      'More',
      name: 'userMenuMoreChars',
      desc: '',
      args: [],
    );
  }

  /// `Recent Characters`
  String get userMenuRecentCharacters {
    return Intl.message(
      'Recent Characters',
      name: 'userMenuRecentCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Not registered`
  String get userUnregistered {
    return Intl.message(
      'Not registered',
      name: 'userUnregistered',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `View {entity}`
  String viewGeneric(Object entity) {
    return Intl.message(
      'View $entity',
      name: 'viewGeneric',
      desc: '',
      args: [entity],
    );
  }

  /// `What's new?`
  String get whatsNew {
    return Intl.message(
      'What\'s new?',
      name: 'whatsNew',
      desc: '',
      args: [],
    );
  }

  /// `Update manually`
  String get xpDialogChangeOverride {
    return Intl.message(
      'Update manually',
      name: 'xpDialogChangeOverride',
      desc: '',
      args: [],
    );
  }

  /// `End Session`
  String get xpDialogEndSession {
    return Intl.message(
      'End Session',
      name: 'xpDialogEndSession',
      desc: '',
      args: [],
    );
  }

  /// `Changing the current XP or level manually will cause the pending XP to be discarded unless this is unchecked.`
  String get xpDialogOverrideInfoText {
    return Intl.message(
      'Changing the current XP or level manually will cause the pending XP to be discarded unless this is unchecked.',
      name: 'xpDialogOverrideInfoText',
      desc: '',
      args: [],
    );
  }

  /// `Override Level`
  String get xpDialogOverrideLevel {
    return Intl.message(
      'Override Level',
      name: 'xpDialogOverrideLevel',
      desc: '',
      args: [],
    );
  }

  /// `Override XP`
  String get xpDialogOverrideXp {
    return Intl.message(
      'Override XP',
      name: 'xpDialogOverrideXp',
      desc: '',
      args: [],
    );
  }

  /// `Reset bonds, flags & end of session questions after saving`
  String get xpDialogResetSessionMarks {
    return Intl.message(
      'Reset bonds, flags & end of session questions after saving',
      name: 'xpDialogResetSessionMarks',
      desc: '',
      args: [],
    );
  }

  /// `Mark Session XP`
  String get xpDialogTitle {
    return Intl.message(
      'Mark Session XP',
      name: 'xpDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Update XP & Level`
  String get xpDialogTitleOverriding {
    return Intl.message(
      'Update XP & Level',
      name: 'xpDialogTitleOverriding',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
