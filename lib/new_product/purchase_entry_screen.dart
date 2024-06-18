import 'package:attendence/attendance_app/style/color.dart';
import 'package:attendence/attendance_app/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../attendance_app/common/widget/const_text_field.dart';
import '../attendance_app/const/const_height.dart';

class PurchaseEntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('PURCHASE ORDER'),
          ).marginAll(h10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headLine(text: "PURCHASE ENTRY",day: '07-06-2024 | ',date: 'Friday | ',time: '11:07:30',),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              nameOrBill(text: "NAME", text2: "BALAJI"),
              Text('R CREDIT'),
              Text('DATE : _______')
            ],
          ).paddingAll(h10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              nameOrBill(text: "BILL NO", text2: "A0000001"),
              Text('DT DATE : _______'),
              nameOrBill(text: "TYPE", text2: "LOCAL"),
            ],
          ).paddingAll(h10),

          dateTableSection(),

          Expanded(child: gridTable()),

        ],
      ),
    );
  }
}

Widget headLine({String? text, String? date, String? day, String? time}){
  return Container(
    padding: EdgeInsets.all(h10),
    color: AppColors.success60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text??'', style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.white)),
        Row(
          children: [
            Text(date??'',style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.white)),
            Text(day??'',style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.white)),
            Text(time??'',style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.white)),
          ],
        )
      ],
    ),
  );
}

Widget nameOrBill({String? text, String? text2}){
  return Row(
    children: [
      Text(text??'', style: AppTextStyles.kBody17SemiBoldTextStyle,),
      const Text(" : "),
      Text(text2??'', style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.info40),)
    ],
  );
}


  Widget dateTableSection() {
    return Container(
      margin: EdgeInsets.only(top: h15, bottom: h30),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white80)
      ),
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(label: Text('SIR NO')),
          DataColumn(label: Text('ITEM NAME')),
          DataColumn(label: Text('BATCH NO')),
          DataColumn(label: Text('QTY')),
          DataColumn(label: Text('FREE')),
          DataColumn(label: Text('NET RATE')),
          DataColumn(label: Text('RATE')),
          DataColumn(label: Text('DIS%')),
          DataColumn(label: Text('DIS')),
          DataColumn(label: Text('NET AMOUNT')),
          DataColumn(label: Text('TAXABLE AMOUNT')),
          DataColumn(label: Text('SALE RATE')),
        ],
        rows:  const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('1')),
              DataCell(Text('ABC')),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(ConstTextField(borderNone: false,)),
              DataCell(Text('Sale Rate')),
            ],
          ),
        ],
      ),
    );
  }



final List<Map<String, String>> items = [
  {'label': 'BATCH NO:', 'value': '7314'},
  {'label': 'BAR CODE', 'value': '0'},
  {'label': 'NET RATE A', 'value': '0'},
  {'label': 'GST-0%', 'value': '0'},
  {'label': 'GST RATE%', 'value': '0'},
  {'label': 'TOTAL TAXABLE', 'value': '22500.00'},
  {'label': 'EXP DATE', 'value': '0'},
  {'label': 'COLOR', 'value': '0'},
  {'label': 'RATE A', 'value': '0'},
  {'label': 'GST-3%', 'value': '0'},
  {'label': 'IGST', 'value': '0'},
  {'label': 'DISCOUNT', 'value': '0.00'},
  {'label': 'MRP', 'value': '0'},
  {'label': 'SIZE', 'value': '0'},
  {'label': 'MARGIN%', 'value': '0'},
  {'label': 'GST-5%', 'value': '0'},
  {'label': 'CGST', 'value': '0.00'},
  {'label': 'OTHER CHARGES', 'value': '0'},
  {'label': 'P.QTY', 'value': '0'},
  {'label': 'DESIGN NAME', 'value': '0'},
  {'label': 'NET COST', 'value': '0'},
  {'label': 'GST-6%', 'value': '0'},
  {'label': 'SGST', 'value': '0.0'},
  {'label': 'TOTAL GST', 'value': '0.00'},
  {'label': 'STOCK', 'value': '0'},
  {'label': 'GST RATE', 'value': '0'},
  {'label': 'COST', 'value': '0'},
  {'label': 'GST-12%', 'value': '0'},
  {'label': 'CESS', 'value': '0'},
  {'label': 'DISCOUNT', 'value': '0'},
  {'label': 'LIVE STOCK', 'value': '0'},
  {'label': 'HSN CODE', 'value': '0'},
  {'label': 'MARGIN', 'value': '0'},
  {'label': 'GST-18%', 'value': '0'},
  {'label': 'TOTAL CESS', 'value': '0'},
  {'label': 'OTHER CHARGES', 'value': '0'},
  {'label': 'PACKING', 'value': '0'},
  {'label': 'UNIT', 'value': '0'},
  {'label': 'EXEMPT', 'value': '0'},
  {'label': 'GST-28%', 'value': '0'},
  {'label': 'TOTAL GST', 'value': '0.00'},
  {'label': 'TOTAL INVOICE', 'value': '22500.00'}
];



  Widget gridTable() {
    return Container(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          childAspectRatio: 8,
          mainAxisSpacing: 2,
          crossAxisSpacing: 0 ,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey[200],
                  child: Center(
                    child: Text(
                      items[index]['label']!,
                      style: AppTextStyles.kCaption12RegularTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: AppColors.info10,
                  child: Center(
                    child: Text(items[index]['value']!, style: AppTextStyles.kCaption12RegularTextStyle,),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }


