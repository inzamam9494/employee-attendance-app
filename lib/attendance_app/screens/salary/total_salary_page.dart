import 'package:attendence/attendance_app/screens/home/home_widgets/month_widget.dart';
import 'package:attendence/attendance_app/screens/salary/list_of_total_earning.dart';
import 'package:attendence/attendance_app/screens/salary/salary_widgets/staff_info.dart';
import 'package:attendence/attendance_app/style/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../common/widget/custom_widgets/help_card.dart';
import '../../const/const_height.dart';
import '../../style/text_style.dart';
import '../home/home_widgets/my_drop_down_menu.dart';
import '../home/notification_page/notification_page.dart';

class TotalSalaryPage extends StatelessWidget {
   TotalSalaryPage({super.key});

  TotalSalary totalSalary = TotalSalary();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme:  const IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.white100,
        title: Text("Total Salary",
            style: AppTextStyles.kSmall10SemiBoldTextStyleWhite),

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              monthly(),
              Row(
                children: [
                  staffInfo(text: "Total Salary", num: "₹ 0.00").marginAll(h20),
                  staffInfo(text: "Staff Count", num: "0").marginAll(h20),
                ],
              ),

              // FIXME Total Earning list providing
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h10),
                  color: AppColors.success10
                ),
                child: ExpansionTile(
                  title: Text("Total Earnings", style: AppTextStyles.kCaption12WRegularTextStyle,),
                  subtitle: Text("₹ 0.00", style: AppTextStyles.kCaption12WRegularTextStyle.copyWith(color: AppColors.success40),),
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: totalSalary.totalEarning.length,
                        itemBuilder: (context, index){
                        var data = totalSalary.totalEarning[index];
                        return ListTile(
                          leading: Text(data['title'],style: AppTextStyles.kSmall10SemiBoldTextStyle,),
                          trailing: Text(data['Price'],style: AppTextStyles.kSmall10SemiBoldTextStyle,),
                        );
                        })
                  ],

                ),
              ).marginAll(h15),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h10),
                  color: AppColors.error10
                ),
                child: ExpansionTile(
                  title: Text("Total Earnings", style: AppTextStyles.kCaption12WRegularTextStyle,),
                  subtitle: Text("₹ 0.00", style: AppTextStyles.kCaption12WRegularTextStyle.copyWith(color: AppColors.error40),),
                  children: [
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: totalSalary.totalDeduction.length,
                        itemBuilder: (context, index){
                          var data = totalSalary.totalDeduction[index];
                          return ListTile(
                            leading: Text(data['title'],style: AppTextStyles.kSmall10SemiBoldTextStyle,),
                            trailing: Text(data['Price'],style: AppTextStyles.kSmall10SemiBoldTextStyle,),
                          );
                        })
                  ],

                ),
              ).marginAll(h15),
            ],
          ),
        ),
      ),
    );
  }
}
