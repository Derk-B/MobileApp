import 'package:firebase_ui_localizations/firebase_ui_localizations.dart';

class FirebaseUILabelsLocalized extends DefaultLocalizations {
  const FirebaseUILabelsLocalized();

  @override
  String get emailInputLabel => "E-mailadres";

  @override
  String get passwordInputLabel => "Wachtwoord";

  @override
  String get confirmPasswordInputLabel => "Wachtwoord herhalen";

  /// Used as a label of the EmailForm submit button when the AuthAction is
  /// AuthAction.signUp.
  @override
  String get registerActionText => "Registreer";

  /// Used as a hint text of the LoginView suggesting to create a new account.
  @override
  String get registerHintText => "Heeft u nog geen account?";

  /// Used as a title of the LoginView when AuthAction is AuthAction.signUp.
  @override
  String get registerText => "Registreer";

  /// Used as a label of the EmailForm submit button when the AuthAction is
  /// AuthAction.signIn.
  @override
  String get signInActionText => "Login";

  /// Used as a hint text of the LoginView suggesting to sign in instead of
  /// registering a new account.
  @override
  String get signInHintText => "Heeft u al een account?";

  /// Used as a title of the LoginView when AuthAction is AuthAction.signIn.
  @override
  String get signInText => "Login";

  /// Used as a label of the ForgotPasswordButton.
  @override
  String get forgotPasswordButtonLabel => "Wachtwoord vergeten?";

  /// Used as a hint on a ForgotPasswordView.
  @override
  String get forgotPasswordHintText =>
      "Geef uw e-mailadres en wij sturen een mail waar u een nieuw wachtwoord kan maken.";

  /// Used as a title of the ForgotPasswordView.
  @override
  String get forgotPasswordViewTitle => "Wachtwoord vergeten";

  /// Used as a label of submit button of the ForgotPasswordView.
  @override
  String get resetPasswordButtonLabel => "Stuur mij een mail";

  /// Used as a label of the back button.
  @override
  String get goBackButtonLabel => "Ga terug";

  /// Used as an error text when PasswordInput is empty.
  @override
  String get passwordIsRequiredErrorText => "Wachtwoord mag niet leeg zijn";

  /// Used as an error text of the EmailInput when the email is empty.
  @override
  String get emailIsRequiredErrorText => "E-mail mag niet leeg zijn";

  /// Used as an error text when PasswordInput used to confirm the password is
  /// empty.
  @override
  String get confirmPasswordIsRequiredErrorText =>
      "Wachtwoord mag niet leeg zijn";

  /// Used as an error text when provided passwords do not match.
  @override
  String get confirmPasswordDoesNotMatchErrorText =>
      "Wachtwoorden komen niet overeen";

  /// Indicates that the password reset email was sent.
  @override
  String get passwordResetEmailSentText => "Mail is verzonden, check uw inbox";

  /// Message indicating that something went wrong during email verification
  @override
  String get verificationFailedText =>
      "Inloggen is mislukt, controleer uw e-mail en wachtwoord";

  /// Used as an error message when the account for provided email was not
  /// found.
  @override
  String get userNotFoundErrorText => "E-mailadres is niet bij ons bekend";

  /// Used as a generic error message when unable to resolve error details from
  /// Exception or FirebaseAuthException.
  @override
  String get unknownError =>
      "Onbekende fout, probeer later nog eens of neem contact op";

  /// Used as an error text of the EmailInput if the provided email is not
  /// valid.
  @override
  String get isNotAValidEmailErrorText => "Geef een geldig e-mailadres";

  /// Used as an error text of the PasswordInput when provided password is empty
  /// or is not correct.
  @override
  String get wrongOrNoPasswordErrorText => "Verkeerd wachtwoord";

  /// Error text suggesting that used password is too weak
  @override
  String get weakPasswordErrorText => "Te zwak wachtwoord";
}
