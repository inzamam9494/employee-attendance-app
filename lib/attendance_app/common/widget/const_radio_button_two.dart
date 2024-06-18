import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../style/color.dart';
import '../../style/text_style.dart';
import 'custom_widgets/const_radio_button.dart';

class CustomRadioButton2 extends StatelessWidget {
  final List<RadioOption> options;
  final Function(int value, String title) onChanged;
  final int groupValue;
  const CustomRadioButton2({super.key, required this.options, required this.onChanged, required this.groupValue,});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...options.map((option) =>
        // Obx(() =>
        RadioListTile(
          activeColor: AppColors.primary500,
          title: Text(option.title??'', style: AppTextStyles.kSmall8SemiBoldTextStyle),
          subtitle: Text(option.subtitle??''),
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

class RadioOption2 {
  final int? value;
  final String? title;
  final String? subtitle;
  // final int? groupValue;
  final IconData? icon;

  RadioOption2({
    this.value,
    this.title,
    this.subtitle,
    // this.groupValue
    this.icon,
  });
}