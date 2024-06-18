import 'package:attendence/attendance_app/common/widget/custom_widgets/const_date_picker.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../common/widget/custom_widgets/const_radio_button.dart';
import '../../../../const/const_height.dart';
import '../../../../style/color.dart';
import '../../../../style/text_style.dart';
import '../../../controllers/radio_controller.dart';

class DailyAttendanceReport extends StatefulWidget {
  const DailyAttendanceReport({super.key});

  @override
  State<DailyAttendanceReport> createState() => _DailyAttendanceReportState();
}

class _DailyAttendanceReportState extends State<DailyAttendanceReport> {
  // TODO variables

  int _fileSelectedValue = 1;

  bool isShow = false;

  RadioController radioController = Get.find();

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text("Daily Attendance Report",
            style: AppTextStyles.kSmall10SemiBoldTextStyle),
      ),
      body: Container(
        margin: EdgeInsets.all(h10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Select Branch").marginAll(h10),
            //TODO Branches
            ListTile(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                          height: Get.height * 0.5,
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              // SizedBox(height: h10,),
                              Text(
                                "Select Company Branch",
                                style:
                                    AppTextStyles.kCaption12WRegularTextStyle,
                              ).marginAll(h20),

                              Obx(() => CustomRadioButton(options: [
                                RadioOption(value: 1, title: "All Branches"),
                                RadioOption(value: 2, title: "Aara Lucknow"),
                                RadioOption(value: 3, title: "Aara Noida"),
                              ],
                                  onChanged: (value, title){
                                    radioController.reportBranches(value, title);
                                  },
                                  groupValue: radioController.branchValue.value)),

                              const Spacer(),
                              MyButton(onTap: (){
                                Get.back();
                              }, text: 'Update Branch', backgroundColor: AppColors.primary500,fontColor: AppColors.white,).marginAll(h10)
                            ],
                          ));
                    });
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: AppColors.white60, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              title: const Text("All Branches"),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
            ).paddingOnly(left: h10, right: h10, bottom: h15),

            //TODO Duration
            const Text("Select Duration").marginOnly(left: h10, right: h10),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: Text("${DateFormat.d().format(selectedDate)} ${DateFormat.LLLL().format(selectedDate)} ${DateFormat.y().format(selectedDate)} "),
              onTap: () async {
                final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100)
                ); if(dateTime != null){
                  setState(() {
                    selectedDate = dateTime;
                  });
                }
              },
            ),

            const Text("Select Format").marginOnly(left: h10, right: h10),
            RadioListTile(
                activeColor: AppColors.primary500,
                title: Text(
                  "XLS",
                  style: AppTextStyles.kSmall8SemiBoldTextStyle,
                ),
                value: 1,
                groupValue: _fileSelectedValue,
                onChanged: (value) {
                  setState(() {
                    _fileSelectedValue = value!;
                  });
                }),

            //TODO Download Report Button
            MyButton(onTap: (){
              radioController.toClr();
              radioController.toClr2();
              Get.back();
            }, fontColor: AppColors.white, backgroundColor: AppColors.primary500,text: "Download Report",isShow: false,).paddingAll(h10)
          ],
        ),
      ),
    );
  }
}
