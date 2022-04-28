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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
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

  /// `About`
  String get aboutTitle {
    return Intl.message(
      'About',
      name: 'aboutTitle',
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

  /// `Add {string}`
  String addWithCount(Object string) {
    return Intl.message(
      'Add $string',
      name: 'addWithCount',
      desc: '',
      args: [string],
    );
  }

  /// `{alignment, select, chaotic {Chaotic} evil {Evil} good {Good} lawful {Lawful} neutral {Neutral}}`
  String alignment(Object alignment) {
    return Intl.select(
      alignment,
      {
        'chaotic': 'Chaotic',
        'evil': 'Evil',
        'good': 'Good',
        'lawful': 'Lawful',
        'neutral': 'Neutral',
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

  /// `Dungeon Paper`
  String get appName {
    return Intl.message(
      'Dungeon Paper',
      name: 'appName',
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

  /// `Character Biography`
  String get characterBioDialogTitle {
    return Intl.message(
      'Character Biography',
      name: 'characterBioDialogTitle',
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

  /// `Alignment`
  String get characterBioDialogAlignmentNameLabel {
    return Intl.message(
      'Alignment',
      name: 'characterBioDialogAlignmentNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Alignment: {alignment}`
  String characterBioDialogAlignmentNameDisplayLabel(Object alignment) {
    return Intl.message(
      'Alignment: $alignment',
      name: 'characterBioDialogAlignmentNameDisplayLabel',
      desc: '',
      args: [alignment],
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

  /// `Level {level} ∙ {charClass} ∙ {alignment}`
  String characterHeaderSubtitle(
      Object level, Object charClass, Object alignment) {
    return Intl.message(
      'Level $level ∙ $charClass ∙ $alignment',
      name: 'characterHeaderSubtitle',
      desc: '',
      args: [level, charClass, alignment],
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

  /// `No Category`
  String get characterNoCategory {
    return Intl.message(
      'No Category',
      name: 'characterNoCategory',
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

  /// `Add Character`
  String get createCharacterAddButton {
    return Intl.message(
      'Add Character',
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

  /// `{step, select, information {Basic Information} charClass {Class} stats {Roll Stats} movesSpells {Moves & Spells} background {Background & Bonds} gear {Starting Gear}}`
  String createCharacterStep(Object step) {
    return Intl.select(
      step,
      {
        'information': 'Basic Information',
        'charClass': 'Class',
        'stats': 'Roll Stats',
        'movesSpells': 'Moves & Spells',
        'background': 'Background & Bonds',
        'gear': 'Starting Gear',
      },
      name: 'createCharacterStep',
      desc: '',
      args: [step],
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

  /// `Amount`
  String get diceAmount {
    return Intl.message(
      'Amount',
      name: 'diceAmount',
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

  /// `Roll again`
  String get diceRollAgain {
    return Intl.message(
      'Roll again',
      name: 'diceRollAgain',
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

  /// `{runtimeType, select, CharacterClass {Class} Item {Item} Monster {Monster} Move {Move} Race {Race} Spell {Spell} Tag {Tag} MoveCategory {Category} other {{runtimeType}}}`
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
        'other': '$runtimeType',
      },
      name: 'entity',
      desc: '',
      args: [runtimeType],
    );
  }

  /// `{runtimeType, select, CharacterClass {Classes} Item {Items} Monster {Monsters} Move {Moves} Race {Races} Spell {Spells} Tag {Tags} MoveCategory {Categories} Dice {Dice} other {{runtimeType}s}}`
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
        'other': '${runtimeType}s',
      },
      name: 'entityPlural',
      desc: '',
      args: [runtimeType],
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

  /// `Operation was canceled`
  String get exportCanceledMessage {
    return Intl.message(
      'Operation was canceled',
      name: 'exportCanceledMessage',
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

  /// `Content Preview`
  String get markdownPreview {
    return Intl.message(
      'Content Preview',
      name: 'markdownPreview',
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

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
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

  /// `Roll +{stat}`
  String rollStatButtonTooltip(Object stat) {
    return Intl.message(
      'Roll +$stat',
      name: 'rollStatButtonTooltip',
      desc: '',
      args: [stat],
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

  /// `Settings`
  String get settingsTitle {
    return Intl.message(
      'Settings',
      name: 'settingsTitle',
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
