import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../style/color.dart';
import '../../../style/text_style.dart';
import '../company_details_page/add_branch.dart';

class MyDropDownMenu extends StatefulWidget {
  final List options;
  final Color? textColor;
  final String? hint;
  final Color? dropdownColor;
  final ValueChanged onChanged;
  final bool? validator;
  final void Function()? onTap;

  const MyDropDownMenu(
      {super.key,
      this.textColor,
      this.hint,
      required this.options,
      this.dropdownColor,
      required this.onChanged,
      this.validator,
      this.onTap});

  @override
  _MyDropDownMenuState createState() => _MyDropDownMenuState();
}

class _MyDropDownMenuState extends State<MyDropDownMenu> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: selectedValue,
        hint: Text(widget.hint ?? "Select",
            style: AppTextStyles.kSmall8SemiBoldTextStyle
                .copyWith(color: AppColors.white50)),
        items: widget.options.map<DropdownMenuItem<String>>((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: AppTextStyles.kSmall8SemiBoldTextStyle.copyWith(
                  color: widget.textColor ??
                      AppColors.white100), // White text color
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
          widget.onChanged;
        },
        iconSize: 20,
        // Smaller icon size
        style: AppTextStyles.kSmall8SemiBoldTextStyle
            .copyWith(color: widget.textColor ?? AppColors.white100),
        // White text color for selected value
        dropdownColor: widget.dropdownColor ?? AppColors.white,
        icon: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddBranch()));
          },
          icon: const Icon(
            Icons.add,
            color: AppColors.primary500,
          ),
        ),
        // Background color for dropdown items
      ),
    );
  }
}
