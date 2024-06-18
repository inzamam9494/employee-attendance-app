import 'package:attendence/attendance_app/style/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget {
  final IconData? icon;
  final void Function()? onTap;
  final String? text;
  const HomeIcon({super.key, this.icon, this.onTap, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: onTap,
            icon: Icon(icon, color: AppColors.info60,)),
        Text(text!)
      ],
    );
  }
}
