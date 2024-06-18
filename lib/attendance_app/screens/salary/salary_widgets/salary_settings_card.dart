import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';

Widget salarySettingsCard({
  void Function()? onTap,
  final String? month,
  final String? monthDays,
  final String? daysMonth,
  final Color? color
}){
  return InkWell(
    onTap: onTap,
    child: Container(
      height: h100,
      width: 200.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(h5),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(month??'', style: AppTextStyles.kSmall8SemiBoldTextStyle,),
              Text(monthDays??'', style: AppTextStyles.kSmall8RegularTextStyleGrey,),
              Text(daysMonth??'', style: AppTextStyles.kSmall8RegularTextStyleGrey,),
            ],
          ).marginAll(h5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.check_box, color: color,),
            ],
          ),
        ],
      ),
    ),
  );
}