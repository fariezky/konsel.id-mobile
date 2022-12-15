import 'package:base_project_flutter/views/profilePage/profile_page.dart';
import 'package:base_project_flutter/constants/constants.dart';
import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../globalFuctions/globalFunctions.dart';

// ignore: must_be_immutable
class AboutScreen extends StatefulWidget {
  AboutScreen({Key? key}) : super(key: key);

  int index = 0;

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
                          child: nameWidgte('Kisah Konsel',context),
                        ),








                        SizedBox(
                          height: 20,
                        ),



                        Container(
                          // height: 30.h,
                          child: Center(
                              child: Image.asset(
                                Images.KISAH,
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
                          'Pada suatu momen...',
                          style: TextStyle(
                              fontSize: isTab(context) ? 9.sp : 10.sp,
                              fontWeight: FontWeight.bold,
                              color: tBlack),
                        ),

                        Text(
                          "Kami melihat banyak orang menjalani hidup dengan menyimpan berbagai pertanyaan dan  "
                              "keresahan, mulai dari bagaimana cara melewati masalah hingga ke mana kaki sebaiknya  "
                              "melangkah. Karena jawabannya tak selalu mudah ditemukan, hal ini kadang menjadi "
                              "kabut gelap yang justru membuat mereka tertahan di satu titik dan kesulitan bergerak "
                              "menuju kondisi lebih baik. ",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          'Oleh karena itu...',
                          style: TextStyle(
                              fontSize: isTab(context) ? 9.sp : 10.sp,
                              fontWeight: FontWeight.bold,
                              color: tBlack),
                        ),

                        Text(
                          "Kami menciptakan Konsel sebagai satu tempat yang menyediakan layanan lengkap. Tidak "
                              "untuk memberikan jawaban atas segala pertanyaan dan keresahan secara langsung, "
                              "tetapi untuk membantu orang-orang menjadi lebih berdaya dan punya kendali atas hidup "
                              "mereka sendiri. Ibaratnya, KONSEL hanya menyediakan lilin serta korek api dan tetap "
                              "mereka sendirilah yang harus menyalakan cahayanya. ",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          'Hingga akhirnya...',
                          style: TextStyle(
                              fontSize: isTab(context) ? 9.sp : 10.sp,
                              fontWeight: FontWeight.bold,
                              color: tBlack),
                        ),

                        Text(
                          "Beberapa orang berhasil menyalakan cahaya dari lilin dan korek api yang kami "
                              "sediakan. Kami sangat lega dan turut bangga. Pertanyaan serta keresahan barangkali "
                              "belum terjawab seluruhnya dan kabut gelap mungkin tak akan langsung sirna "
                              "sepenuhnya. Namun, paling tidak pelan-pelan mereka bisa kembali berjalan. Mereka "
                              "kini telah memiliki bekal untuk berproses dan bergerak menuju titik yang lebih baik. ",

                          style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                          textAlign: TextAlign.justify,
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          'Namun, cerita belum selesai...',
                          style: TextStyle(
                              fontSize: isTab(context) ? 9.sp : 10.sp,
                              fontWeight: FontWeight.bold,
                              color: tBlack),
                        ),

                        Text(
                          "Kami masih ingin menyediakan lilin serta korek api bagi lebih banyak orang. Kami "
                              "masih ingin melihat lebih banyak cahaya menyala. Kami masih ingin lebih banyak orang "
                              "bisa bahagia dan berdaya. ",

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