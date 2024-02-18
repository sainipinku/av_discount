import 'package:av_discount_app/common_ui/globle_ui.dart';
import 'package:av_discount_app/drawer/drawer_bar.dart';
import 'package:av_discount_app/utils/helpers/textfields.dart';
import 'package:av_discount_app/utils/my_app_theme.dart';
import 'package:av_discount_app/utils/ui_helper.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../../../utils/my_styles.dart';

class SendMessage extends StatefulWidget {
  const SendMessage({super.key});

  @override
  State<SendMessage> createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  TextEditingController msgController = TextEditingController();
  int selectedIndex = 2;

  final ImagePicker _picker = ImagePicker();

  dynamic _pickImageError;
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  String? selectedValue;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _key,
      appBar: customAppBar(context, _key),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Send Message',
                style: MyStyles.red34BoldStyle,
              ),
              Text("Select User", style: MyStyles.black12LightCMStyle),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: MyAppTheme.blackTextColor))),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text(
                      'Select Item',
                      style: MyStyles.black16boldPoppinsStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: MyStyles.black16boldPoppinsStyle,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      elevation: 0,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      offset: const Offset(0, 5),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                      padding: EdgeInsets.only(left: 14, right: 14),
                    ),
                  ),
                ),
              ),
              underLineTextField(controller: msgController, title: "Message"),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Image Picker!")));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: width,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: MyAppTheme.blackTextColor))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upload Image",
                        style: MyStyles.black12LightCMStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Select Image",
                          style: MyStyles.black16boldPoppinsStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.20, right: width * 0.20),
                child: mainBtn(
                  text: "Send",
                  enble: "yes",
                  onTap: () {},
                  clr: MyAppTheme.redLightColor,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: selectedIndex == 0
                ? SvgPicture.asset(
                    'assets/icons/home.svg',
                    allowDrawingOutsideViewBox: true,
                    height: 20,
                    width: 20,
                    color: MyAppTheme.selecttxt,
                  )
                : SvgPicture.asset(
                    'assets/icons/home.svg',
                    allowDrawingOutsideViewBox: true,
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 1
                ? SvgPicture.asset(
                    'assets/icons/profile.svg',
                    allowDrawingOutsideViewBox: true,
                    height: 20,
                    width: 20,
                    color: MyAppTheme.selecttxt,
                  )
                : SvgPicture.asset(
                    'assets/icons/profile.svg',
                    allowDrawingOutsideViewBox: true,
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 2
                ? SvgPicture.asset(
                    'assets/icons/invoice.svg',
                    allowDrawingOutsideViewBox: true,
                    height: 20,
                    width: 20,
                    color: MyAppTheme.selecttxt,
                  )
                : SvgPicture.asset(
                    'assets/icons/invoice.svg',
                    allowDrawingOutsideViewBox: true,
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
            label: 'Invoice',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 3
                ? SvgPicture.asset(
                    'assets/icons/profile.svg',
                    allowDrawingOutsideViewBox: true,
                    height: 20,
                    width: 20,
                    color: MyAppTheme.selecttxt,
                  )
                : SvgPicture.asset(
                    'assets/icons/profile.svg',
                    allowDrawingOutsideViewBox: true,
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        backgroundColor: MyAppTheme.redLightColor,
        selectedLabelStyle: GoogleFonts.catamaran(
          fontWeight: FontWeight.w500,
          height: 1.5,
          fontSize: 13,
          color: MyAppTheme.selecttxt,
        ),
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: GoogleFonts.catamaran(
          fontWeight: FontWeight.w500,
          height: 1.5,
          fontSize: 12,
          color: Colors.white,
        ),
        selectedItemColor: MyAppTheme.selecttxt,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
      drawer: DrawerBar(
        buildContext: context,
      ),
    );
  } //BoxDecoration
}
