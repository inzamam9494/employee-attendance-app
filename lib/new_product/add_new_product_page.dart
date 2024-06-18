import 'package:attendence/attendance_app/common/widget/const_text_field.dart';
import 'package:attendence/attendance_app/screens/home/home_widgets/my_drop_down_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../attendance_app/common/widget/const_container.dart';
import '../attendance_app/common/widget/const_dropdown.dart';
import '../attendance_app/const/const_height.dart';
import '../attendance_app/style/color.dart';
import '../attendance_app/style/text_style.dart';

class AddNewProductScreen extends StatefulWidget {
  final List<String> options;

  const AddNewProductScreen({super.key, required this.options});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  List testing = [
    "Satyam1",
    "Satyam2",
    "Satyam3",
    "Satyam4",
    "Satyam5",
  ];

  // final LatestProductController latestProductController = Get.put(LatestProductController());

  // final DisplayAllProductsController displayAllProductsController =  Get.find();

  final formKey = GlobalKey<FormState>();

  // AddNewProductDb addNewProductDb = AddNewProductDb();
  String color = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // latestProductController.getAllProducts();
    // addNewProductDb.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.success60,
        title: Text("New Product", style: AppTextStyles.kBody20SemiBoldTextStyle.copyWith(color: AppColors.white),),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
               Column(
                  children: [
                    newRowText(text: "PRODUCT",
                        // myController: latestProductController.rackController.value,
                    ),

                    newRowText(text: "RACK NO.",
                      // // controller: latestProductController.rackController.value,
                    ),

                    newRowText(text: "UNIT",
                      // controller: latestProductController.unit1Controller.value,
                    ),

                    //TODO Drop down menu
                    Row(
                      children: [
                        DropdownMenu<String>(
                          hintText: 'Select  Status',
                          // initialSelection: ml,
                          onSelected: (String? value) {
                            setState(() {
                              // var dropdownValue = value!;
                              // ml = value??"";
                            });
                          },
                          dropdownMenuEntries: testing
                              .map<DropdownMenuEntry<String>>(
                                  (value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),

                        const Flexible(
                          child: ConstTextField(
                            borderNone: false,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'DECIMAL    :  ',
                          style: TextStyle(
                              fontFamily: 'My Font', fontSize: 15),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        DropdownMenu<String>(
                          hintText: 'Select  Status',
                          // initialSelection: DECIMAL,
                          onSelected: (String? value) {
                            setState(() {
                              // DECIMAL = value??"";
                            });
                          },
                          dropdownMenuEntries: testing
                              .map<DropdownMenuEntry<String>>((value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),
                      ],
                    ),

                    newRowText(text: "FAST SEARCH",
                      // controller: latestProductController.barcodeController.value,
                    ),


                     Row(
                      children: [
                        newText(text: 'HSN/SAC'),
                        Expanded(child: ConstantDropdown(options: ["YES", "NO"], onChanged: (value){}))
                        // SizedBox(
                        //      width: Get.width / 8,
                        //      child: ConstantDropdown(
                        //          options:const [
                        //            'YES',
                        //            'NO',
                        //          ],
                        //          onChanged: (value) {
                        //            if(value == "YES"){
                        //              constDialogBox1(context,
                        //                onTap: (){
                        //                Navigator.pop(context);
                        //                },
                        //                  title: Material(
                        //                    color: AppColors.white,
                        //                    elevation: 0.5,
                        //                    child: Wrap(
                        //                      crossAxisAlignment: WrapCrossAlignment.center,
                        //                      children: [
                        //                        Text("  SELECT HSN/SAC",style: AppTextStyles.kBody17SemiBoldTextStyle.copyWith(color: AppColors.white90),),
                        //                        constButton(text: "Create New HSN"
                        //                            ,onTap: (){
                        //                              constDialogBox(
                        //                                context,
                        //                                title: "HSN/SAC DETAIL",
                        //                                onTap: () {
                        //                                  if (formKey1.currentState!.validate()) {
                        //                                    Navigator.of(context).pop();
                        //                                    addHsn().then((_) {
                        //                                      // Update the list after adding a new HSN
                        //                                      displayAllProductsController.fetchHsnData();
                        //                                    });
                        //                                    hsnController.clear();
                        //                                    cessHsnController.clear();
                        //                                    igstHsnController.clear();
                        //                                    cgstHsnController.clear();
                        //                                    sgstHsnController.clear();
                        //                                    shortNameController.clear();
                        //                                    setState(() {
                        //
                        //                                    });
                        //                                    // addHsn();
                        //                                    debugPrint(isSelectHsn);
                        //                                    debugPrint("isSelectSundry");
                        //                                  }
                        //                                },
                        //                                widgets: SizedBox(
                        //                                  height: Get.height/2.7,
                        //                                  child: Form(
                        //                                    key: formKey1,
                        //                                    child: Column(
                        //                                      mainAxisAlignment: MainAxisAlignment.start,
                        //                                      crossAxisAlignment: CrossAxisAlignment.start,
                        //                                      children: [
                        //                                        Row(
                        //                                          mainAxisAlignment: MainAxisAlignment.start,
                        //                                          children: [
                        //                                            const Text("HSN/SAC  :"),
                        //                                            const Spacer(),
                        //                                            SizedBox(
                        //                                                width: Get.width/9,child: ConstTextField(
                        //                                              validator: Validators.validateName,
                        //                                              controller: hsnController,
                        //                                            ))
                        //
                        //                                          ],
                        //                                        ),
                        //                                        Row(
                        //                                          mainAxisAlignment: MainAxisAlignment.start,
                        //                                          children: [
                        //                                            const Text("SHORT NAME  :"),
                        //                                            const Spacer(),
                        //                                            SizedBox(
                        //                                                width: Get.width/9,
                        //                                                child: ConstTextField(
                        //                                                  // validator:  Validators.validateName,
                        //                                                  controller: shortNameController,
                        //                                                ))
                        //
                        //                                          ],
                        //                                        ),
                        //                                        Row(
                        //                                          mainAxisAlignment: MainAxisAlignment.start,
                        //                                          children: [
                        //                                            const Text("SGST%  :"),
                        //                                            const Spacer(),
                        //                                            SizedBox(
                        //                                                width: Get.width/9,
                        //                                                child: ConstTextField(
                        //                                                  validator:  Validators.validateName,
                        //                                                  controller: sgstHsnController,
                        //                                                  onChanged: (value) {
                        //                                                    // Convert the input to double
                        //                                                    double sgst = double.tryParse(value) ?? 0;
                        //                                                    // Calculate SGST and CGST
                        //                                                    double cgst = sgst ;
                        //                                                    double igst = 2*sgst ;
                        //                                                    // Update the controllers
                        //                                                    cgstHsnController.text = cgst.toStringAsFixed(2);
                        //                                                    igstHsnController.text = igst.toStringAsFixed(2);
                        //                                                  },
                        //                                                ))
                        //
                        //                                          ],
                        //                                        ),
                        //                                        Row(
                        //                                          mainAxisAlignment: MainAxisAlignment.start,
                        //                                          children: [
                        //                                            const Text("CGST%  :"),
                        //                                            const Spacer(),
                        //                                            SizedBox(
                        //                                                width: Get.width/9,
                        //                                                child: ConstTextField(
                        //                                                  validator:  Validators.validateName,
                        //                                                  controller: cgstHsnController,
                        //                                                  onChanged: (value) {
                        //                                                    // Convert the input to double
                        //                                                    double cgst = double.tryParse(value) ?? 0;
                        //                                                    // Calculate SGST and CGST
                        //                                                    double sgst = cgst ;
                        //                                                    double igst = 2*cgst ;
                        //                                                    // Update the controllers
                        //                                                    sgstHsnController.text = sgst.toStringAsFixed(2);
                        //                                                    igstHsnController.text = igst.toStringAsFixed(2);
                        //                                                  },
                        //                                                ))
                        //
                        //                                          ],
                        //                                        ),
                        //                                        Row(
                        //                                          mainAxisAlignment: MainAxisAlignment.start,
                        //                                          children: [
                        //                                            const Text("IGST%  :"),
                        //                                            const Spacer(),
                        //                                            SizedBox(
                        //                                                width: Get.width/9,
                        //                                                child: ConstTextField(
                        //                                                  validator:  Validators.validateName,
                        //                                                  controller: igstHsnController,
                        //                                                  onChanged: (value) {
                        //                                                    // Convert the input to double
                        //                                                    double igst = double.tryParse(value) ?? 0;
                        //                                                    // Calculate SGST and CGST
                        //                                                    double sgst = igst / 2;
                        //                                                    double cgst = igst / 2;
                        //                                                    // Update the controllers
                        //                                                    sgstHsnController.text = sgst.toStringAsFixed(2);
                        //                                                    cgstHsnController.text = cgst.toStringAsFixed(2);
                        //                                                  },
                        //                                                ))
                        //
                        //                                          ],
                        //                                        ),
                        //                                        Row(
                        //                                          mainAxisAlignment: MainAxisAlignment.start,
                        //                                          children: [
                        //                                            const Text("CESS%  :"),
                        //                                            const Spacer(),
                        //                                            SizedBox(
                        //                                                width: Get.width/9,
                        //                                                child: ConstTextField(
                        //                                                  // validator:  Validators.validateName,
                        //                                                  controller: cessHsnController,
                        //                                                  onChanged: (value){
                        //                                                    double cess = double.tryParse(value)??0;
                        //
                        //                                                    //update cess also
                        //                                                    cessController.text = cess.toStringAsFixed(2);
                        //                                                  },
                        //
                        //                                                ))
                        //
                        //                                          ],
                        //                                        ),
                        //                                      ],
                        //                                    ),
                        //                                  ),
                        //                                ),
                        //                              );
                        //                            }
                        //                        ),
                        //
                        //                      ],
                        //                    ),
                        //                  ),
                        //
                        //                  widgets: SingleChildScrollView(
                        //                  child: SizedBox(
                        //                    height: Get.height*0.3,
                        //                    child: Column(
                        //                      crossAxisAlignment: CrossAxisAlignment.start,
                        //                      children: [
                        //
                        //
                        //                        Expanded(
                        //                          child:  Obx(() {
                        //                            if (displayAllProductsController.hsnList.isEmpty) {
                        //                              // Show loading indicator if data is being fetched
                        //                              return const Center(child: Text("NO HSN FOUND"));
                        //                            } else {
                        //                              // Show the fetched data
                        //                              return ListView.builder(
                        //                                itemCount: displayAllProductsController.hsnList.length,
                        //                                itemBuilder: (context, index) {
                        //                                  HsnSacModel hsnModel = displayAllProductsController.hsnList[index];
                        //                                  return Padding(
                        //                                    padding: const EdgeInsets.all(2.0),
                        //                                    child: ListTile(
                        //
                        //                                      onTap: (){
                        //                                        selectedHsn = displayAllProductsController.hsnList[index].hsnSac;
                        //
                        //                                        Navigator.pop(context);
                        //                                        setState(() {
                        //                                          cgstController.text = hsnModel.cgst.toStringAsFixed(2);
                        //                                          sgstController.text = hsnModel.sgst.toStringAsFixed(2);
                        //                                          igstController.text = hsnModel.igst.toStringAsFixed(2);
                        //                                        });
                        //                                      },
                        //                                      tileColor: AppColors.white40,
                        //                                      title: Text(hsnModel.hsnSac),
                        //                                      // subtitle: Text('Short Name: ${hsnModel.shortName}'),
                        //                                      trailing: Text('${hsnModel.cgst.toStringAsFixed(2)}+ ${hsnModel.sgst.toStringAsFixed(2)}+ ${hsnModel.igst.toStringAsFixed(2)}'),
                        //                                    ),
                        //                                  );
                        //                                },
                        //                              );
                        //                            }
                        //                          }),
                        //                        ),
                        //                      ],
                        //                    ),
                        //                  ),
                        //                )
                        //              );
                        //            }
                        //          },
                        //          iconColor: AppColors.white90,
                        //          dropdownColor: AppColors.white,
                        //          textColor: AppColors.white100,
                        //          hint: "Select HSN")),
                        // Text(selectedHsn),
                        // Expanded(
                        //     child: ConstTextField(
                        //   controller: special_discController,
                        //   decoration: const InputDecoration(
                        //       border: InputBorder.none),
                        // ))
                      ],
                    ).marginAll(h10),



                    Row(
                      children: [
                        Container(
                            height: 600.h,
                            width: 500.w,
                            padding: EdgeInsets.all(h25),
                            decoration: BoxDecoration(border: Border.all()),
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 7, top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                     Row(
                                      children: [
                                        newText(text: "LOCAL"),
                                        DropdownMenu<String>(
                                          width: 130,
                                          hintText: 'Select Color',
                                          // initialSelection: local,
                                          onSelected: (String? value) {
                                            setState(() {
                                              // local = value??"";
                                            });
                                          },
                                          dropdownMenuEntries:
                                              testing.map<
                                                      DropdownMenuEntry<
                                                          String>>(
                                                  ( value) {
                                            return DropdownMenuEntry<
                                                    String>(
                                                value: value,
                                                label: value);
                                          }).toList(),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        newText(text: "CENTRAL"),
                                        DropdownMenu<String>(
                                          width: 130,
                                          hintText: 'Select  Status',
                                          // initialSelection: central,
                                          onSelected: (String? value) {
                                            setState(() {
                                              var dropdownValue = value!;
                                              // central = value;
                                            });
                                          },
                                          dropdownMenuEntries: testing.map<
                                              DropdownMenuEntry<
                                                  String>>((value) {
                                            return DropdownMenuEntry<
                                                    String>(
                                                value: value, label: value);
                                          }).toList(),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        newText(text: 'COLOR'),
                                        DropdownMenu<String>(
                                          hintText: 'Select Color',
                                          initialSelection: color,
                                          onSelected: (String? value) {
                                            setState(() {
                                              var dropdownValue = value!;
                                              color = value;
                                            });
                                          },
                                          dropdownMenuEntries:
                                              // Maximumdiscount.map<
                                              testing.map<
                                                  DropdownMenuEntry<
                                                      String>>((value) {
                                            return DropdownMenuEntry<
                                                    String>(
                                                value: value, label: value);
                                          }).toList(),
                                        ),
                                      ],
                                    ),

                                    newRowText(text: "M.R.P",
                                      // myController: mrpController,
                                    ),
                                    newRowText(text: "Rate-A",
                                    // myController: rate_aController,
                                    ),
                                    newRowText(text: "EXPIRY DATE",
                                      // myController: controller: exDateController,
                                      )

                                  ],
                                ))),

                        Container(
                          height: 600.h,
                          width: 500.w,
                          padding: EdgeInsets.all(h25),
                          decoration: BoxDecoration(border: Border.all()),
                          child: Column(
                            children: [

                              newRowText(text: "SGST %",
                                // myController: sgstController,
                              ),

                              newRowText(text: "IGST %",
                                // myController: igstController,
                              ),

                              newRowText(text: "P.RATE",
                                // myController: p_rateController,
                              ),

                              newRowText(text: "Rate-B",
                                // myController: rate_bController,
                              ),

                              newRowText(text: "PACKING",
                                // myController: purc_discController,
                              ),

                              newRowText(text: "FREE",
                                // myController: smsCodeController,
                              ),
                            ],
                          ),
                        ),

                        Container(
                          height: 600.h,
                          width: 500.w,
                          padding: EdgeInsets.all(h25),
                          decoration: BoxDecoration(border: Border.all()),
                          child: Column(
                            children: [

                              newRowText(text: "CGST %",
                                // myController: cgstController,
                              ),

                              newRowText(text: 'CESS',
                                // myController: cessController,
                              ),

                              newRowText(text: 'COST',
                                // myController: costController,
                              ),

                              newRowText(text: 'Rate-C',
                                // myController: rate_cController,
                              ),

                              newRowText(text: 'MARGIN %',
                                // myController: disc_lessController,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    // addProduct().then((_) async{
                    // Update the list after adding a new HSN
                    // await AddNewProductDb.instance.getAllData();
                    // await   displayAllProductsController.fetchProducts();
                    // addNewProductDb.getAllData();
                    // latestProductController.addProducts();

                    // debugPrint('${displayAllProductsController.productLists.value}');
                  }
                },
                // AddNewProductDb().getAllData();
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const PurchaseScreen(
                //               title: '',
                //               options: [],
                //             )));

                child: const Text('save'),
              ).marginOnly(bottom: h10)
            ],
          ).marginAll(h20),
        ),
      ),
    );
  }

  showDeliveryDatePicker() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1947),
        lastDate: DateTime(2099));
    debugPrint('date');
    debugPrint('$picked');

    return picked;
  }
}

Widget newRowText({String? text, TextEditingController? myController}){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text("$text   :  ",style: AppTextStyles.kBody17RegularTextStyle, ),
       Expanded(child: TextField(
        controller: myController,
        decoration: const InputDecoration(
            border:InputBorder.none
        ),
      ))
    ],
  );
}

Widget newText({String? text}){
  return  Row(
    children: [
      Text("$text   :  ",style: AppTextStyles.kBody17RegularTextStyle, ),
    ],
  );
}