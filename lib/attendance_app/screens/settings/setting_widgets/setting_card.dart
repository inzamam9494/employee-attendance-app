import 'package:attendence/attendance_app/const/const_height.dart';
import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingCard extends StatelessWidget {
  final IconData? icon;
  final IconData? icon2;
  final String? titleText;
  final String? descriptionText;
  void Function()? onTap;
  bool? isShow = true;

  SettingCard(
      {super.key,
      this.icon,
      this.titleText,
      this.descriptionText,
      this.onTap,
      this.icon2,
      this.isShow});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          color: AppColors.white,
          margin: EdgeInsets.only(bottom: h10, top: h10),
          padding: EdgeInsets.all(h15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: AppColors.primary500,
                  ).marginAll(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titleText ?? '',
                        style: AppTextStyles.kSmall8SemiBoldTextStyle,
                      ),
                      Visibility(
                        visible: isShow??true,
                        child: Text(
                          descriptionText ?? '',
                          style: AppTextStyles.kSmall7RegularTextStyle,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Icon(
                icon2,
                color: AppColors.primary500,
              )
            ],
          ),
        ));
  }
}

// Widget settingCard(
//     {final IconData? icon,
//     final IconData? icon2,
//     final String? titleText,
//     final String? descriptionText,
//     void Function()? onTap}) {
//   return InkWell(
//       onTap: onTap,
//       child: Container(
//         color: AppColors.white,
//         margin: EdgeInsets.only(bottom: h10, top: h10),
//         padding: EdgeInsets.all(h15),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Icon(
//                   icon,
//                   color: AppColors.primary500,
//                 ).marginAll(10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       titleText ?? '',
//                       style: AppTextStyles.kSmall8SemiBoldTextStyle,
//                     ),
//                     Text(
//                       descriptionText ?? '',
//                       style: AppTextStyles.kSmall7RegularTextStyle,
//                     )
//                   ],
//                 ),
//               ],
//             ),
//             Icon(
//               icon2,
//               color: AppColors.primary500,
//             )
//           ],
//         ),
//       ));
// }
