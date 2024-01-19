import 'package:firstapp/strings/app_localizations.dart';

import 'package:firstapp/views/Onboarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: OnboardingScreen(),
      localizationsDelegates: [
        AppLocalizationsDelegate(),
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English
        // Add more locales if needed
      ],
    );
  }
}

class GlobalWidgetsLocalizations {}

class GlobalMaterialLocalizations {}
