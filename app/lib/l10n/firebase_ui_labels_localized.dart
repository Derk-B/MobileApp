import 'package:app/shared/localizations_ext.dart';
import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';
import 'package:flutter/material.dart';

class FirebaseUILabelsLocalized extends DefaultLocalizations {
  final Locale locale;
  const FirebaseUILabelsLocalized(this.locale);

  AppLocalizations? get _appLocalizations {
    if (locale == const Locale("en")) {
      return AppLocalizationsEn();
    } else {
      return AppLocalizationsNl();
    }
  }

  @override
  String get emailInputLabel =>
      _appLocalizations!.firebase_ui_email_input_label;

  @override
  String get passwordInputLabel =>
      _appLocalizations!.firebase_ui_password_input_label;

  @override
  String get confirmPasswordInputLabel =>
      _appLocalizations!.firebase_ui_confirm_password_input_label;

  @override
  String get registerActionText =>
      _appLocalizations!.firebase_ui_register_action_text;

  @override
  String get registerHintText =>
      _appLocalizations!.firebase_ui_register_hint_text;

  @override
  String get registerText => _appLocalizations!.firebase_ui_register_text;

  @override
  String get signInActionText =>
      _appLocalizations!.firebase_ui_sign_in_action_text;

  @override
  String get signInHintText => _appLocalizations!.firebase_ui_sign_in_hint_text;

  @override
  String get signInText => _appLocalizations!.firebase_ui_sign_in_text;

  @override
  String get forgotPasswordButtonLabel =>
      _appLocalizations!.firebase_ui_forgot_password_button_label;

  @override
  String get forgotPasswordHintText =>
      _appLocalizations!.firebase_ui_password_hint_text;

  @override
  String get forgotPasswordViewTitle =>
      _appLocalizations!.firebase_ui_forgot_password_view_title;

  @override
  String get resetPasswordButtonLabel =>
      _appLocalizations!.firebase_ui_reset_password_button_label;

  @override
  String get goBackButtonLabel =>
      _appLocalizations!.firebase_ui_go_back_button_label;

  @override
  String get passwordIsRequiredErrorText =>
      _appLocalizations!.firebase_ui_password_is_required_error_text;

  @override
  String get emailIsRequiredErrorText =>
      _appLocalizations!.firebase_ui_email_is_required_error_text;

  @override
  String get confirmPasswordIsRequiredErrorText =>
      _appLocalizations!.firebase_ui_confirm_password_is_required_error_text;

  @override
  String get confirmPasswordDoesNotMatchErrorText =>
      _appLocalizations!.firebase_ui_confirm_password_does_not_match_error_text;

  @override
  String get passwordResetEmailSentText =>
      _appLocalizations!.firebase_ui_password_reset_email_sent_text;

  @override
  String get verificationFailedText =>
      _appLocalizations!.firebase_ui_verification_failed_text;

  @override
  String get userNotFoundErrorText =>
      _appLocalizations!.firebase_ui_user_not_found_error_text;

  @override
  String get unknownError => _appLocalizations!.firebase_ui_unknown_error;

  @override
  String get isNotAValidEmailErrorText =>
      _appLocalizations!.firebase_ui_is_not_a_valid_email_error_text;

  @override
  String get wrongOrNoPasswordErrorText =>
      _appLocalizations!.firebase_ui_wrong_or_no_password_error_text;

  @override
  String get weakPasswordErrorText =>
      _appLocalizations!.firebase_ui_weak_password_error_text;
}
