import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/material.dart';

import '../setting_widgets/setting_card.dart';

class UserAndPermissions extends StatelessWidget {
  const UserAndPermissions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text("User & Permissions", style: AppTextStyles.kCaption12WRegularTextStyle,),
      ),
      body: Column(
        children: [
          SettingCard(
            onTap: (){},
            icon: Icons.people_alt_outlined,
            titleText: "Admin",
            icon2: Icons.arrow_forward_ios,
            isShow: false,
          ),
          SettingCard(
            onTap: (){},
            icon: Icons.people_alt_outlined,
            titleText: "Employee & Managers",
            icon2: Icons.arrow_forward_ios,
            isShow: false,
          ),
          SettingCard(
            onTap: (){},
            icon: Icons.people_alt_outlined,
            titleText: "Chartered Accountant",
            icon2: Icons.arrow_forward_ios,
            isShow: false,
          ),
        ],
      ),
    );
  }
}
