import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RadioController extends GetxController{

  //TODO For Home Page
  RxInt selectedValue = 1.obs;
  var selectedTitle = 'All'.obs;

  void setRadiobutton(int value, String title){
    selectedValue.value = value;
    selectedTitle.value = title;
  }

  //TODO For Add Employee Details Page
  RxInt selectedValue1 = 1.obs;
  var selectedTitle1 = 'Branch Manager'.obs;

  void setRadiobutton1(int value1, String title1){
    selectedValue1.value = value1;
    selectedTitle1.value = title1;
  }

  //TODO For Notification Page
  RxInt selectedValue2 = 1.obs;
  var selectedTitle2 = 'All Notification'.obs;

  void setRadiobuttonForNotification(int value2, String title2){
    selectedValue2.value = value2;
    selectedTitle2.value = title2;
  }

  //TODO For All Branches in Report Page
  RxInt branchValue = 1.obs;
  var branchTitle = 'All Branches'.obs;

  void reportBranches(int value3, String title3){
    branchValue.value = value3;
    branchTitle.value = title3;
    update();
  }


  toClr(){
    branchValue.value = 1;
    branchTitle.value = 'All Branch';
    update();
    // debugPrint("Duration $durationTitle");
  }

  //TODO For All Branches in Report Page
  RxInt durationValue = 1.obs;
  var durationTitle = 'June'.obs;

  void durationReport(int value4, String title4){
    durationValue.value = value4;
    durationTitle.value = title4;
    update();
  }

  toClr2(){
    durationValue.value = 1;
    durationTitle.value = 'June';
    update();
    // debugPrint("Duration $durationTitle");
  }


  //TODO Year Picker function
  RxInt selectedYear = 2019.obs;
  void yearPicker(yearInt){
    selectedYear.value = yearInt;
    update();
  }

  // TODO Toggle Button
  RxBool isShow = false.obs;
  void toggleButton(value){
   isShow.value = value!;
  }

  //TODO format download method
   RxInt fileSelectValue = 1.obs;
  void selectFormat(fileValue){
    fileSelectValue.value = fileValue;
    update();
  }


}