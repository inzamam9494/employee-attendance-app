import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';
import '../../../const/const_width.dart';

Widget branchCard(){
  return InkWell(
    onTap: (){},
    child: Row(
      children: [
        const Icon(Icons.location_on_rounded, size: 50),
        SizedBox(width: w10), // Add some space between the icon and the column
         Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
            children: [
              Text(
                "Aara",
                style: AppTextStyles.kBody15SemiBoldTextStyle), // Add styling if needed
              const Text(
                "C377, Sector5, Block C, Indira Nagar, Lucknow, Uttar Pradesh 226016, India",
                overflow: TextOverflow.ellipsis, // Use ellipsis to indicate overflow
                maxLines: 2,
              ),
            ],
          ),
        ),
        PopupMenuButton(
          color: AppColors.white,
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem(child: Text("Edit")),
              const PopupMenuItem(child: Text("Delete")),
            ];
          },
        ),
      ],
    )
  ).marginAll(h10);
}