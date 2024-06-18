import 'package:attendence/attendance_app/const/const_height.dart';
import 'package:attendence/attendance_app/routes/routes_pages.dart';
import 'package:attendence/attendance_app/screens/home/company_reports_page/attendance/detail_attendance_report.dart';
import 'package:attendence/attendance_app/screens/home/company_reports_page/attendance/overtime_report.dart';
import 'package:attendence/attendance_app/screens/home/company_reports_page/payroll/loan_reports.dart';
import 'package:attendence/attendance_app/screens/home/company_reports_page/payroll/pay_slips.dart';
import 'package:attendence/attendance_app/screens/home/company_reports_page/payroll/provident_fund_challan_report.dart';
import 'package:attendence/attendance_app/screens/home/company_reports_page/payroll/salary_sheet.dart';
import 'package:attendence/attendance_app/screens/home/company_reports_page/payroll/tax_deducted_at_source_report.dart';
import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'attendance/attendance_summary_report.dart';
import 'attendance/daily_attendance_report.dart';
import 'attendance/late_arrival_report.dart';
import 'attendance/leave_report.dart';
import 'employee_list_report.dart';
import 'notes_report.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //TODO Attendance
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              collapsedIconColor: AppColors.primary500,
              iconColor: AppColors.primary500,
              leading: const Icon(Icons.date_range_sharp, color: AppColors.primary500,),
                title: Text("Attendance", style: AppTextStyles.kSmall10SemiBoldTextStyle.copyWith(color: AppColors.white100),),
              children: [
                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.attendanceSummaryReport);
                }, child: Text("Attendance Summary Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),
                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.detailAttendanceReport);
                }, child: Text("Detail Attendance Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),
                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.dailyAttendanceReport);
                }, child: Text("Daily Attendance Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),
                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.lateArrivalReport);
                }, child: Text("Late Arrival Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),
                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.leaveReport);
                }, child: Text("Leave Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),
                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.overtimeReport);
                }, child: Text("Overtime Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),
              ],
            ).marginAll(5),

            //TODO Payroll
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              leading: const Icon(Icons.currency_rupee, color: AppColors.primary500,),
                collapsedIconColor: AppColors.primary500,
                iconColor: AppColors.primary500,
                title: Text("Payroll", style: AppTextStyles.kSmall10SemiBoldTextStyle.copyWith(color: AppColors.white100),),
              children: [
                TextButton(onPressed: (){
                 Get.toNamed(ApplicationPages.paySlips);
                }, child: Text("Pay Slips", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),

                TextButton(onPressed: (){
                 Get.toNamed(ApplicationPages.salarySheet);
                }, child: Text("Salary Sheet", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),

                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.loanReport);
                }, child: Text("Loan Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),

                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.providentFundChallanReport);
                }, child: Text("Provident Fund Challan Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),

                TextButton(onPressed: (){
                  Get.toNamed(ApplicationPages.taxDeductedAtSourceReport);
                }, child: Text("Tax Deducted at Source Report", style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(color: AppColors.white100),)),
              ],
            ).marginAll(h5),

            //TODO Notes
            ListTile(
              onTap: (){
                Get.toNamed(ApplicationPages.notesReport);
              },
              iconColor: AppColors.primary500,
              title: Text("Notes", style: AppTextStyles.kSmall10SemiBoldTextStyle.copyWith(color: AppColors.white100),),
              leading: const Icon(Icons.note_alt_sharp),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ).marginAll(5),

            // TODO EmployList
            ListTile(
              onTap: (){
                Get.toNamed(ApplicationPages.employeeListReport);
              },
              iconColor: AppColors.primary500,
              title: Text("Employee List", style: AppTextStyles.kSmall10SemiBoldTextStyle.copyWith(color: AppColors.white100),),
              leading: const Icon(Icons.people_alt_outlined),
              trailing: const Icon(Icons.keyboard_arrow_right),
            ).marginAll(5),
          ],
        ),
      ),
    );
  }
}
