import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med/ui/components/custom_appbar.dart';
import 'package:med/ui/screens/search_doctor.dart';
import 'package:med/utils/theme.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor2,
      appBar: PreferredSize(
        child: CustomAppbar(
          color: kbackgroundColor2,
          title: "",
          onPressed: () {},
          isDefault: true,
        ),
        preferredSize: Size.fromHeight(56),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Explore Your Doctors&\nHospitals",
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: defaultMargin * 2,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SearchDoctorScreen());
              },
              child: Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin / 3),
                decoration: BoxDecoration(
                  color: kbackgroundColor3,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Icon(
                    Icons.search_outlined,
                    color: kbgbutton2,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: defaultMargin * 2,
            ),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
