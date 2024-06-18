import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_button.dart';
import 'package:attendence/attendance_app/routes/routes_pages.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../common/decoration/field_decorations.dart';
import '../../const/const_height.dart';
import '../../const/const_width.dart';
import '../../style/color.dart';
import 'controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  final LoginController loginController = Get.put(LoginController());


  @override
  Widget build(BuildContext context) {
    debugPrint("Building LoginPage");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Image.asset("images/login_profile_image.png", height: 100, width: 100)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Best Attendance App",)
                ),


                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Text("Enter your Mobile Number",)
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text("we will send OTP on this mobile numbers",)
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: IntlPhoneField(
                    validator: (value){
                      if(value.toString()==""){
                        return "Enter Valid No";
                      }else{
                        // return "Enter Valid No";
                      }
                      return null;
                    },
                    controller: loginController.mobileNoController,
                      cursorColor: Colors.pink,
                      decoration:  InputDecoration(
                        counterText: '',
                          hintText: 'Enter Phone Number',
                          hintStyle: const TextStyle(fontSize: 15),
                          border: myDeco(),
                          focusedBorder: myDeco(),
                      ),
                  ),
                ),

                // TextFormField(),

                const Spacer(),

                InkWell(
                  onTap: (){
                    _formKey.currentState?.validate();
                    if(loginController.mobileNoController.value.text.isNotEmpty && loginController.mobileNoController.value.text.length >= 8 ) {
                      Get.offAllNamed(ApplicationPages.bottomBar);
                    }else{
                      // GetSnackBar(title: "Enter Valid Number",);
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(content: Text("Enter Valid Number",style: AppTextStyles.kSmall8RegularTextStyle,),
                      //     backgroundColor: AppColors.error40,
                      //     padding: EdgeInsets.all(h10),
                      //   )
                      // );
                      Get.snackbar("Error", "Enter Valid Number", backgroundColor: Colors.red,snackPosition: SnackPosition.TOP,
                          colorText: Colors.white, margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20));
                    }
                  },
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink,
                      ),
                      child: const Text("Continue",textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),

                // SizedBox(
                //   height: h60,
                //     child: MyButton(onTap: (){
                //       _formKey.currentState?.validate();
                //       if(loginController.mobileNoController.value.text.isNotEmpty && loginController.mobileNoController.value.text.length >= 8 ) {
                //         Get.offAllNamed(ApplicationPages.bottomBar);
                //       }else{
                //         // GetSnackBar(title: "Enter Valid Number",);
                //         // ScaffoldMessenger.of(context).showSnackBar(
                //         //   SnackBar(content: Text("Enter Valid Number",style: AppTextStyles.kSmall8RegularTextStyle,),
                //         //     backgroundColor: AppColors.error40,
                //         //     padding: EdgeInsets.all(h10),
                //         //   )
                //         // );
                //         Get.snackbar("Error", "Enter Valid Number", backgroundColor: Colors.red,snackPosition: SnackPosition.TOP,
                //             colorText: Colors.white, margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20));
                //       }
                //     },
                //     // _isValidMobileNumber? () => Get.toNamed(ApplicationPages.bottomBar):null,
                //     icon: Icons.arrow_circle_right_sharp,
                //       iconColor: Colors.white,
                //       backgroundColor: Colors.pink,
                //       fontColor: Colors.white,
                //     text: "Continue",))
              ],
            ),
          )
        )
      ),
    );
  }
}
