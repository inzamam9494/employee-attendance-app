import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';
import '../../../style/text_style.dart';

Widget totalCtcInfo({final String? text, final String? num, final Color? color}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text??"", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: color),),
      Text(num??"", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: color),)
    ],
  ).marginAll(h15);
}