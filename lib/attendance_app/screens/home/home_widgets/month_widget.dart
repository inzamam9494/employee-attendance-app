import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../style/color.dart';
import '../../../style/text_style.dart';

Widget monthly(){
  return Container(
    color: AppColors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_left,
              color: AppColors.primary500,
            )),
        Row(
          children: [
            IconButton(onPressed: (){},icon: const Icon(Icons.calendar_month)),
            Text(
              "May 2024",
              style: AppTextStyles.kSmall8RegularTextStyle,
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_circle_right_sharp)),
      ],
    ),
  );
}