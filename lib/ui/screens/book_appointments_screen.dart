import 'package:flutter/material.dart';
import 'package:med/ui/components/custom_appbar.dart';
import 'package:med/ui/components/custom_button.dart';
import 'package:med/ui/components/custom_dropdown.dart';
import 'package:med/ui/components/custom_textfield_appointment.dart';
import 'package:med/utils/theme.dart';

class BookApointmentsScreen extends StatefulWidget {
  const BookApointmentsScreen({Key? key}) : super(key: key);

  @override
  _BookApointmentsScreenState createState() => _BookApointmentsScreenState();
}

class _BookApointmentsScreenState extends State<BookApointmentsScreen> {
  var _tControlerFullName = TextEditingController();
  var _tControlerEmail = TextEditingController();
  var _tControlerCN = TextEditingController();
  var selectedStatus;
  var selectedTime;
  var selectedBloodGroup;
  String? tgl;
  String? bulan;
  String? tahun;
  DateTime selectedDate = DateTime.now();
  Future<void> selectDate(BuildContext contex) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1950),
      lastDate: DateTime(2101),
    );
    if (!mounted) return;
    if (picked != null) {
      setState(() {
        tgl = picked.day.toString();
        bulan = picked.month.toString();
        tahun = picked.year.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _dob(String hint, Function onTap) {
      return Flexible(
        child: GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(hint, style: secondaryTextStyle),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 15,
                  color: ktextColor2.withOpacity(0.5),
                )
              ],
            ),
          ),
        ),
      );
    }

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Book An\nAppointment",
                style: greenTextStyle.copyWith(
                  fontSize: 28,
                  fontWeight: bold,
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
              CustomTextfieldAppointment(
                title: "Full Name",
                hintText: "Kim Jong Un",
                controller: _tControlerFullName,
              ),
              CustomTextfieldAppointment(
                title: "Email",
                hintText: "kim@example.com",
                controller: _tControlerEmail,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: defaultMargin / 2),
                child: Text(
                  "Date of Birth (DoB)",
                  style: primaryTextStyle,
                ),
              ),
              Row(
                children: [
                  _dob("Day", () {
                    selectDate(context);
                  }),
                  SizedBox(
                    width: defaultMargin / 2,
                  ),
                  _dob("Month", () {}),
                  SizedBox(
                    width: defaultMargin / 2,
                  ),
                  _dob("Year", () {})
                ],
              ),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: CustomDropdown(
                      hintDropdown: "Select",
                      label: "Gender",
                      onChanged: (value) {
                        setState(() {
                          selectedStatus = value;
                        });
                      },
                      list: ["Man", "Women"],
                      selected: selectedStatus,
                    ),
                  ),
                  SizedBox(width: defaultMargin),
                  Flexible(
                    flex: 3,
                    child: CustomDropdown(
                      hintDropdown: "Select D&T",
                      label: "Date & Time",
                      onChanged: (value) {
                        setState(() {
                          selectedTime = value;
                        });
                      },
                      list: ["Today", "Tommorow"],
                      selected: selectedTime,
                    ),
                  ),
                ],
              ),
              CustomTextfieldAppointment(
                title: "Contact Number",
                hintText: "08782345",
                controller: _tControlerCN,
              ),
              CustomDropdown(
                hintDropdown: "Select Blood Group",
                label: "Blood Group",
                onChanged: (value) {
                  setState(() {
                    selectedBloodGroup = value;
                  });
                },
                list: ["A", "B"],
                selected: selectedBloodGroup,
              ),
              SizedBox(
                height: defaultMargin,
              ),
              Center(
                child: CustomButtonWidget(
                  buttonName: "Book An Appointment",
                  onPressed: () {},
                  height: 50,
                  isBlack: true,
                  width: MediaQuery.of(context).size.width * 0.7,
                  color: kbackgroundColor1,
                ),
              ),
              SizedBox(
                height: defaultMargin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
