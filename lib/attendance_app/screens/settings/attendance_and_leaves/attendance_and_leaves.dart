import 'package:attendence/attendance_app/screens/settings/attendance_and_leaves/widgets/attendance_mode_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/const_height.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';
import '../setting_widgets/setting_card.dart';

class AttendanceAndLeaves extends StatefulWidget {
  const AttendanceAndLeaves({super.key});

  @override
  State<AttendanceAndLeaves> createState() => _AttendanceAndLeavesState();
}

bool isShow = false;
bool isShow1 = false;
bool isShow2 = false;
bool isShow3 = false;
bool isShow4 = false;
bool isShow5 = false;

class _AttendanceAndLeavesState extends State<AttendanceAndLeaves> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text("Attendance & Leaves", style: AppTextStyles.kCaption12WRegularTextStyle,)
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Attendance Modes", style: AppTextStyles.kSmall10SemiBoldTextStyle,).marginAll(h20),
            attendanceModeCard(
              icon: Icons.camera_front,
              text: "Selfie Attendance",
              suffixIcon: CupertinoSwitch(value: isShow, onChanged: (value){
                setState(() {
                  isShow = !isShow;
                });
              })
            ),
            attendanceModeCard(
              icon: Icons.face,
              text: "AI Face Recognition",
                suffixIcon: CupertinoSwitch(value: isShow1, onChanged: (value){
                  setState(() {
                    isShow1 = !isShow1;
                  });
                })
            ),
            attendanceModeCard(
                icon: Icons.multiline_chart,
                text: "Multiple Punch In",
                suffixIcon: CupertinoSwitch(value: isShow2, onChanged: (value){
                  setState(() {
                    isShow2 = !isShow2;
                  });
                })
            ),
            attendanceModeCard(
                icon: Icons.qr_code,
                text: "QR Attendance",
                suffixIcon: CupertinoSwitch(value: isShow3, onChanged: (value){
                  setState(() {
                    isShow3 = !isShow3;
                  });
                })
            ),
            attendanceModeCard(
              icon: Icons.fingerprint,
              text: "Biometric Devices"
            ),
            attendanceModeCard(
                icon: Icons.verified_user_rounded,
                text: "Attendance Kiosk"
            ),
            attendanceModeCard(
                icon: Icons.login,
                text: "Device Verification"
            ),

            const Divider(),

        Text("Leaves & Holidays", style: AppTextStyles.kSmall10SemiBoldTextStyle,).marginAll(h20),
            attendanceModeCard(
                icon: Icons.date_range_sharp,
                text: "Leave Requested"
            ),
            attendanceModeCard(
                icon: Icons.calendar_month,
                text: "Holiday List"
            ),
            attendanceModeCard(
                icon: Icons.date_range_sharp,
                text: "Custom Leaves"
            ),

            const Divider(),

            Text("Automation", style: AppTextStyles.kSmall10SemiBoldTextStyle,).marginAll(h20),
            attendanceModeCard(
                icon: Icons.star,
                text: "Auto-Present",
                suffixIcon: CupertinoSwitch(value: isShow4, onChanged: (value){
                  setState(() {
                    isShow4 = !isShow4;
                  });
                })
            ),
            attendanceModeCard(
                icon: Icons.star_half,
                text: "Auto Half Day"
            ),
            attendanceModeCard(
                icon: Icons.location_on,
                text: "Auto-Live Tracker",
                suffixIcon: CupertinoSwitch(value: isShow5, onChanged: (value){
                  setState(() {
                    isShow5 = !isShow5;
                  });
                })
            ),

            const Divider(),
            Text("Roster", style: AppTextStyles.kSmall10SemiBoldTextStyle,).marginAll(h20),
            attendanceModeCard(
                icon: Icons.lock_clock,
                text: "Company Shifts"
            ),
            attendanceModeCard(
                icon: Icons.person_add,
                text: "Edit Roster"
            ),
          ],
        ),
      ),
    );
  }
}
