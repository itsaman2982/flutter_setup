import 'package:firstapp/strings/app_colors.dart';
import 'package:firstapp/strings/app_images.dart';
import 'package:firstapp/strings/app_localizations.dart';
import 'package:firstapp/strings/custom_button.dart';
import 'package:firstapp/views/Login/Forgotpassword.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  bool showPassword = false;
  bool keepSignedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppImages.logopng,
                  width: 180,
                  height: 180,
                ),
              ),
              SizedBox(height: 30),
              Text(
                AppLocalizations.of(context).login,
                style: TextStyle(
                  fontSize: 28,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                AppLocalizations.of(context).welcomeBack,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.gray1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context).emailAddress,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 48,
                    child: TextField(
                      controller: emailText,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.backgroundColor,
                        labelText: AppLocalizations.of(context).helloExample,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: AppColors.textColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context).password,
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          AppLocalizations.of(context).forgotPassword,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 48,
                    child: TextField(
                      controller: passText,
                      obscureText: !showPassword,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.backgroundColor,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: AppColors.textColor.withOpacity(0.5),
                          ),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              GestureDetector(
                onTap: () {
                  setState(() {
                    keepSignedIn = !keepSignedIn;
                  });
                },
                child: Row(
                  children: [
                    Checkbox(
                      value: keepSignedIn,
                      onChanged: (value) {
                        setState(() {
                          keepSignedIn = value ?? false;
                        });
                      },
                      checkColor: AppColors.backgroundColor,
                      activeColor: AppColors.primaryColor,
                    ),
                    Text(
                      AppLocalizations.of(context).keepMeSignedIn,
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14),
              Container(
                child: CustomButton(
                  buttonText: AppLocalizations.of(context).loginButton,
                  onPressed: () {
                    String uEmail = emailText.text.toString();
                    String uPass = passText.text;

                    print("Email: $uEmail, pass: $uPass");

                    // Implement your navigation logic
                  },
                ),
              ),
              SizedBox(height: 50),
              TextButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => Forgotpassword(),
                  //   ),
                  // );
                },
                child: Text(
                  AppLocalizations.of(context).createAccount,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
