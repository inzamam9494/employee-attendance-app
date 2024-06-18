// import 'package:attendance/attendance_app/style/color.dart';
// import 'package:attendance/attendance_app/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../attendance_app/const/const_height.dart';
import '../attendance_app/const/const_width.dart';
import '../attendance_app/style/color.dart';
import '../attendance_app/style/text_style.dart';

class SaleManagementScreen extends StatelessWidget {
  SaleManagementScreen({super.key});

  final List management = [
    {'title': 'Sale', 'onTap': () {}},
    {'title': 'SALE MODIFY', 'onTap': () {}},
    {'title': 'PURCHASE', 'onTap': () {}},
    {'title': 'PURCHASE MODIFY', 'onTap': () {}},
    {'title': 'Receipt', 'onTap': () {}},
    {'title': 'Payment', 'onTap': () {}},
    {'title': 'Cash & Bank Book', 'onTap': () {}},
    {'title': 'Ledger A/c', 'onTap': () {}},
    {'title': 'Outstanding', 'onTap': () {}},
    {'title': 'Stock Status', 'onTap': () {}},
    {'title': 'Stock & Sales Analysis', 'onTap': () {}},
    {'title': 'Re-Order', 'onTap': () {}},
    {'title': 'Sales Book', 'onTap': () {}},
    {'title': 'Dispatch Summary', 'onTap': () {}},
    {'title': 'Bill Taging', 'onTap': () {}},
    {'title': 'Daily Analysis', 'onTap': () {}},
    {'title': 'Today Gross Profit', 'onTap': () {}},
    {'title': 'Exit', 'onTap': () {}},
  ];

  final List mostReport = [
    {'title': 'Exit', 'onTap': () {}},
    {'title': 'Bill', 'onTap': () {}},
    {'title': 'Change Company', 'onTap': () {}},
    {'title': 'Modify Bill', 'onTap': () {}},
    {'title': 'Current Stock', 'onTap': () {}},
    {'title': 'Challan', 'onTap': () {}},
  ];

  final List recentlyReport = [
    {'title': 'Change Company', 'onTap': () {}},
    {'title': 'Exit', 'onTap': () {}},
    {'title': 'Bill', 'onTap': () {}},
    {'title': 'All Ledgers', 'onTap': () {}},
    {'title': 'Current Stock', 'onTap': () {}},
    {'title': 'Modify Ledger', 'onTap': () {}},
    {'title': 'Counter Sale', 'onTap': () {}},
    {'title': 'Challan', 'onTap': () {}},
    {'title': 'Data Entry', 'onTap': () {}},
    {'title': 'Item List', 'onTap': () {}},
    {'title': 'New', 'onTap': () {}},
    {'title': 'Modify Bill', 'onTap': () {}},
    {'title': 'Temporary Purchase', 'onTap': () {}},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 500.w, // Adjust this based on your layout requirements
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary500)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Most viewed reports",style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.info40),),
                Expanded(
                  child: ListView.builder(
                    itemCount: mostReport.length,
                    itemBuilder: (context, index) {
                      return managementTextButton(
                        text: mostReport[index]['title'],
                        onTap: mostReport[index]['onTap'],
                      );
                    },
                  ),
                ),
                Text("Recently viewed report",style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.info40),),
                Expanded(
                  child: ListView.builder(
                    itemCount: recentlyReport.length,
                    itemBuilder: (context, index) {
                      return managementTextButton(
                        text: recentlyReport[index]['title'],
                        onTap: recentlyReport[index]['onTap'],
                      );
                    },
                  ),
                ),
              ],
            ).marginAll(h10),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.error40),
                  color: AppColors.warning20),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 550.w, // Adjust this based on your layout requirements
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.info60)),
            child: ListView.builder(
              itemCount: management.length,
              itemBuilder: (context, index) {
                return managementButton(
                  text: management[index]['title'],
                  onTap: management[index]['onTap'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget managementButton({String? text, void Function()? onTap}) {
    return InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(h2),
          height: h50,
          width: w20,
          decoration: BoxDecoration(
              color: AppColors.white50,
              border: Border.all(color: AppColors.white80)),
          child: Center(
              child: Text(
                text ?? '',
                style: AppTextStyles.kBody20SemiBoldTextStyle,
              )),
        ));
  }

  Widget managementTextButton({String? text, void Function()? onTap}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
            onPressed: onTap,
            child: Text(
              text ?? '',
              style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.white80),
            )),
      ],
    );
  }
}
