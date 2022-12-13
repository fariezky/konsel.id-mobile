import 'package:base_project_flutter/views/bottomNavigation.dart/bottomNavigation.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/constants.dart';
import '../../../constants/imageConstant.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../../responsive.dart';
import '../../bookAppointment/bookAppointment.dart';
import '../../homePage/homePage.dart';

class PsikologScreen extends StatefulWidget {
  const PsikologScreen({Key? key}) : super(key: key);

  @override
  State<PsikologScreen> createState() => _PsikologScreenState();
}

class _PsikologScreenState extends State<PsikologScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        leading: GestureDetector(onTap: (){
          Twl.navigateTo(context, BottomNavigation());
        },
          child: Icon(Icons.arrow_back,color: tPrimaryColor,),),
        title: Text(
          'List Psikolog',
          style: TextStyle(fontWeight: FontWeight.w600,
            fontSize: isTab(context) ? 10.sp : 13.sp,),
        ),
        centerTitle: true,
        // toolbarHeight: 70,
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: tWhite,
        foregroundColor: tPrimaryColor,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: Image.asset(Images.NOTIFICATION,scale: 4,)
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// SEARCH BOX /////////////
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal:15),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [tCardBoxShadow],
                          // border: Border.all( color: Colors.white)
                        ),

                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            prefixIcon: Container(
                              margin: EdgeInsets.only(top:3),
                              child: Image.asset(
                                Images.SEARCH1,
                                color: Colors.grey[600],
                                width: 50,
                                // fit: Null,
                              ),
                            ),
                            prefixIconConstraints: BoxConstraints(
                              maxHeight: 15,
                              maxWidth: 20,
                            ),
                            border: InputBorder.none,
                            hintText: 'Cari',
                            hintStyle: TextStyle(
                              color: Colors.grey[600],
                              fontSize: isTab(context) ? 8.sp : 13.sp,
                              fontWeight: FontWeight.w500,
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                /// CARD ////////////////////////////////////
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: tlightGray,
                        blurRadius: 5.0,
                        offset: Offset(0,0)
                      )
                    ]
                  ),
                  child: Card(
                    // color: tGray,
                    // elevation: 3,
                    margin: EdgeInsets.symmetric(vertical:5, horizontal: 3),
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
                                margin: EdgeInsets.only(left: 12, top:10),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                  image: DecorationImage(image: NetworkImage('https://placeimg.com/100/100'))
                                ),
                              ),
                              SizedBox(width: 10,),
                              /// Text Group ////////////////////////////////////////
                              Expanded(
                                child: Container(
                                  // color: Colors.teal,
                                  margin: EdgeInsets.only(top:10, left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Narashima, M.Psi',
                                        style: TextStyle(
                                          fontSize: isTab(context) ? 9.sp : 14.sp,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text("Psikolog",
                                        style: TextStyle(
                                          fontSize: isTab(context) ? 9.sp : 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: tlightGray,
                                        ),
                                      ),
                                      Text("10 Years Exp."),
                                      Text("4.5"),
                                    ],
                                  ),
                                ),
                              ),
                              /// Icon Heart/////////////////////////////////////
                              Container(
                                width: 30,
                                height: 30,
                                // color: tBlue,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 12, top:10),
                                decoration: BoxDecoration(
                                  color: tSecondaryGary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: FavoriteButton(
                                  iconSize: 10,
                                  isFavorite: true,
                                  valueChanged: (_isFavourite) {
                                    print('Is Favourite $_isFavourite)');
                                  },
                                ),

                                // width: 35,
                                // height: 35,
                                // margin: EdgeInsets.all(12),
                                // // alignment: Alignment.topRight,
                                // decoration: BoxDecoration(
                                //     color: tGray,
                                //     borderRadius: BorderRadius.circular(5),
                                // ),
                                // child: Image.asset(Images.FAVORITE2),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        /// Next Available
                        Container(
                          margin: EdgeInsets.only(right: 12, left: 12,top: 10),
                          padding: EdgeInsets.only(left: 10,top: 5, bottom: 5,),
                          // color: Colors.yellow,
                          decoration: BoxDecoration(
                            // boxShadow: [tCardBoxShadow],
                            color: tGray,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Next Available At',
                                style: TextStyle(
                                  fontSize: isTab(context) ? 9.sp : 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: tPrimaryColor
                                ),
                              ),
                              Text(
                                  '11:00-12:00',
                                style: TextStyle(
                                    fontSize: isTab(context) ? 9.sp : 10.sp,
                                    color: tBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        /// BUTTON ////////////////////////////////
                        Container(
                          margin: EdgeInsets.only(bottom: 12, right: 12,top: 5),
                          width:double.infinity,
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Twl.navigateTo(
                                  context, BookAppointmentScreen(index: 0,)
                               );
                              },
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                color: tPrimaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "Book Appointment",
                                style: TextStyle(
                                    fontSize: isTab(context) ? 7.sp : 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: tWhite),
                              ),
                            ),
                          ),

                          // color: Colors.purple,
                          // child: Text('Button'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: tlightGray,
                        blurRadius: 5.0,
                        offset: Offset(0,0)
                      )
                    ]
                  ),
                  child: Card(
                    // color: tGray,
                    // elevation: 3,
                    margin: EdgeInsets.symmetric(vertical:5, horizontal: 3),
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
                                margin: EdgeInsets.only(left: 12, top:10),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                  image: DecorationImage(image: NetworkImage('https://placeimg.com/100/100'))
                                ),
                              ),
                              SizedBox(width: 10,),
                              /// Text Group ////////////////////////////////////////
                              Expanded(
                                child: Container(
                                  // color: Colors.teal,
                                  margin: EdgeInsets.only(top:10, left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Narashima, M.Psi',
                                        style: TextStyle(
                                          fontSize: isTab(context) ? 9.sp : 14.sp,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text("Psikolog",
                                        style: TextStyle(
                                          fontSize: isTab(context) ? 9.sp : 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: tlightGray,
                                        ),
                                      ),
                                      Text("10 Years Exp."),
                                      Text("4.5"),
                                    ],
                                  ),
                                ),
                              ),
                              /// Icon Heart/////////////////////////////////////
                              Container(
                                width: 30,
                                height: 30,
                                // color: tBlue,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 12, top:10),
                                decoration: BoxDecoration(
                                  color: tSecondaryGary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: FavoriteButton(
                                  iconSize: 10,
                                  isFavorite: true,
                                  valueChanged: (_isFavourite) {
                                    print('Is Favourite $_isFavourite)');
                                  },
                                ),

                                // width: 35,
                                // height: 35,
                                // margin: EdgeInsets.all(12),
                                // // alignment: Alignment.topRight,
                                // decoration: BoxDecoration(
                                //     color: tGray,
                                //     borderRadius: BorderRadius.circular(5),
                                // ),
                                // child: Image.asset(Images.FAVORITE2),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        /// Next Available
                        Container(
                          margin: EdgeInsets.only(right: 12, left: 12,top: 10),
                          padding: EdgeInsets.only(left: 10,top: 5, bottom: 5,),
                          // color: Colors.yellow,
                          decoration: BoxDecoration(
                            // boxShadow: [tCardBoxShadow],
                            color: tGray,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Next Available At',
                                style: TextStyle(
                                  fontSize: isTab(context) ? 9.sp : 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: tPrimaryColor
                                ),
                              ),
                              Text(
                                  '11:00-12:00',
                                style: TextStyle(
                                    fontSize: isTab(context) ? 9.sp : 10.sp,
                                    color: tBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        /// BUTTON ////////////////////////////////
                        Container(
                          margin: EdgeInsets.only(bottom: 12, right: 12,top: 5),
                          width:double.infinity,
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Twl.navigateTo(
                                  context, BookAppointmentScreen(index: 0,)
                               );
                              },
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                color: tPrimaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "Book Appointment",
                                style: TextStyle(
                                    fontSize: isTab(context) ? 7.sp : 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: tWhite),
                              ),
                            ),
                          ),

                          // color: Colors.purple,
                          // child: Text('Button'),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: tlightGray,
                        blurRadius: 5.0,
                        offset: Offset(0,0)
                      )
                    ]
                  ),
                  child: Card(
                    // color: tGray,
                    // elevation: 3,
                    margin: EdgeInsets.symmetric(vertical:5, horizontal: 3),
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
                                margin: EdgeInsets.only(left: 12, top:10),
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                  image: DecorationImage(image: NetworkImage('https://placeimg.com/100/100'))
                                ),
                              ),
                              SizedBox(width: 10,),
                              /// Text Group ////////////////////////////////////////
                              Expanded(
                                child: Container(
                                  // color: Colors.teal,
                                  margin: EdgeInsets.only(top:10, left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Narashima, M.Psi',
                                        style: TextStyle(
                                          fontSize: isTab(context) ? 9.sp : 14.sp,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Text("Psikolog",
                                        style: TextStyle(
                                          fontSize: isTab(context) ? 9.sp : 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: tlightGray,
                                        ),
                                      ),
                                      Text("10 Years Exp."),
                                      Text("4.5"),
                                    ],
                                  ),
                                ),
                              ),
                              /// Icon Heart/////////////////////////////////////
                              Container(
                                width: 30,
                                height: 30,
                                // color: tBlue,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(right: 12, top:10),
                                decoration: BoxDecoration(
                                  color: tSecondaryGary,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: FavoriteButton(
                                  iconSize: 10,
                                  isFavorite: true,
                                  valueChanged: (_isFavourite) {
                                    print('Is Favourite $_isFavourite)');
                                  },
                                ),

                                // width: 35,
                                // height: 35,
                                // margin: EdgeInsets.all(12),
                                // // alignment: Alignment.topRight,
                                // decoration: BoxDecoration(
                                //     color: tGray,
                                //     borderRadius: BorderRadius.circular(5),
                                // ),
                                // child: Image.asset(Images.FAVORITE2),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                        /// Next Available
                        Container(
                          margin: EdgeInsets.only(right: 12, left: 12,top: 10),
                          padding: EdgeInsets.only(left: 10,top: 5, bottom: 5,),
                          // color: Colors.yellow,
                          decoration: BoxDecoration(
                            // boxShadow: [tCardBoxShadow],
                            color: tGray,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Next Available At',
                                style: TextStyle(
                                  fontSize: isTab(context) ? 9.sp : 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: tPrimaryColor
                                ),
                              ),
                              Text(
                                  '11:00-12:00',
                                style: TextStyle(
                                    fontSize: isTab(context) ? 9.sp : 10.sp,
                                    color: tBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                        /// BUTTON ////////////////////////////////
                        Container(
                          margin: EdgeInsets.only(bottom: 12, right: 12,top: 5),
                          width:double.infinity,
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Twl.navigateTo(
                                  context, BookAppointmentScreen(index: 0,)
                               );
                              },
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                color: tPrimaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "Book Appointment",
                                style: TextStyle(
                                    fontSize: isTab(context) ? 7.sp : 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: tWhite),
                              ),
                            ),
                          ),

                          // color: Colors.purple,
                          // child: Text('Button'),
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

///////////////////////////////////////////////////////////////////////////////

// child: Padding(
//   padding: const EdgeInsets.all(10),
//   child: Column(
//     children: [
//       SizedBox(
//         // width: 40.w,
//         child: Text(
//           'Dr. Narasimha Rao',
//           style: TextStyle(
//             fontSize: isTab(context) ? 9.sp : 14.sp,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//       // SizedBox(height: 5),
//       Text(
//         'Psikolog',
//         style: TextStyle(
//             fontSize: isTab(context) ? 8.sp : 12.sp,
//             fontWeight: FontWeight.w500,
//             color: tBlack),
//       ),
//       // SizedBox(height: 5),
//       Text(
//         '10 Years Exp.',
//         style: TextStyle(
//             fontSize: isTab(context) ? 7.sp : 12.sp,
//             fontWeight: FontWeight.w500,
//             color: tPrimaryColor),
//       ),
//       // SizedBox(height: 5),
//       ///////////////////////////////////////////////////
//       Row(
//         children: [
//           Image.asset(
//             Images.STAR,
//             scale: 4,
//           ),
//           Text(
//             '3.5',
//             style: TextStyle(
//                 fontSize: isTab(context) ? 7.sp : 10.sp,
//                 fontWeight: FontWeight.w600),
//           ),
//         ],
//       ),
//       /////////////////////NEXT AVAILABLE//////////////////////////////////
//       Container(
//         decoration: BoxDecoration(
//           // boxShadow: [tCardBoxShadow],
//           color: tGray,
//           borderRadius: BorderRadius.circular(5),
//         ),
//         padding: EdgeInsets.only(left: 5,top: 5, bottom: 5),
//         margin: EdgeInsets.all(5),
//         width: double.infinity,
//         child: SizedBox(
//           width: 12.w,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Next Available At',
//                 style: TextStyle(
//                   fontSize: isTab(context) ? 9.sp : 10.sp,
//                   color: tPrimaryColor,
//                   // fontWeight: FontWeight.w200,
//                 ),
//
//                 // overflow: TextOverflow.ellipsis,
//               ),
//               Text(
//                 '11:00-12:00',
//                 style: TextStyle(
//                   fontSize: isTab(context) ? 9.sp : 10.sp,
//                   color: tBlack,
//                   // fontWeight: FontWeight.w200,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       /////////////////////////TOMBOL BOOKING/////////////////////////
//       Container(
//         width: double.infinity,
//         alignment: Alignment.centerRight,
//         child: GestureDetector(
//           onTap: () {
//             Twl.navigateTo(
//                 context, BookAppointmentScreen(index: 0,)
//             );
//           },
//           child: Container(
//             margin: EdgeInsets.only(top: 10),
//             padding: EdgeInsets.symmetric(
//                 horizontal: 15, vertical: 5),
//             decoration: BoxDecoration(
//               // border: Border.all(
//               //   color: tPrimaryColor,
//               // ),
//               color: tPrimaryColor,
//               borderRadius: BorderRadius.circular(5),
//             ),
//             child: Text(
//               "Book Appointment",
//               style: TextStyle(
//                   fontSize: isTab(context) ? 7.sp : 13.sp,
//                   fontWeight: FontWeight.w500,
//                   color: tWhite),
//             ),
//           ),
//         ),
//       )
//     ],
//   ),
// ),