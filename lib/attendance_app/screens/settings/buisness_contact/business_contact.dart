import 'package:flutter/material.dart';

import '../../../style/color.dart';
import '../../../style/text_style.dart';
import '../setting_widgets/setting_card.dart';

class BusinessContact extends StatelessWidget {
  const BusinessContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text("Business Directory", style: AppTextStyles.kCaption12WRegularTextStyle,),
      ),
      body: Column(
        children: [
          SettingCard(
            onTap: (){},
            icon: Icons.document_scanner_outlined,
            titleText: "Add Business",
            icon2: Icons.arrow_forward_ios,
            isShow: false,
          ),
          SettingCard(
            onTap: (){},
            icon: Icons.document_scanner_outlined,
            titleText: "Business Directory",
            icon2: Icons.arrow_forward_ios,
            isShow: false,
          ),
          SettingCard(
            onTap: (){},
            icon: Icons.leaderboard_outlined,
            titleText: "Business Notes Report",
            icon2: Icons.arrow_forward_ios,
            isShow: false,
          ),
        ],
      ),
    );
  }
}
