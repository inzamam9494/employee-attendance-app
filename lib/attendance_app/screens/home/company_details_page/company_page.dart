import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_text_field_form.dart';
import 'package:attendence/attendance_app/routes/routes_pages.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widget/const_dropdown.dart';
import '../../../common/widget/custom_widgets/const_my_button.dart';
import '../../../const/const_height.dart';
import '../../../const/const_width.dart';
import '../../../style/color.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // FIXME Add Photo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Upgrade Plan", style: AppTextStyles.kCaption12SemiBoldTextStyle,),
                              content: const Text("Please Upgrade your plan to use this feature"),
                              actions: [
                                MyButton(onTap: (){
                                  Get.toNamed(ApplicationPages.upgradeNow);
                                }, text: "Upgrade Now",
                                  isShow: false,
                                  backgroundColor: AppColors.primary500,
                                  fontColor: AppColors.white,),
                                MyButton(onTap: (){
                                  Get.back();
                                }, text: "Close",
                                  isShow: false,
                                  fontColor: AppColors.white100,),
                              ],
                            );
                          });
                    },
                      // customBorder: CircleBorder(),
                      child: Image.asset("images/profile_image.png", height: h100, width: w100,))
                ],
              ).marginAll(h20),
              Text("Company Name", style: AppTextStyles.kSmall10SemiBoldTextStyle,),
              const MyTextFieldForm(
                hintText: "Company Name",
              ).marginOnly(bottom: h20),

              Text("Business Type", style: AppTextStyles.kSmall10SemiBoldTextStyle,),
              ConstantDropdown(options:  const ["Agriculture / Farming", "Automobile Workshop", "Cable Service Provider", "Call Center", "Construction", "Contract / Manpower Agency", "Distribution", "Educational Institude", "Finacial Services", "Garments / Textile",
                "Grocery / Kirana / General Store", "Gym/Health/Fitness", "Heavy Machinery", "Hospital / Clinic", "Hotel / Lodge", "Internal Service Provider", "IT Software", "Jewellery", "Logistics/Transport", "Manufacturing"],
                onChanged: (value){},).marginOnly(bottom: h20),

              Text("Company Address", style: AppTextStyles.kSmall10SemiBoldTextStyle,),
              const MyTextFieldForm(
                hintText: "Company Address",
              ).marginOnly(bottom: h20),

              Text("GST Number", style: AppTextStyles.kSmall10SemiBoldTextStyle,),
              const MyTextFieldForm(
                hintText: "GST Number",
              ).marginOnly(bottom: h20),

              Text("Udyam Registration Number", style: AppTextStyles.kSmall10SemiBoldTextStyle,),
              const MyTextFieldForm(
                hintText: "Udyam Registration Number",
              ).marginOnly(bottom: h20),


              MyButton(onTap: (){
                //TODO save payment
              }, text: "Save",
                isShow: false,
                backgroundColor: AppColors.primary500,
                fontColor: AppColors.white,),

              MyButton(onTap: (){
                Get.back();
              }, text: "Cancel",
                isShow: false,
                backgroundColor: AppColors.white50,
                fontColor: AppColors.white,),


              // Row(
              //   children: [
              //
              //   ],
              // ).marginAll(h20)
            ],
          ),
        ),
      ),
    );
  }
}
