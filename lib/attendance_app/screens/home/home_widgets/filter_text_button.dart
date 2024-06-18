import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/const_height.dart';

Widget filterTextButton({
  final String? text,
  final void Function()? onTap,
}){
  return TextButton(
    onPressed: onTap,
    child: Text(text??'', style: AppTextStyles.kSmall7RegularTextStyle,),
  ).marginOnly(left: h2);
}
