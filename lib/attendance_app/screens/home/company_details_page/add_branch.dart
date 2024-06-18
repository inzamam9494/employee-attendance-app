import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_text_field_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';

class AddBranch extends StatelessWidget {
  const AddBranch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: AppColors.white,),
        ),
        backgroundColor: AppColors.white100,
        title: Text("Add Branch",
            style: AppTextStyles.kSmall10SemiBoldTextStyleWhite),
      ),
      body: Column(
        children: [
          Text("Add New Branch",
              style: AppTextStyles.kBody17RegularTextStyle).marginAll(h20),
          const MyTextFieldForm(
            hintText: "Branch Name",
          ).marginOnly(left: h20, right: h20),
          const Spacer(),
          SizedBox(
              height: h60,
              child: MyButton(onTap: (){
              //  FIXME Add new Branch
              },
                icon: Icons.arrow_circle_right_sharp,
                iconColor: AppColors.white,
                backgroundColor: AppColors.primary500,
                fontColor: AppColors.white,
                text: "Continue",)).marginOnly(left: h10, right: h10)
        ],
      )
    );
  }
}
