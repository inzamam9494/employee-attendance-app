import 'package:attendence/attendance_app/style/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/const_height.dart';
import '../../../const/const_width.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;
  final String? text;
  final Color? backgroundColor;
  final Color? fontColor;
  final Color? iconColor;
  bool? isShow = false;
   MyButton({super.key, required this.onTap, this.icon, this.text, this.backgroundColor, this.fontColor, this.iconColor, this.isShow});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h60,
      child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(backgroundColor)),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Text(text!, style: TextStyle(color: fontColor, fontWeight: FontWeight.w700),),
          SizedBox(width: w5,),
          Visibility(
            visible: isShow??true,
              child: Icon(icon, color: iconColor,))
                ],
              )),
    ).marginOnly(bottom: h10);
  }
}
