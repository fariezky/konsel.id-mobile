// ignore_for_file: unused_import

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:base_project_flutter/constants/constants.dart';
import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/views/bottomNavigation.dart/bottomNavigation.dart';
import 'package:base_project_flutter/views/homePage/components/homepageservices.dart';
import 'package:base_project_flutter/views/homePage/components/topdoctors/top_psikolog.dart';
import 'package:base_project_flutter/views/homePage/components/topdoctors/top_psikolog_details_page.dart';
import 'package:base_project_flutter/views/homePage/homePage.dart';
import 'package:base_project_flutter/views/onBoardingpage/onBoardingPage.dart';
import 'package:base_project_flutter/views/profilePage/edit_details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
            color: tPrimaryColor,
            title: 'in_house_medical',
            debugShowCheckedModeBanner: false,
            //suseInheritedMediaQuery: true,
            theme: ThemeData(
              textTheme: TextTheme(
                headline1: GoogleFonts.poppins(
                    fontSize: 93,
                    fontWeight: FontWeight.w300,
                    letterSpacing: -1.5),
                headline2: GoogleFonts.poppins(
                    fontSize: 58,
                    fontWeight: FontWeight.w300,
                    letterSpacing: -0.5),
                headline3: GoogleFonts.poppins(
                    fontSize: 46, fontWeight: FontWeight.w400),
                headline4: GoogleFonts.poppins(
                    fontSize: 33,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25),
                headline5: GoogleFonts.poppins(
                    fontSize: 23, fontWeight: FontWeight.w400),
                headline6: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.15),
                subtitle1: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.15),
                subtitle2: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1),
                bodyText1: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5),
                bodyText2: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.25),
                button: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.25),
                caption: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.4),
                overline: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.5),
              ),
              //  GoogleFonts.latoTextTheme(
              //   // Theme.of(context).textTheme,
              // ),
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),

            home: BottomNavigation()
            // AnimatedSplashScreen(
            //     duration: 1000,
            //     splash: Image.asset(
            //       Images.LOGO,
            //       scale: 3.7,
            //     ),
            //     splashIconSize: 500,
            //     nextScreen: OnboardingPage(),
            //     splashTransition: SplashTransition.scaleTransition,
            //     backgroundColor: Colors.white),
            );
      },
    );
  }
}
