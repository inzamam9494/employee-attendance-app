import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';

class HelpCard extends StatelessWidget {
  final void Function()? onTap;
  final Color? textColor;
  final Color? backgroundColor;
  final String? text;
  final IconData? icon;
  const HelpCard({super.key, this.textColor, this. backgroundColor, this.onTap, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: h8, left: h10),
      padding:  EdgeInsets.only(left: h8, right: h8, top: h3, bottom: h3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor
      ),
      child:  InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Text(text??'',style: TextStyle(color: textColor)),
            Icon(icon, color: textColor,).marginOnly(left: 5)
          ],
        ),
      ),
    );
  }
}
