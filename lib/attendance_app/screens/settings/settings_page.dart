import 'package:attendence/attendance_app/routes/routes_pages.dart';
import 'package:attendence/attendance_app/screens/settings/setting_widgets/setting_card.dart';
import 'package:attendence/attendance_app/screens/settings/setting_widgets/setting_feature_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widget/custom_widgets/help_card.dart';
import '../../const/const_height.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        title: Text("Settings", style: AppTextStyles.kSmall10SemiBoldTextStyle),

        //TODO help center
        actions: [
          IconButton(onPressed: (){
            Get.toNamed(ApplicationPages.notificationPage);
          }, icon: const Icon(Icons.notifications_none)),
          HelpCard(backgroundColor: AppColors.secondary700,
            textColor: AppColors.white,
            icon: Icons.help_outline,
            text: "Help",
            onTap: (){},)
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO Company Details
              SettingCard(
                onTap: (){
                  Get.toNamed(ApplicationPages.companyDetailsPage);
                },
                titleText: "Aara",
                descriptionText: "branch added",
                icon: Icons.person,
                icon2: Icons.edit,
              ),
              const Text("Suggest Features").marginOnly(left: h20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    settingFeatureCard(icon: Icons.stacked_bar_chart_sharp,text: "Staff App", onTap: (){},),
                    settingFeatureCard(icon: Icons.leave_bags_at_home_sharp,text: "Leave Requests", onTap: (){},),
                    settingFeatureCard(icon: Icons.celebration_rounded, text: "Certification Generator", onTap: (){},),
                    settingFeatureCard(icon: Icons.people, text: "Hire Staff", onTap: (){},),
                    settingFeatureCard(icon: Icons.message, text: "Greeting", onTap: (){},),
                  ],
                ),
              ),
              SettingCard(
                onTap: (){},
                titleText: "Company Code: 977CGK",
                descriptionText: "share this code with staff",
                icon: Icons.password,
                icon2: Icons.share,
              ),

              // TODO VIP membership
              SettingCard(
                onTap: (){
                  Get.toNamed(ApplicationPages.vipMembership);
                },
                titleText: "VIP Membership",
                descriptionText: "Track daily staff attendance and more",
                icon: Icons.interpreter_mode_sharp,
                icon2: Icons.keyboard_arrow_right,
              ),

              // TODO Wallet
              SettingCard(
                onTap: (){
                  Get.toNamed(ApplicationPages.walletPage);
                },
                titleText: "Wallet",
                descriptionText: "Add funds to pay employee",
                icon: Icons.wallet,
                icon2: Icons.keyboard_arrow_right,
              ),

              //TODO User and Permission
              SettingCard(
                onTap: (){
                  Get.toNamed(ApplicationPages.userAndPermissions);
                },
                titleText: "Users & Permission",
                descriptionText: "Staff and Managers",
                icon: Icons.people,
                icon2: Icons.keyboard_arrow_right,
              ),

              //TODO Attendance & Leaves
              SettingCard(
                onTap: (){
                 Get.toNamed(ApplicationPages.attendanceAndLeaves);
                },
                titleText: "Attendance & Leaves",
                descriptionText: "Attendance Modes, Leaves Holiday",
                icon: Icons.date_range_sharp,
                icon2: Icons.keyboard_arrow_right,
              ),

              // TODO Salary Setting
              SettingCard(
                onTap: (){
                  Get.toNamed(ApplicationPages.salarySettingsPage);
                },
                titleText: "Salary Settings",
                descriptionText: "Period, CTC Template",
                icon: Icons.currency_rupee,
                icon2: Icons.keyboard_arrow_right,
              ),

              //TODO Reports
              SettingCard(
                onTap: () {
                  Get.toNamed(ApplicationPages.companyReportPage);
                },
                titleText: "Reports",
                descriptionText: "Attendance, Salary, Notes",
                icon: Icons.analytics,
                icon2: Icons.keyboard_arrow_right,
              ),

              // TODO Business Contacts
              SettingCard(
                onTap: (){
                  Get.toNamed(ApplicationPages.businessContact);
                },
                titleText: "Business Contact",
                descriptionText: "Add business, Add Notes",
                icon: Icons.shopping_bag_outlined,
                icon2: Icons.keyboard_arrow_right,
              ),

              // TODO More Settings
              SettingCard(
                onTap: (){
                  Get.toNamed(ApplicationPages.moreSettings);
                },
                titleText: "More",
                descriptionText: "Access more settings",
                icon: Icons.settings,
                icon2: Icons.keyboard_arrow_right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
