import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/models/profileModel.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:base_project_flutter/views/profilePage/change_password.dart';
import 'package:base_project_flutter/views/profilePage/profile_page.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../constants/constants.dart';
import '../../constants/imageConstant.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: tPrimaryColor,
          foregroundColor: tWhite,
          elevation: 1.0,
          centerTitle: true,
          title: Text(
            "Edit Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            children: [
              Container(
                height: 120,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: tPrimaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 57.0),
                        child: Text("Username"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
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
                            hintText: "Rudi Tabudi",
                            // prefixIcon: Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: Container(
                            //     height: 25,
                            //     width: 25,
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(20),
                            //       color: const Color(0xFFE4EDFF),
                            //     ),
                            //     child: Icon(Icons.person_outline, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),

                            // suffixIcon: GestureDetector(
                            //   onTap: (){},
                            //   child: Padding(
                            //     padding: EdgeInsets.all(4.0),
                            //     child: Icon(Icons.edit_outlined, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 57.0),
                        child: Text("Sekolah"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: TextFormField(
                          readOnly: false,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "SMA 1 ZIMBABWE",
                            // prefixIcon: Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: Container(
                            //     height: 25,
                            //     width: 25,
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(20),
                            //       color: const Color(0xFFE4EDFF),
                            //     ),
                            //     child: Icon(Icons.person_outline, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),

                            // suffixIcon: GestureDetector(
                            //   onTap: (){},
                            //   child: Padding(
                            //     padding: EdgeInsets.all(4.0),
                            //     child: Icon(Icons.edit_outlined, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 57.0),
                        child: Text("Email"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: TextFormField(
                          readOnly: false,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "ruditabudi@gmail.com",
                            // prefixIcon: Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: Container(
                            //     height: 25,
                            //     width: 25,
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(20),
                            //       color: const Color(0xFFE4EDFF),
                            //     ),
                            //     child: Icon(Icons.person_outline, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),

                            // suffixIcon: GestureDetector(
                            //   onTap: (){},
                            //   child: Padding(
                            //     padding: EdgeInsets.all(4.0),
                            //     child: Icon(Icons.edit_outlined, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 57.0),
                        child: Text("No Telp"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: TextFormField(
                          readOnly: false,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "+62 87335124758",
                            // prefixIcon: Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: Container(
                            //     height: 25,
                            //     width: 25,
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(20),
                            //       color: const Color(0xFFE4EDFF),
                            //     ),
                            //     child: Icon(Icons.person_outline, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),

                            // suffixIcon: GestureDetector(
                            //   onTap: (){},
                            //   child: Padding(
                            //     padding: EdgeInsets.all(4.0),
                            //     child: Icon(Icons.edit_outlined, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 57.0),
                        child: Text("Jenis Kelamin"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: TextFormField(
                          readOnly: false,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Laki-laki",
                            // prefixIcon: Padding(
                            //   padding: const EdgeInsets.all(4.0),
                            //   child: Container(
                            //     height: 25,
                            //     width: 25,
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(20),
                            //       color: const Color(0xFFE4EDFF),
                            //     ),
                            //     child: Icon(Icons.person_outline, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),

                            // suffixIcon: GestureDetector(
                            //   onTap: (){},
                            //   child: Padding(
                            //     padding: EdgeInsets.all(4.0),
                            //     child: Icon(Icons.edit_outlined, color: Color(0xFF4C7EFF),),
                            //   ),
                            // ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 57.0),
                        child: Text("Password"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: TextFormField(
                          readOnly: true,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: "****************",
                            // fillColor: tPrimaryColor,

                            suffixIcon: GestureDetector(
                              onTap: () {
                                Twl.navigateTo(context, ChangePasswordScreen());
                              },
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Icon(
                                  Icons.edit,
                                  color: tPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        color: tDividerColor,
                        thickness: 1,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //video
                          GestureDetector(
                            onTap: () {
                              Twl.navigateTo(context, ProfilePage());
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 130),
                              decoration: BoxDecoration(
                                //  border: Border.all(),
                                color: tPrimaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              child: Center(
                                child: Text(
                                  'Simpan',
                                  style: TextStyle(
                                      fontSize: isTab(context) ? 7.sp : 10.sp,
                                      fontWeight: FontWeight.w600,
                                      color: tWhite),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: MediaQuery.of(context).size.width * 0.5 - 60,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        Images.PROFILE,
                        scale: 0.2,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 95,
                left: MediaQuery.of(context).size.width * 0.5 - 22,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    // color: tPrimaryColor,
                  ),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
