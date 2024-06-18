import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_text_field_form.dart';
import 'package:attendence/attendance_app/style/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';

class LeaveRequest extends StatelessWidget {
  const LeaveRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          MyTextFieldForm(
            prefixIcon: Icon(Icons.search),
            hintText: "Search employee",
          ).marginAll(h20)
        ],
      ),
    );
  }
}
