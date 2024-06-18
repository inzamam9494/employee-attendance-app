import 'package:flutter/material.dart';

import '../../const/const_width.dart';
import '../../style/color.dart';

InputBorder constFieldsBorder({Color? borderColor}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(w5)),
    borderSide: BorderSide(color: borderColor ?? AppColors.white100, width: w1),
  );
}

InputBorder myDeco({Color? borderColor}) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primary500)
  );
}