import 'package:attendence/attendance_app/routes/routes_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'new_product/add_new_product_page.dart';
import 'new_product/modify_ledger.dart';
import 'new_product/purchase_entry_page.dart';
import 'new_product/purchase_entry_screen.dart';
import 'new_product/sale_managament_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: Size(280, 926),
      designSize: Size(1920, 1080),
      minTextAdapt: true,
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // initialRoute: ApplicationPages.loginPage,
          // getPages: ApplicationPages.getApplicationPages(),
          // home: PurchaseEntryScreen(),
          // home: PurchaseEntryPage(),
          home: ModifyLedger(),
        ),
    );
  }
}
