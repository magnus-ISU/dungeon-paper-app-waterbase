import 'package:firebase_analytics/firebase_analytics.dart';
export 'package:firebase_analytics/firebase_analytics.dart'
    show FirebaseAnalytics;

final analytics = FirebaseAnalytics();

class Events {
  static const OpenSidebar = 'open_sidebar';
  static const ChangeCharacter = 'change_character';
  static const ReturnToScreen = 'return_to_screen';
  static const OpenDiceDialog = 'open_dice_screen';
  static const AddDice = 'add_dice';
  static const RollNewDice = 'roll_new_dice';
  static const RerollDice = 'reroll_dice';
  static const EditDice = 'edit_dice';
  static const RemoveDice = 'remove_dice';
  static const ExpandMoveCard = 'expand_move_card';
  static const ExpandSpellCard = 'expand_spell_card';
  static const ExpandNoteCard = 'expand_note_card';
  static const ExpandInventoryItemCard = 'expand_inventory_item_card';
  static const OpenCoinsChip = 'open_coins_chip';
  static const SaveCharacter = 'save_character';
  static const DeleteCharacter = 'delete_character';
  static const SaveCustomClass = 'save_custom_class';
  static const DeleteCustomClass = 'delete_custom_class';
  static const EditStat = 'edit_stat';
  static const SaveHP = 'save_hp';
  static const SaveXP = 'save_xp';
  static const LevelUp = 'lv_up';
  static const LevelDown = 'lv_down';
  static const AccountLinkAttempt = 'account_link_attempt';
  static const AccountLinkSuccess = 'account_link_success';
  static const AccountLinkFail = 'account_link_fail';
  static const AccountUnlinkAttempt = 'account_unlink_attempt';
  static const AccountUnlinkSuccess = 'account_unlink_success';
  static const AccountUnlinkFail = 'account_unlink_fail';
  static const ShareApp = 'share_app';
  static const EditDisplayNameAttempt = 'edit_display_name_attempt';
  static const EditDisplayNameConfirm = 'edit_display_name_confirm';
  static const EditDisplayNameCancel = 'edit_display_name_cancel';
  static const EditEmailAttempt = 'edit_email_attempt';
  static const EditEmailConfirm = 'edit_email_confirm';
  static const EditEmailCancel = 'edit_email_cancel';
  static const PasswordResetAttempt = 'password_reset_attempt';
  static const PasswordResetConfirm = 'password_reset_confirm';
  static const PasswordResetCancel = 'password_reset_cancel';
  static const UploadCharacterAvatarAttempt = 'upload_character_avatar_attempt';
  static const UploadCharacterAvatarSuccess = 'upload_character_avatar_success';
  static const UploadCharacterAvatarFail = 'upload_character_avatar_fail';
}

class ScreenNames {
  static const DiceRoll = 'roll_dice';
  static const CharacterScreen = 'edit_character';
  static const ManageCharacters = 'manage_characters';
  static const Compendium = 'compendium';
  static const CustomClasses = 'custom_classes';
  static const About = 'about';
  static const Account = 'account';
  static const Settings = 'settings';
}
