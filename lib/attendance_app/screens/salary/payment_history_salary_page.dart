import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_text_field_form.dart';
import 'package:attendence/attendance_app/screens/home/home_widgets/month_widget.dart';
import 'package:attendence/attendance_app/screens/salary/salary_widgets/staff_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widget/custom_widgets/help_card.dart';
import '../../const/const_height.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';

class PaymentHistorySalaryPage extends StatelessWidget {
  const PaymentHistorySalaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.white100,
        title: Text("Payment History",
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
        ],
      ),
    );
  }
}
