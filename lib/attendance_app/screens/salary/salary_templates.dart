import 'package:attendence/attendance_app/screens/salary/salary_widgets/salary_templates_card.dart';
import 'package:flutter/material.dart';

import '../../style/color.dart';
import '../../style/text_style.dart';
import 'create_template.dart';

class SalaryTemplates extends StatelessWidget {
  const SalaryTemplates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateTemplate()));
          },
          backgroundColor: AppColors.primary500,
          label: Text("+ Create Template",
              style: AppTextStyles.kSmall8SemiBoldTextStyleWhite),
        ),
        backgroundColor: AppColors.white,
        appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.white),
    backgroundColor: AppColors.white100,
    title: Text("Salary Template",
    style: AppTextStyles.kSmall10SemiBoldTextStyleWhite),
    ),
    body: Container(
      child: Column(
        children: [
          salaryTemplateCard(onTap: (){})
        ],
      ),
    ));
  }
}
