import 'package:attendence/attendance_app/screens/bottom_bar.dart';
import 'package:attendence/attendance_app/screens/home/company_details_page/branches_page.dart';
import 'package:attendence/attendance_app/screens/home/company_details_page/company_page.dart';
import 'package:attendence/attendance_app/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../../style/color.dart';
import '../../../style/text_style.dart';

class CompanyDetailsPage extends StatefulWidget {
  const CompanyDetailsPage({super.key});

  @override
  State<CompanyDetailsPage> createState() => _CompanyDetailsPageState();
}

class _CompanyDetailsPageState extends State<CompanyDetailsPage> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.white100,
        title: Text("Company Details",
            style: AppTextStyles.kSmall10SemiBoldTextStyleWhite),

        bottom: TabBar(
          indicatorColor: AppColors.white,
            labelColor: AppColors.white,
            controller: tabController,
            tabs: const [
          Tab(text: "COMPANY",),
          Tab(text: "BRANCHES",),
        ]),

      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          CompanyPage(),
          BranchesPage()
        ],
      )
    );
  }
}
