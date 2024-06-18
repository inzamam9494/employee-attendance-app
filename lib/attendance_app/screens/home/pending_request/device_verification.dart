import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widget/custom_widgets/const_my_text_field_form.dart';
import '../../../const/const_height.dart';
import '../../../style/color.dart';

class DeviceVerification extends StatelessWidget {
  const DeviceVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          MyTextFieldForm(
            prefixIcon: Icon(Icons.search),
            hintText: "Search employee",
          ).marginAll(h20)
        ],
      ),
    );
  }
}
