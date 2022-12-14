// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:base_project_flutter/views/profilePage/profile_details_page.dart';
import 'package:base_project_flutter/views/settings/settings.dart';
import 'package:sizer/sizer.dart';
import '../../constants/constants.dart';
import 'package:flutter/material.dart';
import '../../constants/imageConstant.dart';
import '../logiPage/login_page.dart';
import '../recordsPage/recordsPage.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  String title = 'Rudi Tabudi';

  Widget profileWidget(BuildContext context) {
    return Container(
      height: 180,
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 10, right: 10, bottom: 20, left: 10),
      decoration: BoxDecoration(
        color: tPrimaryColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(15),
          topLeft: Radius.circular(15),
          bottomLeft: Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: tWhite,
                      image: DecorationImage(
                        scale: 1,
                        image: AssetImage(Images.PROFILE),
                      ),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 2, color: tWhite)),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: tWhite,
                    fontWeight: FontWeight.w600,
                    fontSize: isTab(context) ? 11.sp : 14.sp,
                  ),
                ),
                Text(
                  'SMA 1 ZIMBABWE',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w400,
                    fontSize: isTab(context) ? 9.sp : 10.sp,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () => Twl.navigateTo(
                  context,
                  ProfileDetailsPage(
                    title: title,
                  ),
                ),
                child: Image.asset(
                  Images.EDITFIX,
                  scale: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget optionsWidget(BuildContext context, String title, String imageUrl) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 40,
          ),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: tPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: isTab(context) ? 11.sp : 12.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget nameWidgte(String title, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: TextStyle(
            fontSize: isTab(context) ? 11.sp : 12.sp,
            fontWeight: FontWeight.bold,
            color: tBlackColor),
      ),
    );
  }

  Widget settingsWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Twl.navigateTo(context, LoginPage());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Container(
          child: Container(
            decoration: BoxDecoration(
              //  border: Border.all(),
              color: tPrimaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
            child: Center(
              child: Text(
                'Logout',
                style: TextStyle(
                  color: tWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: isTab(context) ? 9.sp : 12.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tWhite,
        foregroundColor: tPrimaryColor,
        elevation: 1.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: isTab(context) ? 11.sp : 14.sp,
              color: tPrimaryColor),
        ),
      ),
      body: SingleChildScrollView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            profileWidget(context),
            // SizedBox(
            //   height: 10,
            // ),
            nameWidgte('About', context),
            nameWidgte('Privacy Policy', context),
            nameWidgte('Help and Support', context),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: tDividerColor,
                thickness: 1,
                height: 2,
              ),
            ),
            SizedBox(height: 15),

            SizedBox(height: 15),
            GestureDetector(
              onTap: () => Twl.navigateTo(context, SettingPage()),
              child: settingsWidget(context),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
