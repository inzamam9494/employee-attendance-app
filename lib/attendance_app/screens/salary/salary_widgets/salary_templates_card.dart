import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';
import '../../../const/const_width.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';

Widget salaryTemplateCard({void Function()? onTap}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: h50,
        width: h50,
        decoration: BoxDecoration(
          color: AppColors.error20,
          borderRadius: BorderRadius.circular(h80)
        ),
        child: Center(child: Text("S",style: AppTextStyles.kBody15RegularTextStyle,))
      ),
      const Text(
        "Salary Box provided breakdown",
        overflow: TextOverflow.ellipsis, // Use ellipsis to indicate overflow
        maxLines: 2,
      ),
      PopupMenuButton(
        color: AppColors.white,
        itemBuilder: (BuildContext context) {
          return [
             PopupMenuItem(child: TextButton(onPressed: onTap, child: const Text("View"))),
          ];
        },
      ),
    ],
  ).marginAll(h10);
}