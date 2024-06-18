import 'package:flutter/material.dart';

import '../../const/const_height.dart';
import '../../const/const_width.dart';
import '../../style/color.dart';
import '../../style/text_style.dart';
import '../decoration/field_decorations.dart';

class ConstantDropdown extends StatefulWidget {
  final List options;

  // final ValueChanged onChanged;
  final ValueChanged onChanged;
  final Color? iconColor;
  final Color? dropdownColor;
  final Color? textColor;
  final String? hint;
  final FocusNode? focusNode;
  final bool? validation;

  const ConstantDropdown({
    super.key,
    required this.options,
    required this.onChanged,
    this.iconColor,
    this.dropdownColor,
    this.textColor,
    this.hint,
    this.focusNode,
    this.validation = true,
  });

  @override
  State<ConstantDropdown> createState() => _ConstantDropdownState();
}

class _ConstantDropdownState extends State<ConstantDropdown> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // constraints: constMaxHeight(),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField<String>(
          focusNode: widget.focusNode,
          hint: Text(widget.hint ?? "Select",
              style: AppTextStyles.kSmall8SemiBoldTextStyle
                  .copyWith(color: AppColors.white50)),
          decoration: InputDecoration(
            isDense: false,
            contentPadding: EdgeInsets.all(w8),
            enabledBorder: constFieldsBorder(),
            // focusedBorder: InputBorder.none,
            focusedBorder: constFieldsBorder(borderColor: AppColors.white50),
            border: constFieldsBorder(),
            // focusedErrorBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(w5)),
              // borderSide: const BorderSide(color: Color(0xFFF65054)),
            // ),
            // errorBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(w5)),
            //   borderSide: const BorderSide(color: Color(0xFFF65054)),
            // ),
          ),
          validator: widget.validation == false
              ? (value) {
                  if (value == null || value.isEmpty) {
                    return null;
                  }
                  return null;
                }
              : (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select value';
                  }
                  return null;
                },
          dropdownColor: widget.dropdownColor ?? AppColors.white,
          value: null,
          // value: widget.options.isNotEmpty ? widget.options.first : null,
          // Set default value to "Cash"
          onChanged: widget.onChanged,
          // icon: const Icon(CupertinoIcons.chevron_down),
          // iconSize: 15,
          // iconEnabledColor: widget.iconColor ?? AppColors.white100,
          items: widget.options.map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value,
                style: AppTextStyles.kBody20SemiBoldTextStyle
                    .copyWith(color: widget.textColor ?? AppColors.white100),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
