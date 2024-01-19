// app_localizations.dart
import 'package:firstapp/strings/strings.dart';
import 'package:flutter/material.dart';

class AppLocalizations {
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  String get login => Strings.login;
  String get welcomeBack => Strings.welcomeBack;
  String get emailAddress => Strings.emailAddress;
  String get helloExample => Strings.helloExample;
  String get password => Strings.password;
  String get forgotPassword => Strings.forgotPassword;
  String get keepMeSignedIn => Strings.keepMeSignedIn;
  String get loginButton => Strings.loginButton;
  String get createAccount => Strings.createAccount;
  String get forgotpassword => Strings.forgotpassword;
  String get passwordresetlink => Strings.passwordresetlink;
  String get passwordbutton => Strings.passwordbutton;
  String get resetpassword => Strings.resetpassword;
  String get newpassword => Strings.newpassword;
  String get enternewpassword => Strings.enternewpassword;
  String get reenterpassword => Strings.reenterpassword;
  String get resetpasswordbutton => Strings.resetpasswordbutton;
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations();
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
