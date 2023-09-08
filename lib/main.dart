import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pvr/pages/home_pages.dart';
import 'package:pvr/pages/login_page.dart';
import 'package:pvr/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infoogle.in',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      //home: Homepage()
      // initialRoute: "/home",
      routes: {
        "/": (context) => loginpage(),
        MyRoutes.homeRout:(context) => Homepage(),
        MyRoutes.longinRouts: (context) => loginpage(),
      },
    );
  }
}
