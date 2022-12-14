import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/views/calendar/calendar_widget.dart';
import 'package:base_project_flutter/views/homePage/drawer.dart';
import 'package:base_project_flutter/views/notification/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants/constants.dart';
import '../../responsive.dart';
import '../Psikolog_Page/psikolog_list.dart';
import '../logiPage/login_page.dart';
import 'components/topdoctors/top_psikolog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget titleWidget(BuildContext context, String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: isTab(context) ? 10.sp : 13.sp,
          fontWeight: FontWeight.w500,
          color: tBlue),
    );
  }

  Widget viewallWidget(BuildContext context, VoidCallback function) {
    return GestureDetector(
      onTap: function,
      child: Text(
        "View all",
        style: TextStyle(
            fontSize: isTab(context) ? 7.sp : 10.sp,
            fontWeight: FontWeight.w400),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tWhite,
        appBar: AppBar(
          backgroundColor: tWhite,
          foregroundColor: tPrimaryColor,
          elevation: 0,
          // leading: Image.asset(
          //   Images.MENU,
          //   scale: 4,
          // ),

          centerTitle: true,
          title: Container(
            margin: EdgeInsets.only(top: 10),
            child: Image.asset(
              Images.LOGOKONSEL,
              width: 200,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Twl.navigateTo(context, NotificationScreen());
              },
              child: Image.asset(
                Images.NOTIFICATION,
                scale: 4,
              ),
            ),
          ],
        ),
        drawer: DrawerPage(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    'Hi Lily',
                    style: TextStyle(
                        fontSize: isTab(context) ? 12.sp : 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[800]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    'How are you today?',
                    style: TextStyle(
                        fontSize: isTab(context) ? 10.sp : 13.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[800]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        boxShadow: [tCardBoxShadow],
                        color: tWhite,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 360,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          /// BANNER IMAGE //////////////////////////
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(Images.BANNER2),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                  alignment: Alignment.center,
                                  width:isTab(context)?30 : 150,
                                  height:isTab(context)?40 : 35,
                                  decoration: BoxDecoration(
                                      color: tPrimaryColor,
                                      borderRadius:
                                      BorderRadius.circular(10)),
                                  child: Text(
                                    "Mulai Test",
                                    style: TextStyle(color: tWhite,fontSize:  12.sp),
                                  )
                              ),
                            ],
                          )

                          // SizedBox(
                          //   height: 3.2.h,
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      titleWidget(
                        context, 'Psikolog',
                      ),
                      viewallWidget(context, () {
                        Twl.navigateTo(context, PsikologScreen(),
                        );
                      }),
                    ],
                  ),
                ),
                TopPsikolog(),
                CalendarWidget(),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ));
  }
}
