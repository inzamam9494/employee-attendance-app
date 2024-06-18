import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/screens/home/company_details_page/upgrade_now_const_text_field.dart';
import 'package:attendence/attendance_app/screens/home/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';

class UpgradeNow extends StatelessWidget {
  UpgradeNow({super.key});

  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text("Upgrade Now",
        style: AppTextStyles.kSmall10SemiBoldTextStyle)),
        body: SingleChildScrollView(
          child: Column(
            children: [
              upgradeNowConstTextField(myText: "Your Company Code", important: "*"),
              upgradeNowConstTextField(myText: "Your Name", important: "*"),
              upgradeNowConstTextField(myText: "Your Phone Number"),
              upgradeNowConstTextField(myText: "Number of Employee"),
              Text("What feature are you interested in?", style: AppTextStyles.kSmall8SemiBoldTextStyle,).marginOnly(left: h20, right: h20, bottom: h8),

              Row(
                children: [
                  Obx(() => CupertinoCheckbox(
                      value: homeController.isChecked.value,
                      onChanged: (value){
                        homeController.isChecked(value!);
                      })),
                  const Text("Attendance")
                ],
              ),
              Row(
                children: [
                  Obx(() => CupertinoCheckbox(
                      value: homeController.isChecked1.value,
                      onChanged: (value){
                        homeController.isChecked1(value!);
                      })),
                  const Text("Payroll")
                ],
              ),
              Row(
                children: [
                  Obx(() => CupertinoCheckbox(
                      value: homeController.isChecked2.value,
                      onChanged: (value){
                        homeController.isChecked2(value!);
                      })),
                  const Text("Location Tracking")
                ],
              ),
              Row(
                children: [
                  Obx(() => CupertinoCheckbox(
                      value: homeController.isChecked3.value,
                      onChanged: (value){
                        homeController.isChecked3(value!);
                      })),
                  const Text("Online Salary Payout")
                ],
              ),
              Row(
                children: [
                  Obx(() => CupertinoCheckbox(
                      value: homeController.isChecked4.value,
                      onChanged: (value){
                        homeController.isChecked4(value!);
                      })),
                  const Text("Biometric Device")
                ],
              ),


              MyButton(onTap: (){}, fontColor: AppColors.white,
                backgroundColor: AppColors.primary500,
                text: "Call back",).marginOnly(top: h40,left: h5, right: h5)
            ],
          ),
        ),
    );
  }
}
