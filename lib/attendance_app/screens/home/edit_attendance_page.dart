import 'package:attendence/attendance_app/screens/home/home_widgets/filter_text_button.dart';
import 'package:attendence/attendance_app/screens/home/home_widgets/my_drop_down_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../common/widget/custom_widgets/const_my_text_field_form.dart';
import '../../common/widget/custom_widgets/help_card.dart';
import '../../const/const_height.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';

class EditAttendancePage extends StatelessWidget {
  const EditAttendancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          leadingWidth: 200.w,
          //TODO for company profile
          backgroundColor: AppColors.white,
          //TODO for company branches
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Get.back();
              }, icon: const Icon(Icons.arrow_back)),
              Expanded(child: MyDropDownMenu(options: const ["All Branches", "Aara", "Aara Noida"], onChanged: (value){},)),
            ],
          ),

          //TODO help center
          actions: [
            HelpCard(backgroundColor: AppColors.info20,
              textColor: AppColors.white,
              icon: Icons.download,
              text: "DAILY REPORT",
              onTap: (){},)
          ],
        ),
        body: Container(
          child: Column(
            children: [
              // TODO for filtering
              Row(
                children: [
                  filterTextButton(
                    onTap: (){
                      //TODO for filtering
                    },
                    text: "In(0)",
                  ),
                  filterTextButton(
                    onTap: (){
                      //TODO for filtering
                    },
                    text: "Out(0)",
                  ),
                  filterTextButton(
                    onTap: (){
                      //TODO for filtering
                    },
                    text: "No Punch in(1)",
                  )
                ],
              ),
              const Divider(),
              // TODO search staff
              const MyTextFieldForm(
                prefixIcon: Icon(Icons.search),
                hintText: "Search Staff",
              ).marginAll(h10)
            ],
          ),
        ),
      ),
    );
  }
}
