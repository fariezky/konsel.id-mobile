// ignore_for_file: must_be_immutable, unused_field

import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';

import 'package:base_project_flutter/views/bottomNavigation.dart/bottomNavigation.dart';
import 'package:base_project_flutter/views/logiPage/lupa_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/constants.dart';
import 'package:sizer/sizer.dart';

import '../../responsive.dart';
import '../registPage/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();

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
                  height: 11.h,
                ),
                Container(
                  // height: 30.h,
                  child: Center(
                      child: Image.asset(
                    Images.MEDICOLOGO,
                    scale: 2.8,
                  )
                      // FlutterLogo(
                      //   size:isTab(context)? 40.h :65.h,
                      // ),
                      ),
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
                        Padding(
                          // height: 5.2.h,
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Nama pengguna, atau email harus diisi";
                              } else {
                                return null;
                              }
                            },
                            controller: _userNameController,
                            //_phoneNumberController,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                                fontSize: isTab(context) ? 10.sp : 12.sp,
                                color: Color(0xFF606060),
                                fontWeight: FontWeight.w300),
                            // inputFormatters: [
                            //   LengthLimitingTextInputFormatter(10)
                            // ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: "Nama pengguna, atau email",
                              // prefix: Text('+91 ',style: TextStyle(color: tBlack),),

                              hintStyle: TextStyle(
                                  fontSize: isTab(context) ? 9.sp : 11.sp,
                                  color: Color(0xFF606060),
                                  fontWeight: FontWeight.w300),
                              // hintText: '1234567890',
                              fillColor: Color(0xFFFAFAFA),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: tBorderColor, width: 1.5),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          // height: 5.2.h,
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Kata sandi harus diisi";
                              } else {
                                return null;
                              }
                            },
                            controller: _passwordController,

                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                                fontSize: isTab(context) ? 9.sp : 11.sp,
                                color: Color(0xFF606060),
                                fontWeight: FontWeight.w300),
                            // inputFormatters: [
                            //   LengthLimitingTextInputFormatter(10)
                            // ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: "Kata sandi",
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Color(0xFFACACAC),
                              ),
                              // prefix: Text('+91 ',style: TextStyle(color: tBlack),),

                              hintStyle: TextStyle(
                                  fontSize: isTab(context) ? 9.sp : 11.sp,
                                  color: Color(0xFF606060),
                                  fontWeight: FontWeight.w300),
                              // hintText: '1234567890',
                              fillColor: Color(0xFFFAFAFA),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: tBorderColor, width: 1.5),
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // LupaPasswordPage
                                Twl.navigateTo(context, LupaPasswordScreen());
                              },
                              child: Text(
                                "Lupa Password?",
                                style: TextStyle(
                                  color: tPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: isTab(context) ? 6.sp : 9.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
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
                            if (_formKey.currentState!.validate()) {
                              Twl.navigateTo(context, BottomNavigation());
                            }
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Belum punya akun? ",
                              style: TextStyle(
                                color: tBlack,
                                fontSize: isTab(context) ? 6.sp : 9.sp,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Twl.navigateTo(context, Register_Screen());
                              },
                              child: Text(
                                "Daftar.",
                                style: TextStyle(
                                  color: tPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: isTab(context) ? 6.sp : 9.sp,
                                ),
                              ),
                            ),
                          ],
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
}
