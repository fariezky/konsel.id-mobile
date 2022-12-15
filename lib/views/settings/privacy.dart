import 'package:base_project_flutter/views/profilePage/profile_page.dart';
import 'package:base_project_flutter/constants/constants.dart';
import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../globalFuctions/globalFunctions.dart';


class PrivacyScreen extends StatefulWidget {
  PrivacyScreen({Key? key}) : super(key: key);

  int index = 0;

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
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
                          child: nameWidgte('Privacy & Policy',context),
                        ),








                        SizedBox(
                          height: 20,
                        ),



                        Container(
                          // height: 30.h,
                          child: Center(
                              child: Image.asset(
                                Images.PRIVACY,
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
                          "Dengan mengakses atau menggunakan layanan Konsel, Anda dianggap setuju untuk terikat dengan Syarat dan Ketentuan ini. Syarat dan Ketentuan akan memengaruhi hak dan kewajiban hukum Anda. Jika tidak setuju untuk terikat dengan Syarat & Ketentuan ini, Anda dapat menghapus akun dan/atau berhenti menggunakan seluruh layanan yang ada di Konsel. ",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 20,
                        ),



                        Text(
                          "Kebijakan Privasi ini adalah bentuk dari komitmen dari kami untuk melindungi, menjaga, dan memelihara privasi dan keamanan dari data dan informasi pribadi Anda saat menggunakan Aplikasi dan Layanan kami. ",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 20,
                        ),



                        Text(
                          "Kebijakan Privasi ini disertakan sebagai satu kesatuan dan bagian tak terpisahkan dari Syarat dan Ketentuan kami. Konsel dan Penyedia Layanan wajib menaati. Kebijakan Privasi ini serta seluruh perjanjian yang terkait. ",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 20,
                        ),


                        Text(
                          "Kebijakan Privasi ini mencakup hal-hal berikut ini: ",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          'Kebijakan Privasi :',
                          style: TextStyle(
                              fontSize: isTab(context) ? 9.sp : 10.sp,
                              fontWeight: FontWeight.bold,
                              color: tBlack),
                        ),

                        Text(
                          "* Data dan Informasi Pribadi\n* Penggunaan Informasi\n* Keamanan dan Integritas Data\n* Kewajiban Pengguna\n* Pembukaan Data dan Informasi\n* Cookies\n* Penyimpanan Data dan Informasi\n* Perubahan\n* Lain-lain\n* Informasi Kontak\n* Pengakuan dan persetujuan",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
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