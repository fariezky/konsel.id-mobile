import 'package:base_project_flutter/constants/constants.dart';
import 'package:base_project_flutter/constants/imageConstant.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:base_project_flutter/views/profilePage/profile_details_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../globalFuctions/globalFunctions.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<ChangePasswordScreen> {
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
            color: tBlackColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: tPrimaryColor,
        foregroundColor: tWhite,
        centerTitle: true,
        title: Text(
          "Change Password",
          style: TextStyle(
            fontSize: isTab(context) ? 9.sp : 12.sp,
            fontWeight: FontWeight.w600,
            color: tWhite,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextFormField(
              readOnly: false,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                // enabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide(width: 3, color: Colors.grey)
                // ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                // contentPadding: EdgeInsets.only(top: 14),
                hintText: "Kata sandi baru",
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xFFACACAC),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextFormField(
              readOnly: false,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                // enabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide(width: 3, color: Colors.grey)
                // ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                // contentPadding: EdgeInsets.only(top: 14),
                hintText: "Kata sandi baru",
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color(0xFFACACAC),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 340, right: 25),
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [tCardBoxShadow],
              color: tPrimaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Twl.navigateTo(
                        context,
                        ProfileDetailsPage(
                          title: '',
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      //  border: Border.all(),
                      color: tPrimaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    child: Center(
                      child: Text(
                        'Simpan',
                        style: TextStyle(
                          color: tWhite,
                          fontWeight: FontWeight.w300,
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
