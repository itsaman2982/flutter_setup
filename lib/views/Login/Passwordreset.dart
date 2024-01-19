import 'package:firstapp/strings/app_colors.dart';
import 'package:firstapp/strings/app_images.dart';
import 'package:firstapp/strings/app_localizations.dart';
import 'package:firstapp/strings/custom_button.dart';
import 'package:firstapp/views/Home.dart';
import 'package:firstapp/views/Login/Login.dart';
import 'package:flutter/material.dart';

class Passwordrest extends StatefulWidget {
  @override
  _resetState createState() => _resetState();
}

class _resetState extends State<Passwordrest> {
  var newPassTextController = TextEditingController();
  var reenterPassTextController = TextEditingController();
  bool showPassword = false;
  bool showReenterPassword = false;

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
                  SizedBox(height: 30.0),
                  Text(
                    AppLocalizations.of(context).resetpassword,
                    style: TextStyle(
                      fontSize: 28,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    AppLocalizations.of(context).newpassword,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.gray1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Text(
                    AppLocalizations.of(context).enternewpassword,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    height: 48,
                    child: TextField(
                      controller: newPassTextController,
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
                  SizedBox(height: 24.0),
                  Text(
                    AppLocalizations.of(context).reenterpassword,
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    height: 48,
                    child: TextField(
                      controller: reenterPassTextController,
                      obscureText: !showReenterPassword,
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
                              showReenterPassword = !showReenterPassword;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Icon(
                              showReenterPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.textColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32.0),
                  Container(
                    child: CustomButton(
                      buttonText:
                          AppLocalizations.of(context).resetpasswordbutton,
                      onPressed: () {
                        String newPassword = newPassTextController.text;
                        String reenterPassword = reenterPassTextController.text;

                        print(
                            "New Password: $newPassword, Reenter Password: $reenterPassword");

                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 50.0),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
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
