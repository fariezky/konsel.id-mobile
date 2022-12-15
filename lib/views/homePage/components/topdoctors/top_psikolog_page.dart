import 'package:base_project_flutter/views/homePage/components/topdoctors/top_psikolog_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/imageConstant.dart';
import '../../../../globalFuctions/globalFunctions.dart';
import '../../../../responsive.dart';
import '../../../bookAppointment/bookAppointment.dart';

class TopPsikologScreen extends StatefulWidget {
  const TopPsikologScreen({Key? key}) : super(key: key);

  @override
  State<TopPsikologScreen> createState() => _TopPsikologScreenState();
}

class _TopPsikologScreenState extends State<TopPsikologScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(left: 20),
      height: 28.h,
      child: ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // color: Colors.teal,
              margin: EdgeInsets.only(left: 7),
              child: GestureDetector(
                onTap: () {
                  Twl.navigateTo(context, TopPsikologDetailsPage());
                },

                /// CARD ////////////////////////////////////
                child: Card(
                  // color: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [tCardBoxShadow],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 12),
                      child: Row(
                        children: [
                          /// TEXT /////////////////////////
                          Container(
                            // margin: EdgeInsets.only(top: 20),
                            padding: EdgeInsets.only(left: 10),
                            child: SizedBox(
                              width: 42.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Anisha Putri Amalia, M.Psi',
                                    style: TextStyle(
                                        fontSize: isTab(context) ? 9.sp : 12.sp,
                                        fontWeight: FontWeight.w600,
                                        ),
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "Psikolog",
                                    style: TextStyle(
                                      fontSize: isTab(context) ? 9.sp : 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: tGray2,
                                    ),
                                  ),
                                  Text("10 Years Exp."),
                                  SizedBox(height:5),
                                  Row(
                                    children: [
                                      Image.asset(
                                        Images.STAR,
                                        scale: 4.5,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '3.5',
                                        style: TextStyle(
                                            fontSize: isTab(context) ? 7.sp : 10.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Twl.navigateTo(
                                          context,
                                          BookAppointmentScreen(
                                            index: 0,
                                          ));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 20),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 6),
                                      decoration: BoxDecoration(
                                          color: tPrimaryColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Book",
                                        style: TextStyle(
                                            fontSize: isTab(context) ? 7.sp : 10.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          /// FOTO ///////////////////
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 12, top: 10),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                    image: DecorationImage(
                                        image: AssetImage(Images.PSIKOLOG1),
                                        fit: BoxFit.cover)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
