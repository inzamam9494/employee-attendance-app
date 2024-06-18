import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';

Widget vipMembershipCard({
  final String? titleText,
  final String? price,
  final String? descriptionText,
  bool? isShow = true
}){
  return Container(
    margin: EdgeInsets.all(h15),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.white40),
      borderRadius: BorderRadius.circular(h10)
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(titleText??'', style: AppTextStyles.kSmall10RegularTextStyle).marginOnly(top: h15, bottom: h15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(price??'',style: AppTextStyles.kSmall8SemiBoldTextStyle),
                Text("per month",style: AppTextStyles.kSmall6RegularTextStyle)
              ],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary500),
                  borderRadius: BorderRadius.circular(h5)
                ),
                child: Text('+ Add', style: AppTextStyles.kSmall8RegularTextStyle.copyWith(color: AppColors.primary500)).marginOnly(left:h5, right: h5, bottom: h2, top: h2),
              ),
            )
          ],
        ),
        Text(descriptionText??'', style: AppTextStyles.kSmall7RegularTextStyle).marginAll(h10),
        Visibility(
          visible: isShow??false,
            child: TextButton(onPressed: (){},
                child: Text('Explore Feature',
                  style: AppTextStyles.kSmall8RegularTextStyle.copyWith(color: AppColors.primary500),)))
      ],
    ),
  );
}