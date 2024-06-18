import 'package:attendence/attendance_app/screens/home/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../style/color.dart';
import '../../../style/text_style.dart';

class CustomRadioButton extends StatelessWidget {
  final List<RadioOption> options;
  final Function(int value, String title) onChanged;
  final int groupValue;
  bool? isShow = false;
  CustomRadioButton({super.key, required this.options, required this.onChanged, required this.groupValue, this.isShow});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...options.map((option) =>
        // Obx(() =>
            RadioListTile(
          activeColor: AppColors.primary500,
          title: Text(option.title??'', style: AppTextStyles.kSmall8SemiBoldTextStyle),
          // subtitle: Visibility(
          //   visible: isShow??true,
          //     child: Text(option.subtitle??'')),
          value: option.value,
          groupValue: groupValue,
          secondary: Icon(option.icon),
          onChanged: (value) {
            onChanged(value??0, option.title??'');
          },
        )).toList(),
      ],
    );
  }
}

class RadioOption {
  final int? value;
  final String? title;
  final String? subtitle;
  // final int? groupValue;
  final IconData? icon;

  RadioOption({
    this.value,
    this.title,
    this.subtitle,
    // this.groupValue
    this.icon,
  });
}
