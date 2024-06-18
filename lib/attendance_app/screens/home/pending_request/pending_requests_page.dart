import 'package:attendence/attendance_app/screens/home/pending_request/device_verification.dart';
import 'package:attendence/attendance_app/screens/home/pending_request/leave_request.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../const/const_height.dart';
import '../../../const/const_width.dart';
import '../../../style/color.dart';
import '../../../style/text_style.dart';

class PendingRequestsPage extends StatefulWidget {
  const PendingRequestsPage({super.key});

  @override
  State<PendingRequestsPage> createState() => _PendingRequestsPageState();
}

class _PendingRequestsPageState extends State<PendingRequestsPage> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.grey.shade100,
          appBar: AppBar(
            backgroundColor: AppColors.white,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back,),
            ),
            title: Text("Pending Requests",
                style: AppTextStyles.kSmall10SemiBoldTextStyle),

            bottom: TabBar(
                controller: tabController,
                tabs:  const[
                  Tab(text: "Leave Requests",),
                  Tab(text: "Device Verification",)
                ]),

          ),
          body: TabBarView(
            controller: tabController,
            children: const [
              LeaveRequest(),
              DeviceVerification()
            ],
          )
      ),
    );
  }
}

