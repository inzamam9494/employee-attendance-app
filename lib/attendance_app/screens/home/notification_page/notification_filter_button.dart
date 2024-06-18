import 'package:attendence/attendance_app/style/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../const/const_height.dart';

Widget notificationFilterButton({
  final String? text,
  final void Function()? onTap
}){
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(h8),
      margin: EdgeInsets.only(left: h10, right: h10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(h5),
          border: Border.all(color: AppColors.white100)
      ),
      child: Text(text??''),
    ),
  );
}
