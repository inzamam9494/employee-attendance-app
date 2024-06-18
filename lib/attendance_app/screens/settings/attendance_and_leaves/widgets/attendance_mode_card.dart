import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../../const/const_height.dart';
import '../../../../style/text_style.dart';

Widget attendanceModeCard({
  final Color? color,
  final IconData? icon,
  final String? text,
  final void Function()? onTap,
  final Widget? suffixIcon,
}){
  return ListTile(
    onTap: onTap,
    leading: Icon(icon, color: color,),
    title: Text(text??'', style: AppTextStyles.kSmall10RegularTextStyle.copyWith(color: color)),
    trailing: suffixIcon?? Icon(Icons.arrow_forward_ios,color: color,)
  );
}