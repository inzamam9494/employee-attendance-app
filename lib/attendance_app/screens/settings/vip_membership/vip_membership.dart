import 'package:attendence/attendance_app/screens/settings/vip_membership/vip_memebership_card.dart';
import 'package:flutter/material.dart';

import '../../../style/color.dart';
import '../../../style/text_style.dart';

class VipMembership extends StatelessWidget {
  const VipMembership({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme:  const IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.white100,
        title: Text("VIP Membership",
            style: AppTextStyles.kSmall10SemiBoldTextStyleWhite),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              vipMembershipCard(titleText: "SB Attendance", price: "₹ 25.00/ staff", descriptionText: "Selfie attendance, geofence attendance, leave management, attendance report and more"),
              vipMembershipCard(titleText: "SB Attendance", price: "₹ 25.00/ staff", isShow: false, descriptionText: "Selfie attendance, geofence attendance, leave management, attendance report and more"),
            ],
          ),
        ),
      ),
    );
  }
}
