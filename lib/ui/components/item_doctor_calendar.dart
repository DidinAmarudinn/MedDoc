import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:med/models/doctor_model.dart';
import 'package:med/utils/theme.dart';

class ItemDoctorCalendar extends StatelessWidget {
  final DoctorModel doctorModel;
  const ItemDoctorCalendar({Key? key, required this.doctorModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: defaultMargin / 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          bottomLeft: Radius.circular(35),
          topRight: Radius.circular(defaultMargin),
          bottomRight: Radius.circular(defaultMargin),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              doctorModel.imageName!,
              height: 100,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(defaultMargin / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          doctorModel.name ?? "",
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          doctorModel.spesialis ?? "",
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              doctorModel.rating.toString(),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            RatingBarIndicator(
                              rating: doctorModel.rating ?? 0.0,
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: kcategoriesColor,
                              ),
                              itemCount: 5,
                              itemSize: 15.0,
                              direction: Axis.horizontal,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 15,
                                color: ktextColor2,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Text(
                                  doctorModel.location ?? "",
                                  style: secondaryTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kcategoriesColor,
            ),
            child: Center(
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "20th Aug 2021",
                  style: secondaryTextStyle.copyWith(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: light,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
