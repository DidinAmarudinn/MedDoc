import 'package:flutter/material.dart';
import 'package:med/models/doctor_model.dart';
import 'package:med/ui/components/item_doctor_calendar.dart';
import 'package:med/utils/theme.dart';

class ContentCalenderWidget extends StatelessWidget {
  const ContentCalenderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: defaultMargin, vertical: defaultMargin),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: kbackgroundColor1,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(defaultMargin * 2),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kredColor,
                    ),
                  ),
                  SizedBox(
                    width: defaultMargin / 4,
                  ),
                  Text(
                    "Upcoming",
                    style: primaryTextStyle,
                  ),
                ],
              ),
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kblueColor,
                    ),
                  ),
                  SizedBox(
                    width: defaultMargin / 4,
                  ),
                  Text(
                    "Previous",
                    style: primaryTextStyle,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mockDoctorModel.length,
              itemBuilder: (context, index) {
                DoctorModel doctorModel = mockDoctorModel[index];
                return ItemDoctorCalendar(doctorModel: doctorModel);
              },
            ),
          )
        ],
      ),
    );
  }
}
