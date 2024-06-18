import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_text_field_form.dart';
import 'package:attendence/attendance_app/screens/home/home_widgets/month_widget.dart';
import 'package:attendence/attendance_app/screens/salary/salary_widgets/staff_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/const_height.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';

class PaySlipsSalaryPage extends StatelessWidget {
  const PaySlipsSalaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.white100,
        title: Text("Pay Slips",
            style: AppTextStyles.kSmall10SemiBoldTextStyleWhite),
      ),
      body: Column(
        children: [
          monthly(),
          staffInfo(text: "Paid Amount", num: "₹ 0.00").marginOnly(top: h20, bottom: h20),
          const MyTextFieldForm(
            hintText: "Search employee",
            prefixIcon: Icon(Icons.search),
          ).marginAll(h20),
          const Divider(),
          const Spacer(),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButton(onTap: (){
                //TODO save payment
              }, text: "Save Payment",
                isShow: false,
              backgroundColor: AppColors.white50,
              fontColor: AppColors.white,),
              MyButton(onTap: (){
                //TODO save payment
              }, text: "Pay Online",
                isShow: false,
              backgroundColor: AppColors.primary500,
              fontColor: AppColors.white,),
            ],
          ).marginAll(h20)
        ],
      ),
    );
  }
}
