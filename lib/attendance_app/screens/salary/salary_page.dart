import 'package:attendence/attendance_app/routes/routes_pages.dart';
import 'package:attendence/attendance_app/screens/salary/pay_slips_salary_page.dart';
import 'package:attendence/attendance_app/screens/salary/payment_history_salary_page.dart';
import 'package:attendence/attendance_app/screens/salary/salary_widgets/salary_card.dart';
import 'package:attendence/attendance_app/screens/salary/salary_widgets/staff_info.dart';
import 'package:attendence/attendance_app/screens/salary/salary_widgets/total_ctc_info.dart';
import 'package:attendence/attendance_app/screens/salary/save_payment_salary_page.dart';
import 'package:attendence/attendance_app/style/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/widget/custom_widgets/const_my_button.dart';
import '../../common/widget/custom_widgets/help_card.dart';
import '../../const/const_height.dart';
import '../../style/text_style.dart';
import '../home/home_widgets/month_widget.dart';
import '../home/home_widgets/my_drop_down_menu.dart';

class SalaryPage extends StatelessWidget {
  const SalaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white100,
        title: MyDropDownMenu(options: const ["All Branches", "Aara", "Aara Noida"], onChanged: (value){},textColor: AppColors.white, dropdownColor: AppColors.white100),

        //TODO help center
        actions: [
          IconButton(
              onPressed: () {
               Get.toNamed(ApplicationPages.notificationPage);
              },
              icon: const Icon(
                Icons.notifications_none,
                color: AppColors.white,
              )),
          HelpCard(
            text: "Help",
            backgroundColor: AppColors.white,
            textColor: AppColors.white100,
            icon: Icons.help_outline,
            onTap: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO month
              monthly(),

              // TODO staff information
              Container(
                color: AppColors.white,
                padding: EdgeInsets.all(h20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    staffInfo(text: "Total Staff", num: "1"),
                    staffInfo(text: "New Joins", num: "0"),
                    staffInfo(text: "New Exits", num: "0"),
                  ],
                ).marginOnly(bottom: h5),
              ),

              // TODO Total CTC
              Container(
                margin: EdgeInsets.only(top: h6),
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total CTC",
                      style: AppTextStyles.kCaption12SemiBoldTextStyle,
                    ).marginOnly(left: h10, top: h30),
                    totalCtcInfo(text: "Monthly", num: "₹ 0.00 / month"),
                    const Divider(),
                    totalCtcInfo(text: "Daily", num: "₹ 0.00 / day"),
                    const Divider(),
                    totalCtcInfo(text: "Hourly", num: "₹ 0.00 / hour"),
                  ],
                ),
              ),

              // TODO Salary Calculation
              Container(
                margin: EdgeInsets.only(top: h6),
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Salary Calculations",
                      style: AppTextStyles.kCaption12SemiBoldTextStyle,
                    ).marginOnly(left: h10, top: h30),
                    salaryCard(
                      isShow: false,
                        color: AppColors.info10,
                        text: "Total Salary",
                        amount: "₹ 0.00",
                        buttonName2: "Show Details",
                        onTap2: () {
                          Get.toNamed(ApplicationPages.totalSalaryPage);
                        }),
                    salaryCard(
                        color: AppColors.primary400,
                        text: "Pending Salary",
                        amount: "₹ 0.00",
                        buttonName1: "Save Payment",
                        onTap1: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SavePaymentSalaryPage()));
                        },
                        buttonName2: "Pay Online",
                        onTap2: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Pay Online?", style: AppTextStyles.kCaption12SemiBoldTextStyle,),
                                  content: const Text("Now you can pay your staff directly to their bank account. Get Access now"),
                                  actions: [
                                    MyButton(onTap: (){
                                      //TODO KYC verification
                                    }, text: "Do KYC Verification",
                                      isShow: false,
                                      backgroundColor: AppColors.primary500,
                                      fontColor: AppColors.white,),
                                    MyButton(onTap: (){
                                      Get.back();
                                    }, text: "Cancel",
                                      isShow: false,
                                      fontColor: AppColors.white100,),
                                  ],
                                );
                              });
                        }),
                    salaryCard(
                        color: AppColors.success10,
                        text: "Paid Amount",
                        amount: "₹ 0.00",
                        buttonName1: "Pay Slips",
                        onTap1: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PaySlipsSalaryPage()));
                        },
                        buttonName2: "Payment History",
                        onTap2: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PaymentHistorySalaryPage()));
                        }),
                  ],
                ),
              ),

              // TODO Loan Amount
              Container(
                margin: EdgeInsets.only(top: h6),
                color: AppColors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Loan Amount",
                      style: AppTextStyles.kCaption12SemiBoldTextStyle,
                    ).marginOnly(left: h10, top: h30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        staffInfo(text: "Given", num: "₹ 0.00"),
                        staffInfo(text: "Received", num: "₹ 0.00"),
                      ],
                    ).marginAll(h30),
                    const Divider(),
                    Text(
                      "Pending Loan Amount  ₹ 0.00",
                      style: AppTextStyles.kCaption12SemiBoldTextStyle,
                    ).marginOnly(left: h10, top: h30, bottom: h30),
                  ],
                ),
              ),

              // TODO Salary Settings
              Container(
                margin: EdgeInsets.only(top: h6),
                color: AppColors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Salary Settings",
                          style: AppTextStyles.kCaption12SemiBoldTextStyle,
                        ).marginOnly(left: h10, top: h30),
                        IconButton(
                            onPressed: () {
                              Get.toNamed(ApplicationPages.salarySettingsPage);
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: AppColors.info40,
                            ))
                      ],
                    ),
                    totalCtcInfo(text: "Period type", num: "Calendar Month"),
                    const Divider(),
                    totalCtcInfo(
                        text: "Attendance Cycle", num: "1 to End of Month"),
                    const Divider(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
