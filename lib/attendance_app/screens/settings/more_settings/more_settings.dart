import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widget/custom_widgets/const_my_button.dart';
import '../../../const/const_height.dart';
import '../../../routes/routes_pages.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';
import '../attendance_and_leaves/widgets/attendance_mode_card.dart';

class MoreSettings extends StatefulWidget {
  const MoreSettings({super.key});

  @override
  State<MoreSettings> createState() => _MoreSettingsState();
}

bool isShow = false;
bool isShow1 = false;

class _MoreSettingsState extends State<MoreSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text("More Settings", style: AppTextStyles.kCaption12WRegularTextStyle,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Attendance Modes", style: AppTextStyles.kSmall10SemiBoldTextStyle,).marginAll(h20),
          attendanceModeCard(
              icon: Icons.branding_watermark,
              text: "App Notification",
              suffixIcon: CupertinoSwitch(value: isShow, onChanged: (value){
                setState(() {
                  isShow = !isShow;
                });
              })
          ),

          Text("Others", style: AppTextStyles.kSmall10SemiBoldTextStyle,).marginAll(h20),
          attendanceModeCard(
              icon: Icons.thumb_up,
              text: "Rate Us"
          ),
          attendanceModeCard(
              icon: Icons.lightbulb_outline,
              text: "Request a feature"
          ),
          attendanceModeCard(
              icon: Icons.share,
              text: "Invite Friends"
          ),
          attendanceModeCard(
            onTap: (){
              showDialog(context: context,
                  builder: (BuildContext context){
                return AlertDialog(
                  title: Text("Delete all staff?", style: AppTextStyles.kCaption12SemiBoldTextStyle,),
                  content: const Text("This will delete all employee permanently."),
                  actions: [
                    MyButton(onTap: (){
                      //FIXME
                    }, text: "Delete all employee",
                      isShow: false,
                      backgroundColor: AppColors.error40,
                      fontColor: AppColors.white,),

                    MyButton(onTap: (){
                      Get.back();
                    }, text: "Cancel",
                      isShow: false,
                      fontColor: AppColors.white100,),
                  ],
                );
                  });
            },
              color: AppColors.error40,
              icon: Icons.refresh,
              text: "Delete All Staff"
          ),
          attendanceModeCard(
              icon: Icons.description,
              text: "Term & Conditionals"
          ),
          attendanceModeCard(
              icon: Icons.description,
              text: "Privacy Policy "
          ),
          attendanceModeCard(
              icon: Icons.logout,
              text: "Logout "
          ),
        ],
      ),
    );
  }
}
