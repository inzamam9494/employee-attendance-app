import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/const_height.dart';
import '../../../const/const_width.dart';
import '../../../style/color.dart';

Widget settingFeatureCard({
final IconData? icon,
final String? text,
final void Function()? onTap
}){
  return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(h5),
            border: Border.all(color: AppColors.white100)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(text!)
          ],
        ).paddingOnly(left: h20, right: w20, bottom: h20, top: h20),
      )).marginAll(h10);
}
