import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:med/models/doctor_model.dart';
import 'package:med/utils/theme.dart';

class CardDoctor extends StatelessWidget {
  final DoctorModel doctorModel;
  final bool isBlue;
  const CardDoctor({Key? key, required this.doctorModel, required this.isBlue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.all(defaultMargin / 3),
      margin: EdgeInsets.only(left: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultMargin),
        color: kbackgroundColor3,
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    doctorModel.imageName ?? "assets/images/image_doctor1.png",
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: isBlue ? kblueColor : kredColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Icon(
                        isBlue ? Icons.check : Icons.close,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: defaultMargin / 2,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorModel.name ?? "",
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: defaultMargin / 3,
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
                SizedBox(
                  height: defaultMargin / 3,
                ),
                Text(
                  doctorModel.spesialis ?? "",
                  style: secondaryTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
