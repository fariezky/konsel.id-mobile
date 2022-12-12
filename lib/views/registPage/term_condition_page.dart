// ignore_for_file: must_be_immutable, unused_field

import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/views/bottomNavigation.dart/bottomNavigation.dart';
import 'package:base_project_flutter/views/registPage/register_success_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import '../../constants/constants.dart';
import 'package:sizer/sizer.dart';
import 'verification.dart';
import '../../responsive.dart';

class TermConditionPage extends StatelessWidget {
  TermConditionPage({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();

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

                        nameWidgte('Syarat & Ketentuan',context),








                        SizedBox(
                          height: 10,
                        ),

                        Center(
                            child: Container(
                              width: 1000,
                              child: Text(
                                "Dengan mengakses atau menggunakan layanan Konsel, Anda dianggap setuju untuk terikat dengan "
                                "Syarat dan Ketentuan ini. Syarat dan Ketentuan akan memengaruhi hak dan kewajiban hukum Anda. "
                                "Jika tidak setuju untuk terikat dengan Syarat & Ketentuan ini, Anda dapat menghapus akun dan/atau "
                                "berhenti menggunakan seluruh layanan yang ada di Konsel.",
                                style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Center(
                          child: Container(
                            width: 1000,
                            child: Text(
                              "Kebijakan Privasi ini adalah bentuk dari komitmen dari kami untuk melindungi, menjaga, dan memelihara privasi dan keamanan dari data dan informasi pribadi Anda saat menggunakan Aplikasi dan Layanan kami.",
                              style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Center(
                          child: Container(
                            width: 1000,
                            child: Text(
                              "Kebijakan Privasi ini disertakan sebagai satu kesatuan dan bagian tak terpisahkan dari Syarat dan Ketentuan kami. Konsel dan Penyedia Layanan wajib menaati. Kebijakan Privasi ini serta seluruh perjanjian yang terkait.",
                              style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),








                        SizedBox(
                          height: 10,
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
                              Twl.navigateTo(context, Register_Success_Screen());
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
                                "Selanjutnya",
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


                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     Text(
                        //       "Belum punya akun? ",
                        //       style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp,),
                        //     ),
                        //     GestureDetector(
                        //       onTap: (){},
                        //       child: Text(
                        //         "Daftar.",
                        //         style: TextStyle(color: tPrimaryColor, fontWeight: FontWeight.bold, fontSize: isTab(context) ? 6.sp : 9.sp,),
                        //       ),
                        //     ),
                        //   ],
                        // ),

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
