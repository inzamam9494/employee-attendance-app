import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  RxBool isChecked = false.obs;
  RxBool isChecked1 = false.obs;
  RxBool isChecked2 = false.obs;
  RxBool isChecked3 = false.obs;
  RxBool isChecked4 = false.obs;

  var searchEmployeeController = TextEditingController();


  void setCheckBox(bool value){
    isChecked.value = value;
  }

}