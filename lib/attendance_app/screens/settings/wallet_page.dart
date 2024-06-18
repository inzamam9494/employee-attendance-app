import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/const_height.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
      backgroundColor: AppColors.white,
      title: Text("Wallet",
          style: AppTextStyles.kSmall10SemiBoldTextStyle),

    ),
      body: Center(
        child: MyButton(onTap: (){}, backgroundColor: AppColors.primary500, text: "Do KYC Verification", fontColor: AppColors.white,isShow: false).marginAll(h20),
      ),
    );
  }
}
