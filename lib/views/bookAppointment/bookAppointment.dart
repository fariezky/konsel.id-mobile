import 'package:base_project_flutter/constants/constants.dart';
import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:base_project_flutter/views/bookAppointment/components/videoConsultPage.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class BookAppointmentScreen extends StatefulWidget {
  BookAppointmentScreen({Key? key, required this.index}) : super(key: key);

  int index = 0;

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: tWhite,
        leading: GestureDetector(
          onTap: () {
            Twl.navigateBack(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: tPrimaryColor,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Image.asset(
                  Images.FAVOURITE,
                  scale: 3,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  Images.SHARE,
                  scale: 4,
                )
              ],
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
            top: 5,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// SEARCH BOX /////////////


                /// CARD ////////////////////////////////////

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        // BoxShadow(
                        //     color: tlightGray,
                        //     blurRadius: 8.0,
                        //     offset: Offset(-1, -1),
                        // )
                      ]),
                  child: Card(
                    color: Colors.grey[100],
                    elevation: 5,
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                    // width: 60.w,
                    // height: 40.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              /// Image Circle ///////////////////////////////////
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 10),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                    image: DecorationImage(
                                        image: AssetImage(Images.PSIKOLOG1),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),

                              /// Text Group ////////////////////////////////////////
                              Expanded(
                                child: Container(
                                  // color: Colors.teal,
                                  margin: EdgeInsets.only(top: 10, left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Anisha Putri Amalia, M.Psi',
                                        style: TextStyle(
                                            fontSize:
                                            isTab(context) ? 9.sp : 14.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Psikolog",
                                        style: TextStyle(
                                          fontSize:
                                          isTab(context) ? 9.sp : 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: tGray2,
                                        ),
                                      ),
                                      Text("10 Years Exp."),
                                      Text("4.5"),
                                    ],
                                  ),
                                ),
                              ),

                              /// Icon Heart/////////////////////////////////////

                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),

                        /// Next Available
                        Container(
                          margin: EdgeInsets.only(right: 12, left: 12, top: 10),
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 5,
                            bottom: 5,
                          ),
                          // color: Colors.yellow,
                          decoration: BoxDecoration(
                            // boxShadow: [tCardBoxShadow],
                            // color: tGray,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Profile',
                                style: TextStyle(
                                    fontSize: isTab(context) ? 9.sp : 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: tBlack),
                              ),

                              SizedBox(
                                height: 5,
                              ),

                              Text(
                                "Memperoleh kualifikasi sebagai Psikolog Klinis dari Universitas Tarumanagara, "
                                    "Narashima percaya bahwa 'If you don’t say what you think, you’re punishing yourself.' "
                                    "Melakukan percakapan secara terbuka merupakan proses yang penting dalam sesi konseling. "
                                    "Narasimha memiliki pengalaman dalam menangani masalah pada toxic relationship, depresi, "
                                    "Bulliying, kecemasan, pengendalian emosi, dan pencarian makna hidup. "
                                    "Sebagai konselor Konsel, Narasimha memiliki misi untuk membantu klien "
                                    "untuk meningkatkan kualitas hidupnya sehingga bisa lebih bermakna.",

                                style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                                textAlign: TextAlign.justify,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              Text(
                                'Pendidikan',
                                style: TextStyle(
                                    fontSize: isTab(context) ? 9.sp : 10.sp,
                                    fontWeight: FontWeight.bold,
                                    color: tBlack),
                              ),

                              SizedBox(
                                height: 5,
                              ),

                              Text(
                                "- S2 Magister Psikologi Profesi Klinis Universitas Tarumanagara\n"
                                "-   S1 Sarjana Psikologi Universitas Tarumanagara",

                                style: TextStyle(color: tBlack, fontSize: isTab(context) ? 6.sp : 9.sp, ),
                                textAlign: TextAlign.justify,
                              ),

                              SizedBox(
                                height: 20,
                              ),

                            ],
                          ),
                        ),





                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          ///////////////////
        ),
      ),

    );
  }
}
