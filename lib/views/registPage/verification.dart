// ignore_for_file: must_be_immutable

import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/views/bottomNavigation.dart/bottomNavigation.dart';

import 'package:base_project_flutter/views/locationPage/locationPage.dart';
import 'package:base_project_flutter/views/registPage/term_condition_page.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../constants/constants.dart';
import 'package:sizer/sizer.dart';


import '../../responsive.dart';
import '../logiPage/login_page.dart';
// import 'resetPage.dart';

class VerificationPage extends StatelessWidget {
  VerificationPage({Key? key}) : super(key: key);
  final TextEditingController _otpCodeController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  late String username;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tWhite,
        foregroundColor: tPrimaryColor,
        elevation: 1.0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                SizedBox(
                  height: 1.0.h,
                ),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    margin: EdgeInsets.only(top: 20,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: tWhite,
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Verifikasi',
                          style: TextStyle(
                              color: tBlack,
                              fontSize: isTab(context) ? 13.sp : 16.sp,
                              fontWeight: FontWeight.w700),
                        ),

                        Text(
                          'Masukkan verifikasi kode',
                          style: TextStyle(

                              color: tBlack,
                              fontSize: isTab(context) ? 9.sp : 11.sp,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        PinCodeTextField(
                          appContext: context,
                          textStyle: TextStyle(
                            color: tBlack,
                            fontWeight: FontWeight.w700,
                            fontSize: isTab(context) ? 16.sp : 19.sp,
                          ),

                          length: 6,
                          obscureText: false,
                          obscuringCharacter: '*',

                          blinkWhenObscuring: true,
                          animationType: AnimationType.fade,
                          validator: (v) {
                            if (v!.length < 6 || v.length == 0) {
                              return "OTP tidak cocok";
                            } else {
                              return null;
                            }
                          },

                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            activeColor: Color(0xFFFAFAFA),
                            selectedColor: Color(0xFFFAFAFA),
                            selectedFillColor: Color(0xFFFAFAFA),
                            inactiveFillColor: Color(0xFFFAFAFA),
                            inactiveColor: Color(0xFFFAFAFA),
                            borderRadius: BorderRadius.circular(12),
                            fieldHeight: isTab(context) ? 9.w : 12.w,
                            fieldWidth: isTab(context) ? 9.w : 12.w,
                            activeFillColor:
                            hasError ? Color(0xFFFAFAFA) : Color(0xFFFAFAFA),
                          ),
                          cursorColor: tBlack,
                          animationDuration: Duration(milliseconds: 300),
                          enableActiveFill: true,
                          //errorAnimationController: errorController,
                          controller: _otpCodeController,
                          keyboardType: TextInputType.number,
                          boxShadows: [tBoxShadow],
                          onCompleted: (v) {
                            print("Completed");
                          },
                          onTap: () {
                            print("Pressed");
                          },
                          onChanged: (value) {
                            print(value);
                            // setState(() {
                            //   currentText = value;
                            // });
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");

                            return true;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Belum mendapat kode? ",
                              style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp,),
                            ),
                            GestureDetector(
                              onTap: (){},
                              child: Text(
                                "Kirim ulang dalam 01:00",
                                style: TextStyle(color: tPrimaryColor, fontWeight: FontWeight.bold, fontSize: isTab(context) ? 6.sp : 9.sp,),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 150,
                        ),

                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Twl.navigateTo(context, TermConditionPage());
                              // reset pw
                            }

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [tCardBoxShadow],
                              color: tPrimaryColor,
                              // color: tPrimaryColor
                            ),
                            child: Center(
                              child: Text(
                                "Confirm",
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
                          height: 5.h,
                        ),

                        SizedBox(
                          height: 8.5.h,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sudah punya akun? ",
                      style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp,),
                    ),
                    GestureDetector(
                      onTap: (){
                        Twl.navigateTo(context, LoginPage());
                      },
                      child: Text(
                        "Login.",
                        style: TextStyle(color: tPrimaryColor, fontWeight: FontWeight.bold, fontSize: isTab(context) ? 6.sp : 9.sp,),
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
