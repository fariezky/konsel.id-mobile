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
          fontSize: isTab(context) ? 24.sp : 15.sp,
          fontWeight: FontWeight.w600,
          color: tPrimaryColor),
    );
  }

  Widget viewallWidget(BuildContext context, VoidCallback function) {
    return GestureDetector(
      onTap: function,
      child: Text(
        "View all",
        style: TextStyle(
          decoration: TextDecoration.underline,
            color: tPrimaryColor,
            fontSize: isTab(context) ? 21.sp : 12.sp,
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
                color: tPrimaryColor,
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
                Stack(alignment: Alignment.center, children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    // padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        boxShadow: [tCardBoxShadow],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(Images.BANNER2),
                            fit: BoxFit.cover),
                      ),
                      width: isTab(context) ? 90.w : 92.w,
                      height: isTab(context) ? 20.h : 25.h,
                      child: Container(
                        margin: EdgeInsets.only(top: 15, left: 20),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Hi Karmila',
                              style: TextStyle(
                                  fontSize: isTab(context) ? 27.sp : 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),

                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      titleWidget(context, 'Psikolog',
                      ),
                      viewallWidget(context, () {
                        Twl.navigateTo(context, PsikologScreen(),
                        );
                      }),
                    ],
                  ),
                ),
                TopPsikolog(),
                // CalendarWidget(),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ));
  }
}
