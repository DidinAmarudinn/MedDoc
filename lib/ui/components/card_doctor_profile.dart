import 'package:flutter/material.dart';
import 'package:med/models/doctor_model.dart';
import 'package:med/utils/theme.dart';

class CardDoctorProfile extends StatelessWidget {
  final DoctorModel doctorModel;
  const CardDoctorProfile({Key? key, required this.doctorModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin / 2),
      margin: EdgeInsets.only(
          bottom: defaultMargin / 2, left: defaultMargin, right: defaultMargin),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defaultMargin),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              doctorModel.imageName!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: defaultMargin / 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: defaultMargin / 2, horizontal: defaultMargin / 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          doctorModel.name ?? "",
                          style:
                              primaryTextStyle.copyWith(fontWeight: semiBold),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: ktextColor2,
                            size: 15,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "10:10 PM",
                            style: secondaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: light,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          doctorModel.spesialis ?? "",
                          style: primaryTextStyle.copyWith(
                              fontWeight: medium, fontSize: 12),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: ktextColor2,
                            size: 15,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            doctorModel.location ?? "",
                            style: secondaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: light,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
