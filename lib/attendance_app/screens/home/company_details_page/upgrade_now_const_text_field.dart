import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';

Widget upgradeNowConstTextField({
  String? myText,
  String? important,
}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(myText??'', style: AppTextStyles.kSmall8SemiBoldTextStyle,),
          Text(important??'', style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.error40),)
        ],
      ).marginOnly(left: h20, right: h20, bottom: h8),
      CupertinoTextField(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey10),
            borderRadius: BorderRadius.circular(h30)
        ),
      ).marginOnly(left: h20, right: h20, bottom: h20)
    ],
  );
}