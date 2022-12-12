import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants/constants.dart';
import '../../globalFuctions/globalFunctions.dart';
import '../../responsive.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(onTap: (){
          Twl.navigateBack(context);
        },
          child: Icon(Icons.arrow_back,color: tPrimaryColor,),),
        title: Text(
          'Notifications',
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

        ],
      ),
    );
  }
}
