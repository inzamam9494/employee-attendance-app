import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_text_field_form.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/const_radio_button.dart';
import 'package:attendence/attendance_app/screens/controllers/radio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widget/custom_widgets/help_card.dart';
import '../../../const/const_height.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';
import 'notification_filter_button.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isChecked = false;

  RadioController radioController = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    "New Broadcast",
                    style: AppTextStyles.kCaption12SemiBoldTextStyle,
                  ),
                  content: const Text(
                      "Send broadcast message to all employee"),
                  actions: [
                    MyButton(
                      onTap: () {
                        //TODO Upgrade Now
                      },
                      text: "Send Broadcast",
                      backgroundColor: AppColors.primary500,
                      fontColor: AppColors.white,
                    ),
                    MyButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      text: "Close",
                      fontColor: AppColors.white100,
                    ),
                  ],
                );
              });
        },
        backgroundColor: AppColors.primary500,
        label: Text("Send Announcement",
            style: AppTextStyles.kSmall8SemiBoldTextStyleWhite),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text("Notifications",
            style: AppTextStyles.kSmall10SemiBoldTextStyle),

        //TODO help center
        actions: [
          HelpCard(
            backgroundColor: AppColors.secondary700,
            textColor: AppColors.white,
            icon: Icons.help_outline,
            text: "Help",
            onTap: () {},
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Obx(() => Row(
              children: [
                const Text("Filters"),
                notificationFilterButton(
                  text: radioController.selectedTitle2.value,
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                              height: Get.height * 0.5,
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  Text(
                                    "Select Notification Type",
                                    style: AppTextStyles
                                        .kCaption12WRegularTextStyle,
                                  ).marginAll(h20),
                                  const Divider(),
                                  Expanded(
                                    child: ListView(
                                      children: [

                                        CustomRadioButton(
                                            options: [
                                              RadioOption(value: 1, title: 'All Notification', icon: Icons.notifications_none,),
                                              RadioOption(value: 2,title: 'Attendance', icon: Icons.calendar_month),
                                              RadioOption(value: 3,title: 'Leave Request', icon: Icons.leave_bags_at_home_sharp),
                                              RadioOption(value: 4,title: 'Notes', icon: Icons.note_alt_sharp),
                                              RadioOption(value: 5,title: 'Announcement', icon: Icons.send_and_archive_outlined),
                                              RadioOption(value: 6,title: 'Payment', icon: Icons.currency_rupee),
                                              RadioOption(value: 7,title: 'Live Track', icon: Icons.location_on_outlined),
                                              RadioOption(value: 8,title: 'System notification', icon: Icons.analytics_outlined),
                                              RadioOption(value: 9,title: 'Message', icon: Icons.messenger_outline),
                                            ],
                                            groupValue: radioController.selectedValue2.value,
                                            onChanged: (value, title){
                                              radioController.setRadiobuttonForNotification(value, title);
                                              debugPrint("value: $value title : $title",);
                                              Get.back();
                                            },)
                                      ],
                                    ),
                                  )
                                ],
                              ));
                        });
                  },
                ),
                notificationFilterButton(
                  text: 'All Employee',
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
                                    "Select Staff",
                                    style: AppTextStyles
                                        .kCaption12WRegularTextStyle,
                                  ).marginAll(h20),

                                  const MyTextFieldForm(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'search Employee',
                                  ).marginAll(h12),

                                  Obx(() =>
                                    ListTile(
                                      title:  const Text("Select All Employees"),
                                      trailing: Checkbox(
                                          activeColor: AppColors.primary500,
                                          value: radioController.isShow.value,
                                          onChanged: (bool? value) {
                                            radioController.toggleButton(value);
                                          }),
                                    ),
                                  ),
                                  const Spacer(),
                                  MyButton(
                                    onTap: () {},
                                    text: "Active",
                                    backgroundColor: AppColors.primary500,
                                    fontColor: AppColors.white,
                                  ).marginOnly(left: h10, right: h10)
                                ],
                              ));
                        });
                  },
                ),
              ],
            )).marginAll(h20)
          ],
        ),
      ),
    );
  }
}
