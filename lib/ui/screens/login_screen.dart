import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med/ui/components/custom_button.dart';
import 'package:med/ui/screens/register_screen.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kbackgroundColor1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              kimageLogo,
              width: 250,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(defaultMargin),
            child: Column(
              children: [
                CustomButtonWidget(
                    buttonName: "Signin With Email",
                    onPressed: () {},
                    height: 50,
                    width: width,
                    isBlack: true,
                    color: kbgbutton3),
                SizedBox(
                  height: defaultMargin / 2,
                ),
                CustomButtonWidget(
                    buttonName: "Signin With Facebook",
                    onPressed: () {},
                    height: 50,
                    width: width,
                    color: kbgbutton2),
                SizedBox(
                  height: defaultMargin / 2,
                ),
                CustomButtonWidget(
                    buttonName: "Signin With Apple",
                    onPressed: () {},
                    height: 50,
                    width: width,
                    isBlack: true,
                    color: kbgbutton1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New member?",
                      style: primaryTextStyle,
                    ),
                    TextButton(
                      child: Text(
                        "Sign Up",
                        style: greenTextStyle,
                      ),
                      onPressed: () {
                        Get.to(() => RegisterScreen());
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
