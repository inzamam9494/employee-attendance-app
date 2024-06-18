import 'package:get/get.dart';

class SalaryController extends GetxController{

  RxBool choose = false.obs;

  void togglePeriodType(){
    choose.value = !choose.value;
    update();
  }


}