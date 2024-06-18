import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../common/widget/const_radio_button_two.dart';
import '../../common/widget/custom_widgets/const_my_text_field_form.dart';
import '../../common/widget/custom_widgets/const_radio_button.dart';
import '../../const/const_height.dart';
import '../authentication/controller/login_controller.dart';
import '../controllers/radio_controller.dart';
import 'controller/home_controller.dart';

class AppEmployeeDetails extends StatefulWidget {
  const AppEmployeeDetails({super.key});

  @override
  State<AppEmployeeDetails> createState() => _AppEmployeeDetailsState();
}

class _AppEmployeeDetailsState extends State<AppEmployeeDetails> {

  LoginController loginController = Get.put(LoginController());

  final RadioController radioController = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          "Add Employee Details",
          style: AppTextStyles.kSmall10SemiBoldTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Staff Name").marginAll(h10),
          const MyTextFieldForm(
            hintText: "Enter Name",
          ).marginAll(h10),
          const Text("Phone Number").marginAll(h10),
          IntlPhoneField(
                  controller: loginController.mobileNoController,
                  cursorColor: AppColors.primary500,
                  decoration: InputDecoration(
                      hintText: 'Enter Phone Number',
                      counterText: '',
                      hintStyle: TextStyle(fontSize: h15),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primary500)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primary500))))
              .marginAll(h10),
          const Text("Permission").marginAll(h10),

          //TODO click employee open bottom sheet
          ListTile(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SizedBox(
                        height: Get.height * 0.5,
                        width: double.maxFinite,
                        child:  Column(
                          children: [
                            Text("Select Staff Roll", style: AppTextStyles.kCaption12WRegularTextStyle).marginAll(h20),
                            Obx(() =>   CustomRadioButton2(
                                options: [
                                  RadioOption(value: 1, title: 'Branch Manager', subtitle: 'Mark Attendance & salary of all employees'),
                                  RadioOption(value: 2, title: 'Attendance Manager', subtitle: 'Mark Attendance of all employees'),
                                  RadioOption(value: 3, title: 'Employee', subtitle: 'Mark Attendance & salary of all employees'),
                                ],
                                groupValue: radioController.selectedValue1.value,
                                onChanged: (value, title) {
                                  radioController.setRadiobutton1(value, title);
                                  Get.back();
                                }))
                          ],
                        ));
                  });
            },
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: AppColors.white60, width: 1),
              borderRadius: BorderRadius.circular(5),
            ),
            title: Obx(() => Text(radioController.selectedTitle1.value)),
            trailing: const Icon(Icons.keyboard_arrow_right_outlined),
          ).paddingOnly(left: h10, right: h10),

          const Spacer(),
          MyButton(
            onTap: () {
              // FIXME Add Employee
            },
            text: "Add Employee",
            icon: Icons.arrow_circle_right,
            iconColor: AppColors.white,
            backgroundColor: AppColors.primary500,
            fontColor: AppColors.white,
          ).marginOnly(left: h10, right: h10)
        ],
      ),
    );
  }
}
