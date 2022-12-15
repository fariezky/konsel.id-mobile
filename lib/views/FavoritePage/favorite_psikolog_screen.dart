import 'package:base_project_flutter/constants/constants.dart';
import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/models/servicesModel.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../bookAppointment/bookAppointment.dart';
import '../bottomNavigation.dart/bottomNavigation.dart';

class Favorite_Psikolog_Screen extends StatelessWidget {
  const Favorite_Psikolog_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        title: Text(
          'Favorite Psikolog',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: isTab(context) ? 10.sp : 13.sp,
          ),
        ),

        centerTitle: true,
        // toolbarHeight: 70,
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: tWhite,
        foregroundColor: tPrimaryColor,
        actions: [
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
                Container(
                  // padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [tCardBoxShadow],
                          // border: Border.all( color: Colors.white)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              prefixIcon: Container(
                                margin: EdgeInsets.only(top: 3),
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
                              )),
                        ),
                      )
                    ],
                  ),
                ),

                /// CARD ////////////////////////////////////
                SizedBox(
                  height: 20,
                ),
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
                                        image: NetworkImage(
                                            'https://placeimg.com/100/100'))),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Narashima, M.Psi',
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
                                margin: EdgeInsets.only(right: 12, top: 10),
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
                          margin: EdgeInsets.only(right: 12, left: 12, top: 10),
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 5,
                            bottom: 5,
                          ),
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
                                    color: tPrimaryColor),
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
                          margin:
                              EdgeInsets.only(bottom: 12, right: 12, top: 5),
                          width: double.infinity,
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Twl.navigateTo(
                                  context,
                                  BookAppointmentScreen(
                                    index: 0,
                                  ));
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
                                        image: NetworkImage(
                                            'https://placeimg.com/100/100'))),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Narashima, M.Psi',
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
                                margin: EdgeInsets.only(right: 12, top: 10),
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
                          margin: EdgeInsets.only(right: 12, left: 12, top: 10),
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 5,
                            bottom: 5,
                          ),
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
                                    color: tPrimaryColor),
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
                          margin:
                              EdgeInsets.only(bottom: 12, right: 12, top: 5),
                          width: double.infinity,
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Twl.navigateTo(
                                  context,
                                  BookAppointmentScreen(
                                    index: 0,
                                  ));
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
                                        image: NetworkImage(
                                            'https://placeimg.com/100/100'))),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Narashima, M.Psi',
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
                                margin: EdgeInsets.only(right: 12, top: 10),
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
                          margin: EdgeInsets.only(right: 12, left: 12, top: 10),
                          padding: EdgeInsets.only(
                            left: 10,
                            top: 5,
                            bottom: 5,
                          ),
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
                                    color: tPrimaryColor),
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
                          margin:
                              EdgeInsets.only(bottom: 12, right: 12, top: 5),
                          width: double.infinity,
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: () {
                              Twl.navigateTo(
                                  context,
                                  BookAppointmentScreen(
                                    index: 0,
                                  ));
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
