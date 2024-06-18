import 'package:attendence/attendance_app/const/const_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../style/color.dart';

class MyTextFieldForm extends StatelessWidget {
  final Widget? prefixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final int? numberLength;
  // final FilteringTextInputFormatter?
  const MyTextFieldForm({super.key, this.hintText, this.controller, this.keyboardType, this.prefixIcon, this.numberLength});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
          // FocusScopeNode currentFocus = FocusScope.of(context);
          // if (!currentFocus.hasPrimaryFocus) {
          //   currentFocus.unfocus();
          // }
        },
      child: TextFormField(
          cursorColor: AppColors.primary500,
          controller: controller,
          keyboardType: keyboardType,
          // inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
          inputFormatters: [
            LengthLimitingTextInputFormatter(numberLength),
            // FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          decoration:  InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon,
              hintStyle: TextStyle(fontSize: h15),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary500)
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary500)
              )
          )
      ),
    );
  }
}

// keyboardType: TextInputType.number,
// inputFormatters: <TextInputFormatter>[
// FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))

