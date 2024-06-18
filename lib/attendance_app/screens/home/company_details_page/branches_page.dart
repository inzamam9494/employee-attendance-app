import 'package:attendence/attendance_app/routes/routes_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../style/color.dart';
import '../../../style/text_style.dart';
import '../home_widgets/braches_card.dart';

class BranchesPage extends StatelessWidget {
  const BranchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.white,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.toNamed(ApplicationPages.addBranch);
        },
        backgroundColor: AppColors.primary500,
        label: Text("+ Add Branch",
            style: AppTextStyles.kSmall8SemiBoldTextStyleWhite),
      ),
      body: Container(
        child: Column(
          children: [
            branchCard()
          ],
        ),
      ),
    );
  }
}
