import 'package:flutter/material.dart';
import 'package:med/models/doctor_model.dart';
import 'package:med/ui/components/custom_button.dart';
import 'package:med/utils/assets_path.dart';
import 'package:med/utils/theme.dart';

class DialogBook extends StatelessWidget {
  final DoctorModel doctorModel;

  final Function onPressed;
  const DialogBook(
      {Key? key, required this.doctorModel, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultMargin),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(doctorModel.imageName!),
                ),
              ),
              child: Image.asset(
                kimageStar,
                width: 20,
              ),
            ),
            SizedBox(
              height: defaultMargin / 2,
            ),
            Text(
              doctorModel.name ?? "",
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: defaultMargin,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 25,
                  color: ktextColor2,
                ),
                SizedBox(
                  width: defaultMargin / 3,
                ),
                Text(
                  doctorModel.location ?? "",
                  style: secondaryTextStyle.copyWith(
                    fontWeight: light,
                  ),
                )
              ],
            ),
            SizedBox(
              height: defaultMargin,
            ),
            CustomButtonWidget(
              buttonName: "Book Now",
              color: kbgbutton1,
              width: MediaQuery.of(context).size.width / 3,
              height: 50,
              onPressed: () {
                onPressed();
              },
            )
          ],
        ),
      ),
    );
  }
}
