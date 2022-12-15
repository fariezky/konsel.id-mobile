import 'package:base_project_flutter/constants/constants.dart';
import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:base_project_flutter/views/settings/about.dart';
import 'package:base_project_flutter/views/settings/help.dart';
import 'package:base_project_flutter/views/settings/privacy.dart';

import '../../globalFuctions/globalFunctions.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isVolumeSwitch = false;
  bool isVibrateSwitch = false;

  Widget nameWidgte(String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        title,
        style: TextStyle(
            fontSize: isTab(context) ? 10.sp : 12.sp,
            fontWeight: FontWeight.bold,
            color: tBlackColor
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: tWhite,
        foregroundColor: tPrimaryColor,
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: isTab(context) ? 9.sp : 12.sp,
            fontWeight: FontWeight.w600,color: tPrimaryColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),


          GestureDetector(
            onTap: () {
              Twl.navigateTo(context, AboutScreen());
            },
            child: nameWidgte('About'),
          ),

          nameWidgte('Privacy Policy'),
          nameWidgte('Help and Support'),
          SizedBox(
            height: 350,
          ),




          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [tCardBoxShadow],
              color: tPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Container(
                  child: Container(

                    decoration: BoxDecoration(
                      //  border: Border.all(),
                      color: tPrimaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}
