import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../const/const_height.dart';
import '../../../const/const_width.dart';

class HomeService extends StatelessWidget {
  final String? imageIcon;
  final String? titleText;
  final String? descriptionText;
  void Function()?onTap;
  HomeService({super.key, this.imageIcon, this.titleText, this.descriptionText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(imageIcon!, height: h50, width: w50,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titleText!, style: AppTextStyles.kSmall8SemiBoldTextStyle,),
                  Text(descriptionText!, style: AppTextStyles.kSmall7RegularTextStyle,)
                ],
              ),
            ],
          ),
          const Icon(Icons.keyboard_arrow_right)
        ],
      ),
    ));
  }
}
