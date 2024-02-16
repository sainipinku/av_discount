

import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/helpers/textfields.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';

import '../../../utils/my_styles.dart';
import 'invoice_preview_screen.dart';


class CreateInvoice extends StatefulWidget {
  const CreateInvoice({super.key});

  @override
  State<CreateInvoice> createState() => _CreateInvoiceState();
}

class _CreateInvoiceState extends State<CreateInvoice> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController prodNameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(context,_key),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text('Create Invoice ',style: MyStyles.red34BoldStyle,),
              underLineTextField(controller: mobileController,title: "User Mobile Number"),
              underLineTextField(controller: nameController,title: "User Name"),
              Row(
                children: [
                  Expanded(child: underLineTextField(controller: prodNameController,title: "Product Name")),
                  const SizedBox(width: 35,),
                  Expanded(child: Stack(
                    children: [
                      underLineTextField(controller: amountController,title: "Total Amount"),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: IconButton(onPressed: (){},icon: const Icon(Icons.add)),
                      )
                    ],
                  )),
                ],
              ),
              
              underLineTextField(controller: discountController,title: "Discount ( In % )"),
              underLineTextField(controller: dateController,title: "Date"),
          
              mainBtn(text: "Create Invoice", enble: "yes", onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => InvoicePreviewScreen(),));
              },)
            ],
          ),
        ),
      ),

      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  }//BoxDecoration
}