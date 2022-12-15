import 'package:base_project_flutter/views/profilePage/profile_page.dart';
import 'package:base_project_flutter/constants/constants.dart';
import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../globalFuctions/globalFunctions.dart';



class HelpScreen extends StatefulWidget {
  HelpScreen({Key? key}) : super(key: key);

  int index = 0;

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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




                        Center(
                          child: nameWidgte('Mari Terhubung dengan kami',context),
                        ),


                        Center(
                          child: Text(
                            "Banyak cara untuk anda bisa tetap terhubung dengan kami",
                            textAlign: TextAlign.center,
                          ),
                        ),







                        SizedBox(
                          height: 20,
                        ),



                        Container(
                          // height: 30.h,
                          child: Center(
                              child: Image.asset(
                                Images.HELP,
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



                        Text(
                          "Punya kesulitan atau pertanyaan saat menggunakan layanan Konsel? Kami selalu ada di sini untuk menjawab pertanyaanmu. ",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          // height: 5.2.h,
                          padding: const EdgeInsets.symmetric(horizontal: 0.0),
                          child: TextFormField(

                            // controller: _userNameController,
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
                              hintText: "Subjek",
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

                            // controller: _passwordController,


                            style: TextStyle(
                                fontSize: isTab(context) ? 9.sp : 11.sp,
                                color: Color(0xFF606060),
                                fontWeight: FontWeight.w300),
                            // inputFormatters: [
                            //   LengthLimitingTextInputFormatter(10)
                            // ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 10),
                              hintText: "Ketik pesanmu di sini..",

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

                              // Twl.navigateTo(context, BottomNavigation());

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
                                "Kirim pesan",
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
          color: tBlackColor,
        ),
      ),
    );
  }
}