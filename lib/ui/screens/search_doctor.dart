import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med/models/doctor_model.dart';
import 'package:med/ui/components/custom_appbar.dart';
import 'package:med/ui/screens/book_appointments_screen.dart';
import 'package:med/ui/widget/dialog_book.dart';
import 'package:med/utils/theme.dart';

class SearchDoctorScreen extends StatefulWidget {
  const SearchDoctorScreen({Key? key}) : super(key: key);

  @override
  _SearchDoctorScreenState createState() => _SearchDoctorScreenState();
}

class _SearchDoctorScreenState extends State<SearchDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemWidth = size.width / 2;
    Future<void> showDialogBook(DoctorModel doctorModel) async {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return DialogBook(
              doctorModel: doctorModel,
              onPressed: () {
                Get.to(() => BookApointmentsScreen());
              });
        },
      );
    }

    _header() {
      return Column(
        children: [
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin / 2),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: defaultMargin / 3),
            decoration: BoxDecoration(
              color: kbackgroundColor3,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(children: [
              Icon(
                Icons.search_outlined,
                color: kbgbutton2,
              ),
              SizedBox(width: defaultMargin / 3),
              Text(
                "Macquarie Hospital",
                style: secondaryTextStyle,
              ),
            ]),
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: ktextColor2,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "List of available doctors",
                style: secondaryTextStyle,
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: ktextColor2,
                ),
              ),
            ],
          )
        ],
      );
    }

    _content() {
      return GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin / 2),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: defaultMargin,
            crossAxisSpacing: defaultMargin / 2,
            childAspectRatio: (itemWidth / itemWidth),
          ),
          itemCount: mockDoctorModel.length,
          itemBuilder: (context, index) {
            DoctorModel data = mockDoctorModel[index];
            return GestureDetector(
              onTap: () {
                showDialogBook(data);
              },
              child: Container(
                padding: EdgeInsets.all(defaultMargin / 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        data.name ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Md",
                          style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                        Container(
                          height: itemWidth / 5,
                          width: itemWidth / 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                data.imageName!,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return Scaffold(
      backgroundColor: kbackgroundColor2,
      appBar: PreferredSize(
        child: CustomAppbar(
          isDefault: true,
          color: kbackgroundColor2,
          title: "Explore",
          onPressed: () {},
        ),
        preferredSize: Size.fromHeight(56),
      ),
      body: Column(
        children: [
          _header(),
          SizedBox(
            height: defaultMargin,
          ),
          Expanded(
            child: _content(),
          ),
        ],
      ),
    );
  }
}
