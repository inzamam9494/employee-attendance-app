import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import '../../../const/const_height.dart';

Widget staffInfo({final String? text, final String? num, final Color? color}){
  return Column(
    children: [
      Text(text??"", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: color), ),
      SizedBox(height: h30,),
      Text(num??"", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: color))
    ],
  );
}