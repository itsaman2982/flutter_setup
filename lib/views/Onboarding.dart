import 'package:firstapp/strings/app_colors.dart';
import 'package:firstapp/strings/app_images.dart';
import 'package:firstapp/strings/app_localizations.dart';
import 'package:firstapp/views/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> _onboardingTexts = [
    'Welcome to the app',
    'We\'re excited to help you get started.',
    'Swipe to explore more features.',
  ];

  final List<String> _swipeImages = [
    AppImages.onboardingsvg,
    AppImages.onboardingsvg,
    AppImages.onboardingsvg,
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 64),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.8,
                child: PageView.builder(
                  itemCount: _swipeImages.length,
                  itemBuilder: (context, index) {
                    return SvgPicture.asset(
                      _swipeImages[index],
                      fit: BoxFit.contain,
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
              SizedBox(height: 32),
              Column(
                children: [
                  Text(
                    _onboardingTexts[_currentIndex],
                    style: TextStyle(
                      fontSize: 28,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22.0),
                    child: Text(
                      'We\'re excited to help you book and manage your service appointments with ease.',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textgray),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _swipeImages.length,
                  (index) => Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? AppColors.primaryColor
                          : AppColors.gray,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 55,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.linear2, AppColors.linear1],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 0,
                  ),
                  child: Text(
                    AppLocalizations.of(context).login,
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 48),
              TextButton(
                onPressed: () {
                  print('Please login!!');
                },
                child: Text(
                  AppLocalizations.of(context).createAccount,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




// sdfcghjkl;kjhgrewafesdghkjl;jrtewetgdhk.jlkhrtegh