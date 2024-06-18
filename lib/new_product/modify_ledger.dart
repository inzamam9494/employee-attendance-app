import 'package:attendence/attendance_app/common/widget/const_text_field.dart';
import 'package:attendence/attendance_app/common/widget/custom_widgets/const_my_text_field_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../attendance_app/common/widget/const_dropdown.dart';
import '../attendance_app/const/const_height.dart';
import '../attendance_app/const/const_width.dart';
import '../attendance_app/style/color.dart';
import '../attendance_app/style/text_style.dart';

class ModifyLedger extends StatelessWidget {
  const ModifyLedger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headLine(text: "MODIFY LEDGER", time: '11:21:16'),
              SizedBox(
                height: 2000.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    rowFiled(text: 'Ledger Name'),
                    rowFiled(text: 'Station'),

                    rowDropSection(text: 'Account Group'),

                    rowTowDropSection(text: 'Balancing Method',text2: 'Opening'),

                    rowFiled(text: 'Mail to '),
                    rowFiled(text: 'Address'),
                    rowFiled(text: '              '),

                    rowTowDropSection(text: 'Pin Code', text2: "Hold Payment"),

                    rowFiled(text: 'Email'),
                    rowFiled(text: 'Web Site'),
                    rowFiled(text: 'Contact Person'),
                    rowFiled(text: 'Designation'),

                    rowTwoSection(text: 'Phone no. (off)',exp: 'Mobile '),
                    rowTwoSection(text: '       (Res.)', exp: 'Fax No'),

                    rowFiled(text: 'Freez Upto'),
                    rowFiled(text: '     Reg No.'),


                    rowThreeSection(text: 'GST Heading.',exp: 'Exp'),
                    rowThreeSection(text: 'VAT Heading.',exp: 'Dt'),
                    rowThreeSection(text: 'S.T. Heading.',exp: 'Exp'),
                    rowThreeSection(text: 'Food Heading.',exp: 'Exp'),
                    rowThreeSection(text: 'Extra Heading.',exp: 'Exp'),


                    rowFiled(text: 'I.T. PAN No.'),
                    rowFiled(text: 'Bill Import'),

                    rowTowDropSection(text: 'Ledger Category', text2: 'Color'),
                    rowTowDropSection(text: 'State',text2: 'Country'),
                    rowTowDropSection(text: 'Ledger Type',text2: 'Hide'),
                  ],
                ),
              ),
              // Expanded(
              //   child: Row(children: [
              //
              //
              //     Container(
              //       height: 2000.h,
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           rowFiled(text: 'Station'),
              //           rowFiled(text: 'Account Group'),
              //           rowFiled(text: 'Balancing Method'),
              //           rowFiled(text: 'Mail to '),
              //           rowFiled(text: 'Address'),
              //           rowFiled(text: '        '),
              //           rowFiled(text: 'Pin Code'),
              //           rowFiled(text: 'Email'),
              //           rowFiled(text: 'Web Site'),
              //           rowFiled(text: 'Contact Person'),
              //           rowFiled(text: 'Designation'),
              //           rowFiled(text: 'Phone no. (off)'),
              //           rowFiled(text: '       (Res.)'),
              //           rowFiled(text: 'Freez Upto'),
              //           rowFiled(text: 'Reg No.'),
              //           rowFiled(text: 'GST Heading.'),
              //           rowFiled(text: 'VAT Heading.'),
              //           rowFiled(text: 'S.T. Heading.'),
              //           rowFiled(text: 'Food Heading.'),
              //           rowFiled(text: 'Extra Heading.'),
              //           rowFiled(text: 'I.T. PAN No.'),
              //           rowFiled(text: 'Bill Import'),
              //           rowFiled(text: 'Ledger Category'),
              //           rowFiled(text: 'State'),
              //           rowFiled(text: 'Ledger Type'),
              //         ],
              //       ),
              //     ),
              //
              //      Container(
              //         height: 2000.h,
              //         width: w20,
              //         child: ListView.builder(
              //           itemCount: 26,
              //             itemBuilder: (context, index) {
              //               return colon();
              //             },)
              //       ),
              //
              //     Container(
              //       color: AppColors.warning20,
              //       height: 2000.h,
              //       width: 1500.w,
              //       child: Column(
              //         children: [
              //
              //          TextFormField(),
              //          TextFormField(),
              //          TextFormField(),
              //          TextFormField(),
              //          TextFormField(),
              //
              //           // CupertinoTextField().marginAll(h5),
              //           // ConstTextField(
              //           //   borderNone: false,
              //           // ).marginOnly(top: h19, bottom: h13),
              //           // ConstTextField(
              //           //   borderNone: false,
              //           // ).marginOnly(top: h19, bottom: h13),
              //           // ConstTextField(
              //           //   borderNone: false,
              //           // ).marginOnly(top: h19, bottom: h13),
              //           // ConstTextField(
              //           //   borderNone: false,
              //           // ).marginOnly(top: h19, bottom: h13),
              //           // ConstTextField(
              //           //   borderNone: false,
              //           // ).marginOnly(top: h19, bottom: h13),
              //
              //         ],
              //       ),
              //     ),
              //   ],),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget headLine({String? text, String? date, String? day, String? time}) {
  return Container(
    padding: EdgeInsets.all(h10),
    color: AppColors.success60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text ?? '',
            style: AppTextStyles.kBody17SemiBoldTextStyle
                .copyWith(color: AppColors.white)),
        Row(
          children: [
            Text(date ?? '',
                style: AppTextStyles.kBody17SemiBoldTextStyle
                    .copyWith(color: AppColors.white)),
            Text(day ?? '',
                style: AppTextStyles.kBody17SemiBoldTextStyle
                    .copyWith(color: AppColors.white)),
            Text(time ?? '',
                style: AppTextStyles.kBody17SemiBoldTextStyle
                    .copyWith(color: AppColors.white)),
          ],
        )
      ],
    ),
  );
}

Widget rowFiled({String? text, double? width}) {
  return Row(
    children: [
      Text(
        "$text : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 1500.w, child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none
        ),
      )),
    ],
  );
}

Widget rowThreeSection({String? text, String? exp, double? width}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "$text : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 500.w, child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      )),
      Text(
        "No : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 500.w, child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      )),
      Text(
        "$exp : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 500.w, child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      )),
    ],
  );
}

Widget rowTwoSection({String? text, String? exp, double? width}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "$text : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 800.w, child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      )),
      Text(
        "$exp : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 800.w, child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      )),
    ],
  );
}

Widget rowDropSection({String? text,}){
  return Row(
    children: [
      Text(
        "$text : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 100.w, child: ConstantDropdown(options: ['Yes', 'No'],onChanged: (value){},)),
      Text("  SUNDRY CREDITORS (SUPPLIERS)",style: AppTextStyles.kBody20SemiBoldTextStyle,)
    ],
  );
}

Widget rowTowDropSection({String? text, String? text2}){
  return Row(
    children: [

      Text(
        "$text : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 200.w, child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      )),
      SizedBox(width: 100.w, child: ConstantDropdown(options: ['Yes', 'No'],onChanged: (value){},).marginAll(h5)),
      Text(
        "$text2 : " ?? '',
        style: AppTextStyles.kBody20SemiBoldTextStyle,
      ).marginAll(h10),
      SizedBox(width: 200.w, child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      )),
      SizedBox(width: 100.w, child: ConstantDropdown(options: ['Yes', 'No'],onChanged: (value){},)),

    ],
  );
}
