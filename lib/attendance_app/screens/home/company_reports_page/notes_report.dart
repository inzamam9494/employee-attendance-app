import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/widget/custom_widgets/const_radio_button.dart';
import '../../../const/const_height.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';
import '../../controllers/radio_controller.dart';

class NotesReport extends StatefulWidget {
  const NotesReport({super.key});

  @override
  State<NotesReport> createState() => _NotesReportState();
}

class _NotesReportState extends State<NotesReport> {

  List year = [
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
    '2024',
    '2025',
  ];

  RadioController radioController = Get.find();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    radioController.toClr();
    radioController.toClr2();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('sat-yam');
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text("Notes Report",
            style: AppTextStyles.kSmall10SemiBoldTextStyle),
      ),
      body: Container(
        margin: EdgeInsets.all(h10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Select Branch").marginAll(h10),
            //TODO All Branches
            ListTile(
              onTap: (){
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                          height: Get.height * 0.5,
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              Text("Select Company Branch", style: AppTextStyles.kCaption12WRegularTextStyle,).marginAll(h20),

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
                          )
                      );
                    });
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: AppColors.white60, width: 1),
                borderRadius: BorderRadius.circular(5),),
              title:  Obx(() => Text(radioController.branchTitle.value)),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
            ).paddingOnly(left: h10, right: h10, bottom: h15),

            //TODO
            const Text("Select Duration").marginOnly(left: h10, right: h10),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title:  Obx(() => Text("${radioController.durationTitle.value} ${radioController.selectedYear.value}")),
              onTap: (){
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                          height: Get.height * 0.5,
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              // SizedBox(height: h10,),
                              Text(
                                "Select Year & Month",
                                style: AppTextStyles
                                    .kCaption12WRegularTextStyle,
                              ).marginAll(h20),

                              //TODO Years
                              SizedBox(
                                height: h70,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: year.length,
                                    itemBuilder: (context,index){
                                      var yearText = year[index]!;
                                      int yearInt = int.parse(yearText);
                                      return Obx(() => Card(
                                          color: radioController.selectedYear == yearInt ?  AppColors.primary500 : AppColors.white80,
                                          child: TextButton(onPressed: (){
                                            radioController.yearPicker(yearInt);
                                          },
                                            child: Text(yearText, style: AppTextStyles.kSmall10SemiBoldTextStyleWhite,),)
                                      ));
                                    }),
                              ),

                              const Divider(),
                              Expanded(
                                child: ListView(
                                  children: [
                                    Obx(() => CustomRadioButton(
                                        options: [
                                          RadioOption(value: 1, title: "December"),
                                          RadioOption(value: 2, title: "November"),
                                          RadioOption(value: 3, title: "October"),
                                          RadioOption(value: 4, title: "September"),
                                          RadioOption(value: 5, title: "August"),
                                          RadioOption(value: 6, title: "July"),
                                          RadioOption(value: 7, title: "June"),
                                          RadioOption(value: 8, title: "May"),
                                          RadioOption(value: 9, title: "April"),
                                          RadioOption(value: 10, title: "March"),
                                          RadioOption(value: 11, title: "February"),
                                          RadioOption(value: 12, title: "January"),
                                        ],
                                        onChanged: (value, title){
                                          radioController.durationReport(value, title);
                                        },
                                        groupValue: radioController.durationValue.value)),
                                  ],
                                ),
                              ),
                              MyButton(onTap: (){
                                Get.back();
                              }, fontColor: AppColors.white, backgroundColor: AppColors.primary500,text: "Confirm",).paddingAll(h10)
                            ],
                          ));
                    });
              },
            ),

            const Text("Select Format").marginOnly(left: h10, right: h10),

            Obx(() =>CustomRadioButton(
                options: [
                  RadioOption(value: 1, title: "XLS"),
                ],
                onChanged: (value, title){
                  radioController.selectFormat(value);
                },
                groupValue: radioController.fileSelectValue.value)),

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
