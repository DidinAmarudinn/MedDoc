import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med/ui/components/custom_button.dart';
import 'package:med/ui/components/custom_textfield.dart';
import 'package:med/ui/screens/login_screen.dart';
import 'package:med/ui/screens/wellcome_screen.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _tFullname = TextEditingController();
  var _tEmail = TextEditingController();
  var _tPassword = TextEditingController();
  bool _checkbox = false;
  var _tConfirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kbackgroundColor1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                kimageLogo,
                width: 250,
              ),
            ),
            Container(
              width: width * 0.6,
              child: Text(
                "Book & manage your medical appointments with your local practitioner.",
                style: subtitleTextStyle.copyWith(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: defaultMargin * 2,
            ),
            CustomTextField(label: "Full Name", controller: _tFullname),
            SizedBox(
              height: defaultMargin / 2,
            ),
            CustomTextField(label: "Email Address", controller: _tEmail),
            SizedBox(
              height: defaultMargin / 2,
            ),
            CustomTextField(label: "Password", controller: _tPassword),
            SizedBox(
              height: defaultMargin / 2,
            ),
            CustomTextField(
                label: "Confirm Password", controller: _tConfirmPassword),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = !_checkbox;
                    });
                  },
                ),
                Text(
                  "I Read and Accept the Terms and conditions",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultMargin / 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: CustomButtonWidget(
                  buttonName: "Sign Up",
                  onPressed: () {
                    Get.to(() => WellcomeScreen());
                  },
                  height: 50,
                  width: width,
                  color: kbgbutton4),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already a member?",
                  style: primaryTextStyle,
                ),
                TextButton(
                  child: Text(
                    "Sign In",
                    style: greenTextStyle,
                  ),
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
