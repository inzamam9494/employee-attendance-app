import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../attendance_app/const/const_height.dart';
import '../attendance_app/style/color.dart';
import '../attendance_app/style/text_style.dart';

class PurchaseEntryPage extends StatelessWidget {
  PurchaseEntryPage({super.key});


  final List<String> labels = [
    'BATCH NO:',
    'EXP DATE',
    'MRP',
    'P.QTY',
    'STOCK',
    'LIVE STOCK',
    'PACKING',
    'BAR CODE',
    'COLOR',
    'SIZE',
    'DESIGN NAME',
    'GST RATE',
    'HSN CODE',
    'UNIT',
    'NET RATE A',
    'RATE A',
    'MARGIN%',
    'NET COST',
    'COST',
    'MARGIN',
    'EXEMPT',
    'GST-0%',
    'GST-3%',
    'GST-5%',
    'GST-6%',
    'GST-12%',
    'GST-18%',
    'GST-28%',
    'GST RATE%',
    'IGST',
    'CGST',
    'SGST',
    'TOTAL GST',
    'CESS',
    'TOTAL CESS',
    'TOTAL TAXABLE',
    'DISCOUNT',
    'OTHER CHARGES',
    'TOTAL INVOICE'
  ];

  final List<String> values = [
    '7314',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '22500.00',
    '0.00',
    '0',
    '22500.00'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.success60,
        title: Text(
          'PURCHASE ENTRY',
          style: AppTextStyles.kBody17RegularTextStyle
              .copyWith(color: AppColors.white),
        ),
        actions: [
          Text("07-06-2024 | ",
              style: AppTextStyles.kBody17RegularTextStyle
                  .copyWith(color: AppColors.white)),
          Text("Friday | ",
              style: AppTextStyles.kBody17RegularTextStyle
                  .copyWith(color: AppColors.white)),
          Text("11:07:30 ",
              style: AppTextStyles.kBody17RegularTextStyle
                  .copyWith(color: AppColors.white)),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(h20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //TODO NAME section
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("NAME : "),
                          Text("BALAJI"),
                        ],
                      ),
                      Text("R.CREDIT"),
                      Text("DATE : ")
                    ],
                  ),
                  // TODO Bill No section
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("BILL NO : "),
                          Text("A0000001"),
                        ],
                      ),
                      Text("DT DATE : ______"),
                      Row(
                        children: [
                          Text("TYPE : "),
                          Text("LOCAL"),
                        ],
                      ),
                    ],
                  ),
                  //TODO Date table
                  Container(
                    margin: EdgeInsets.only(top: h40),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.white80)),
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
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('1')),
                            DataCell(Text('ABC')),
                            DataCell(Text('6356')),
                            DataCell(Text('50.0')),
                            DataCell(Text('BFDJJ')),
                            DataCell(Text('450')),
                            DataCell(Text('450.00')),
                            DataCell(Text('0.00')),
                            DataCell(Text('0')),
                            DataCell(Text('22500.00')),
                            DataCell(Text('22500.00')),
                            DataCell(Text('Sale Rate')),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //TODO Grid
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      childAspectRatio: 3,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemCount: labels.length,
                    itemBuilder: (context, index) {
                      return GridTile(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.grey[200],
                              child: Center(
                                child: Text(
                                  labels[index],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.grey[300],
                              child: Center(
                                child: Text(values[index]),
                              ),
                            ),
                          ],
                        )
                      );
                    },
                  ).marginOnly(top: h50, bottom: h50)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
