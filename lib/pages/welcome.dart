import 'package:flutter/material.dart';
import 'package:super_z/constants.dart';
import 'package:super_z/pages/home.dart';
import 'package:super_z/widgets/custom_button.dart';
import 'package:super_z/widgets/custom_textfield.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  registerUser() {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => SimpleDialog(
        title: Center(
            child: Text(
          'Register Your Account',
          style: textStyle(20, weight: FontWeight.bold, color: black),
        )),
        contentPadding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        children: [
          Card(
            elevation: 0,
            child: Column(
              children: [
                CustomTextField(
                  hint: 'Name',
                ),
                CustomTextField(
                  hint: 'Email',
                ),
                CustomTextField(
                  hint: 'Password',
                  obscure: true,
                ),
                CustomButton(
                    buttonText: 'Sign Up',
                    padding: 12,
                    textSize: 20,
                    onPressed: () {
                      Navigator.pop(context);
                      navigate(context, HomePage());
                    }),
                GestureDetector(
                  child: Text('Already have an account'),
                  onTap: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Zipup',
                  style: TextStyle(fontSize: 100),
                ),
                Text(
                  'Join hands to solve problems',
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                CustomButton(
                  buttonText: "I'm in",
                  onPressed: () => navigate(context, HomePage()),
                ),
                SizedBox(height: 25),
                GestureDetector(
                  child: Text(
                    'New User',
                    style: textStyle(20,
                        color: greyBlack, weight: FontWeight.bold),
                  ),
                  onTap: () => registerUser(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
