import 'package:firstapp/strings/app_colors.dart';
import 'package:firstapp/strings/app_images.dart';
import 'package:firstapp/strings/app_localizations.dart';
import 'package:firstapp/strings/custom_button.dart';
import 'package:firstapp/views/Login/Passwordreset.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var emailText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(25.0),
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
                    AppLocalizations.of(context).forgotPassword,
                    style: TextStyle(
                      fontSize: 28,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppLocalizations.of(context).passwordresetlink,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.gray1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    AppLocalizations.of(context).emailAddress,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w800,
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: AppColors.textColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    child: CustomButton(
                      buttonText: AppLocalizations.of(context).passwordbutton,
                      onPressed: () {
                        String uEmail = emailText.text.toString();
                        print("Email: $uEmail");
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Passwordrest(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 50),
                  TextButton(
                    onPressed: () {
                      // Navigate to create account screen
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
            Positioned(
              top: 50,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: AppColors.gray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: AppColors.textColor,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
