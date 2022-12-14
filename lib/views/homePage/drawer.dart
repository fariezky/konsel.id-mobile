import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:base_project_flutter/views/recordsPage/components/test.dart';
import 'package:base_project_flutter/views/settings/settings.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'package:sizer/sizer.dart';

import '../../constants/imageConstant.dart';
import '../myDoctorPage/myDoctor.dart';
import '../profilePage/profile_details_page.dart';
import '../recordsPage/recordsPage.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

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
              color: tWhite,
              fontWeight: FontWeight.w500,
              fontSize: isTab(context) ? 9.sp : 12.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget settingsWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Twl.navigateTo(context, SettingPage());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Row(
          children: [
            Icon(
              Icons.settings_outlined,
              color: tWhite,
            ),
            SizedBox(width: 20),
            Text(
              'Settings',
              style: TextStyle(
                color: tWhite,
                fontWeight: FontWeight.w500,
                fontSize: isTab(context) ? 9.sp : 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      backgroundColor: tPrimaryColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Twl.navigateBack(context),
              child: Image.asset(
                Images.CANCEL,
                height: 40,
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, right: 10, bottom: 20, left: 10),
              decoration: BoxDecoration(
                color: tWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft:Radius.circular(15)
                ),
              ),
              child: Center(
                // child: Padding(
                //   padding: const EdgeInsets.only(
                //     left: 20,
                //   ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          GestureDetector(
                            onTap: () => Twl.navigateTo(
                                context,
                                ProfileDetailsPage(
                                  title: 'Rudi Tabudi',
                                )
                            ),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: tWhite,
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage(Images.PROFILE), scale: 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Rudi Tabudi',
                        style: TextStyle(
                          fontSize: isTab(context) ? 11.sp : 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),Text(
                        'SMA 1 ZIMBABWE',
                        style: TextStyle(
                          fontSize: isTab(context) ? 11.sp : 14.sp,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                          onTap: () {
                            Twl.navigateTo(context, TestScreen());
                          },
                      child: Container(
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
                        ),
                      )
                      )
                    ],
                  ),
                ),
              ),
            Divider(
              height: 4,
              color: tWhite,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}

