import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/const_width.dart';

class ConstantContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radiusBorder;
  final double? borderWidth;
  final Color? borderColor;
  final Color? color;
  final Color? shadowColor;
  final Widget? child;
  final double? blurRadius;
  // final double? margin;
  final double? padding;
  final double? spreadRadius;
  final Offset? offset;
  final Gradient? gradient;
  final EdgeInsets? margin;

  const ConstantContainer({
    super.key,
    this.height,
    this.width,
    this.radiusBorder,
    this.borderWidth,
    this.color,
    this.child,
    this.borderColor,
    this.shadowColor,
    this.blurRadius,
    this.offset,
    this.spreadRadius,
    this.margin,
    this.gradient,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: margin??EdgeInsets.all(w2),
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: color,
                gradient: gradient,
                boxShadow: [
                  BoxShadow(
                    color: shadowColor ?? Colors.transparent,
                    blurRadius: blurRadius ?? 1.0,
                    spreadRadius: spreadRadius ?? 0,
                    offset: offset ?? Offset.zero,
                  ),
                ],
                borderRadius: BorderRadius.circular(radiusBorder ?? 0),
                border: Border.all(
                    color: borderColor ?? Colors.transparent,
                    width: borderWidth ?? 0)),
            child: Center(child: child))
        .paddingAll(padding ?? 0);
  }
}
