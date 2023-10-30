import 'package:expense_tracker/screens/contect_us_screen.dart';
import 'package:expense_tracker/screens/privacy_policy.dart';
import 'package:expense_tracker/screens/profile_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors_utils.dart';

class AppDrawerScreen extends StatefulWidget {
  const AppDrawerScreen({super.key});

  @override
  State<AppDrawerScreen> createState() => _AppDrawerScreenState();
}

class _AppDrawerScreenState extends State<AppDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Drawer(
        child: Container(
      height: height,
      color: Colors.white,
      width: width,
      child: ListView(padding: EdgeInsets.zero, children: [
        SizedBox(
          height: height / 6.5,
          child: DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0XFFEF5350),
              /*gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [
                  Color(0xffFF7600),
                  Color(0xffE15628),
                ],
              ),*/
            ),
            child: Text(
              "Money Tracker",
              style: GoogleFonts.notoSerifGujarati(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        ListTile(
          dense: true,
          minVerticalPadding: 0.0,
          visualDensity: VisualDensity(horizontal: 0, vertical: 0.5),
          leading: Icon(Icons.home),
          selectedTileColor: Colors.black54,
          title: Transform.translate(
            offset: Offset(-16, 0),
            child: Text(
              "Home",
              style: GoogleFonts.notoSerifGujarati(
                  fontSize: 18,
                  // color: Colors.red[400],
                  fontWeight: FontWeight.w500),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          dense: true,
          minVerticalPadding: 0.0,
          visualDensity: VisualDensity(horizontal: 0, vertical: 0.5),
          leading: Icon(Icons.policy),
          selectedTileColor: ColorUtil.black,
          selectedColor: ColorUtil.black,
          autofocus: true,
          focusColor: ColorUtil.black,
          tileColor: ColorUtil.black,
          title: Transform.translate(
            offset: Offset(-16, 0),
            child: Text(
              "Privacy Policy",
              style: GoogleFonts.notoSerifGujarati(
                  fontSize: 18,
                  color: ColorUtil.blue,
                  fontWeight: FontWeight.w500),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  //_monthController.getOfflinerData(query: "SELECT * FROM Offlinedata WHERE Date = '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}'");
                  //then add list data
                  return PrivacyPolicy();
                },
              ),
            );
          },
        ),
        ListTile(
            dense: true,
            minVerticalPadding: 0.0,
            visualDensity: VisualDensity(horizontal: 0, vertical: 0.5),
            leading: Icon(Icons.contact_phone),
            selectedTileColor: ColorUtil.black,
            title: Transform.translate(
              offset: Offset(-16, 0),
              child: Text(
                "Contact US",
                style: GoogleFonts.notoSerifGujarati(
                    fontSize: 18,
                    color: ColorUtil.blue,
                    fontWeight: FontWeight.w500),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => ContectUsScreen()));
            }),
        ListTile(
            dense: true,
            minVerticalPadding: 0.0,
            visualDensity: VisualDensity(horizontal: 0, vertical: 0.5),
            leading: Icon(Icons.people),
            selectedTileColor: ColorUtil.black,
            title: Transform.translate(
              offset: Offset(-16, 0),
              child: Text(
                "Profile",
                style: GoogleFonts.notoSerifGujarati(
                    fontSize: 18,
                    color: ColorUtil.blue,
                    fontWeight: FontWeight.w500),
              ),
            ),
            onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => ProfileScreen()))
                }),
      ]),
    ));
  }
}
