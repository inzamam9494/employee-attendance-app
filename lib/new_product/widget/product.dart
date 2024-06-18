import 'package:attendence/attendance_app/screens/home/home_widgets/my_drop_down_menu.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../attendance_app/common/widget/const_text_field.dart';

Widget product({
  final String? text,
  final String? text1,
}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(text??'', style: AppTextStyles.kCaption12RegularTextStyle,),
      Text("  :  ", style: AppTextStyles.kCaption12RegularTextStyle),
      Text(text1??'', style: AppTextStyles.kCaption12RegularTextStyle)
    ],
  );
}

Widget searchProduct({
  final String? text
}){
  return Row(
    children: [
      Text(text??'', style: AppTextStyles.kCaption12RegularTextStyle,),
      Text(":", style: AppTextStyles.kCaption12RegularTextStyle),
      TextFormField()
    ],
  );
}