import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/views/bottomNavigation.dart/bottomNavigation.dart';

import 'package:base_project_flutter/views/locationPage/locationPage.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../constants/constants.dart';
import 'package:sizer/sizer.dart';

import '../../responsive.dart';
import '../logiPage/login_page.dart';

class Register_Success_Screen extends StatelessWidget {
  Register_Success_Screen({Key? key}) : super(key: key);
  final TextEditingController _otpCodeController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late String username;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(

        child: Form(

          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 1.h,
                ),


                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: Color(0xFFE5E5E5),
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        SizedBox(
                          height: 120,
                        ),
                        Container(
                          // height: 30.h,
                          child: Center(
                              child: Image.asset(
                                Images.PASSWORDCOMPLETE,
                                scale: 2,
                              )
                            // FlutterLogo(
                            //   size:isTab(context)? 40.h :65.h,
                            // ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),


                        Center(
                          child: Container(
                            width: 1000,
                            child: Text(
                              "Selamat Anda baru saja menyelesaikan Registrasi akun. Sekarang Anda sudah bisa menuju ke halaman Login.",
                              style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 30,
                        ),

                        Divider(
                          color: tDividerColor,
                          thickness: 1,
                          height: 2,
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        GestureDetector(
                          onTap: () {
                            Twl.navigateTo(context, LoginPage());
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [tCardBoxShadow],
                                color: tPrimaryColor),
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: isTab(context) ? 11.sp : 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: tWhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),




                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 5.h,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget nameWidgte(String title, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      padding: EdgeInsets.symmetric(horizontal: 10),

      child: Text(
        title,
        style: TextStyle(
            fontSize: isTab(context) ? 12.sp : 14.sp,
            fontWeight: FontWeight.bold,
            color: tBlackColor
        ),
      ),
    );
  }
}

