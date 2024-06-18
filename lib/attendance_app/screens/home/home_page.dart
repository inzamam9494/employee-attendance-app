import 'package:attendence/attendance_app/common/widget/custom_widgets/const_radio_button.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/help_card.dart';
import 'package:attendence/attendance_app/routes/routes_pages.dart';
import 'package:attendence/attendance_app/screens/controllers/radio_controller.dart';
import 'package:attendence/attendance_app/screens/home/controller/home_controller.dart';
import 'package:attendence/attendance_app/screens/home/home_widgets/my_drop_down_menu.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../common/widget/custom_widgets/const_my_text_field_form.dart';
import '../../const/const_height.dart';
import '../../const/const_width.dart';
import '../../style/color.dart';
import '../../style/gradiant_color.dart';
import '../salary/salary_widgets/staff_info.dart';
import '../salary/salary_widgets/total_ctc_info.dart';
import 'home_widgets/home_icon.dart';
import 'home_widgets/home_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final RadioController radioController = Get.put(RadioController());
final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        //TODO for Add Staff Button
        backgroundColor: AppColors.white,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () { Get.toNamed(ApplicationPages.addEmployeeDetails); },
          backgroundColor: AppColors.primary500,
          label: Text("+ Add Staff",
              style: AppTextStyles.kSmall8SemiBoldTextStyleWhite),
        ),

        //  App Bar
        appBar: AppBar(
          leadingWidth: 300.w,
          automaticallyImplyLeading: false,
          //TODO for company profile
          backgroundColor: AppColors.white,
          //TODO for company branches
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                  //   TODO Company Details Page
                   Get.toNamed(ApplicationPages.companyDetailsPage);
                  },
                  child:Image.asset(
                    "images/profile_image.png",
                    height: h50,
                    width: w50,
                  )),
              MyDropDownMenu(options: const ["All Branches", "Aara", "Aara Noida"], onChanged: (value){},),
            ],
          ),

          //TODO help center
          actions: [
            IconButton(
                onPressed: () {
                  // TODO Notification page
                  Get.toNamed(ApplicationPages.notificationPage);
                }, icon: const Icon(Icons.notifications_none)),
            HelpCard(
              backgroundColor: AppColors.secondary700,
              textColor: AppColors.white,
              text: "Help",
              icon: Icons.help_outline,
              onTap: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(left: h10, right: h10),
            child: Column(
              children: [
                //TODO Edit Attendance Card
                InkWell(
                  onTap: () {
                    Get.toNamed(ApplicationPages.editAttendancePage);
                  },
                  child: Container(
                    height: 200.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(h10),
                      gradient: blueGradient,
                      color: Colors.black54,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            staffInfo(
                                text: "In", num: "1", color: AppColors.white),
                            staffInfo(
                                text: "Out", num: "0", color: AppColors.white),
                            staffInfo(
                                text: "No Punch In",
                                num: "1",
                                color: AppColors.white),
                          ],
                        ).marginOnly(
                            top: h30, left: h30, right: h30, bottom: h10),
                        const Divider(),
                        totalCtcInfo(
                            text: "Total staff -1",
                            color: AppColors.white,
                            num: "Edit Attendance >>")
                      ],
                    ),
                  ),
                ),

                //TODO Refer,request,staff,report
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeIcon(
                      onTap: () {},
                      icon: Icons.share,
                      text: "Refer Friends",
                    ),
                    // TODO Pending Request
                    HomeIcon(
                      onTap: () {
                       Get.toNamed(ApplicationPages.pendingRequestsPage);
                      },
                      icon: Icons.insert_invitation,
                      text: "Pending Request",
                    ),
                    HomeIcon(
                      onTap: () {},
                      icon: Icons.person_add_alt_outlined,
                      text: "Invite Staff",
                    ),
                    // TODO Reports
                    HomeIcon(
                      onTap: () {
                        Get.toNamed(ApplicationPages.companyReportPage);
                      },
                      icon: Icons.insert_drive_file_outlined,
                      text: "Reports",
                    ),
                  ],
                ).marginOnly(top: h10),

                //TODO Search bar
                Row(
                  children: [
                     Expanded(
                      child: MyTextFieldForm(
                        controller: homeController.searchEmployeeController,
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search employee",
                      ),
                    ),
                    Card(
                      child: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: Get.height * 0.5,
                                    width: double.maxFinite,
                                      child: Column(
                                        children: [
                                          Text("Select Staff Type", style: AppTextStyles.kCaption12WRegularTextStyle,).marginAll(h20),

                                          CustomRadioButton(
                                            isShow: false,
                                              options: [
                                                RadioOption(value: 1, title: 'All'),
                                                RadioOption(value: 2, title: 'Active Staff'),
                                                RadioOption(value: 3, title: 'Inactive Staff'),
                                              ],
                                              groupValue: radioController.selectedValue.value,
                                              onChanged: (value, title){
                                                radioController.setRadiobutton(value, title);
                                                Get.back();})
                                        ],
                                      )
                                  );
                                });
                          },
                          icon: const Icon(Icons.filter_list).marginAll(h7)),
                    ).marginOnly(left: h8)
                  ],
                ).marginAll(h15),
                const Divider(),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Next, you could"),
                  ],
                ),
                const Divider(),

                //TODO Other Services
                HomeService(
                  imageIcon:
                      "images/talk_us.png",
                  titleText: "Talk to us",
                  descriptionText: "For more details about Attendance App",
                  onTap: () {},
                ),
                const Divider(),
                HomeService(
                  imageIcon:
                      "images/biometric.png",
                  titleText: "Integrate Biometric Device",
                  descriptionText: "Connect biometric with Attendance App",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
