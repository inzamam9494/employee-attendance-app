import 'package:attendence/attendance_app/screens/home/company_reports_page/downloads.dart';
import 'package:attendence/attendance_app/screens/home/company_reports_page/reports.dart';
import 'package:flutter/material.dart';

import '../../../style/color.dart';
import '../../../style/text_style.dart';

class CompanyReportPage extends StatefulWidget {
  const CompanyReportPage({super.key});

  @override
  State<CompanyReportPage> createState() => _CompanyReportPageState();
}

class _CompanyReportPageState extends State<CompanyReportPage> with SingleTickerProviderStateMixin {
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
          backgroundColor: AppColors.white,
          title: Text("Company Reports",
              style: AppTextStyles.kSmall10SemiBoldTextStyle),
          bottom: TabBar(
              indicatorColor: AppColors.primary500,
              labelColor: AppColors.primary500,
              controller: tabController,
              tabs: const [
                Tab(text: "REPORTS",),
                Tab(text: "DOWNLOADS",),
              ]),

        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            Reports(),
            Downloads()
          ],
        )
    );
  }
}

