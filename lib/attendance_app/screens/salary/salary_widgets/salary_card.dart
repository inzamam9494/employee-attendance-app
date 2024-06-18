import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/const_height.dart';

Widget salaryCard({
  final Color? color,
  final String? text,
  final String? amount,
  final String? buttonName1,
  final String? buttonName2,
  bool? isShow = true,
  void Function()? onTap1,
  void Function()? onTap2,
}){
  return Container(
    margin: EdgeInsets.all(h20),
    padding: EdgeInsets.all(h20),
    color: color,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text??'', style: AppTextStyles.kSmall10SemiBoldTextStyle,),
            Text(amount??'', style: AppTextStyles.kSmall10SemiBoldTextStyle,)
          ],
        ).marginOnly(bottom: h20),
        Row(
          children: [
            Visibility(
              visible: isShow??false,
              child: InkWell(
                onTap: onTap1,
                child: Container(
                  margin: EdgeInsets.all(h10),
                  padding: EdgeInsets.all(h15),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.white100),
                    borderRadius: BorderRadius.circular(h5)
                  ),
                  child: Center(child: Text(buttonName1??''),),
                ),
              ),
            ),
            InkWell(
              onTap: onTap2,
              child: Container(
                margin: EdgeInsets.all(h10),
                padding: EdgeInsets.all(h15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h5),
                  border: Border.all(color: AppColors.white100),
                ),
                child: Center(child: Text(buttonName2??''),),
              ),
            ),
          ],
        )
      ],
    ),
  );
}