import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/screens/bottom_bar.dart';
import 'package:attendence/attendance_app/screens/home/home_widgets/my_drop_down_menu.dart';
import 'package:attendence/attendance_app/screens/salary/salary_templates.dart';
import 'package:attendence/attendance_app/screens/salary/salary_widgets/salary_settings_card.dart';
import 'package:attendence/attendance_app/style/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/const_height.dart';
import '../../style/text_style.dart';
import 'controllers/salary_controller.dart';

class SalarySettingsPage extends StatefulWidget {
  const SalarySettingsPage({super.key});

  @override
  State<SalarySettingsPage> createState() => _SalarySettingsPageState();
}

class _SalarySettingsPageState extends State<SalarySettingsPage> {

  final SalaryController salaryController = Get.put(SalaryController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.white100,
        title: Text("Salary Settings",
            style: AppTextStyles.kSmall10SemiBoldTextStyleWhite),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select period type', style: AppTextStyles.kSmall10SemiBoldTextStyle,).marginOnly(top: h50, bottom: h10, left: h12),

           //TODO using Get X
           Obx(()=>Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               salarySettingsCard( month: "Calender Month", daysMonth: "eg. Jan - 31 days", monthDays: "feb - 28 days",
                 color: salaryController.choose.value == true?AppColors.primary500:AppColors.white,
                 onTap: (){
                   salaryController.togglePeriodType();
                 },).marginAll(h10),
               salarySettingsCard( month: "Fixed Days Month",daysMonth: "30 days month", monthDays: "26 days month",color: salaryController.choose.value == false? AppColors.primary500:AppColors.white,
                 onTap: (){
                   salaryController.togglePeriodType();
                 },).marginAll(h5),
             ],
           ),),
              const Divider(),
              Text('Attendance Cycle', style: AppTextStyles.kSmall10SemiBoldTextStyle,).marginOnly(top: h30, bottom: h10, left: h12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Start Day",style: AppTextStyles.kSmall10SemiBoldTextStyle),
                      MyDropDownMenu(options: const ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28'],
                          onChanged: (value){})
                    ],
                  ),
                  Column(
                    children: [
                      Text("End Day",style: AppTextStyles.kSmall10SemiBoldTextStyle),
                      const Text("End of Month"),
                    ],
                  ),
                ],
              ).marginAll(h20),

              //TODO Manage Salary (CTC Template)
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SalaryTemplates()));
                },
                leading: const Icon(Icons.manage_accounts, color: AppColors.primary500,),
                title: Text('Manage Salary (CTC Template)', style: AppTextStyles.kSmall8SemiBoldTextStyle,),
                trailing: const Icon(Icons.keyboard_arrow_right_rounded, color: AppColors.primary500,),
              ),
              MyButton(onTap: (){}, backgroundColor: AppColors.primary500, fontColor: AppColors.white, text: "Save",isShow: false).marginOnly(top: h20,left: h5, right: h5)
            ],
          ),
        ),
      ),
    );
  }
}
