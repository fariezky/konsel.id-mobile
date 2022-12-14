import 'package:base_project_flutter/responsive.dart';
import 'package:base_project_flutter/views/homePage/homePage.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants/constants.dart';
import '../../constants/imageConstant.dart';
import '../FavoritePage/favorite_psikolog_screen.dart';
import '../appointment/my_appoinment.dart';
import '../profilePage/profile_page.dart';
class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key, this.tabIndexId}) : super(key: key);

  final tabIndexId;
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void checkBottomIndex() {
    setState(() {
      tabIndexs = widget.tabIndexId != null ? widget.tabIndexId : 0;
    });
  }

  var tabIndexs = 0;
  void _onItemTapped(int index) {
    setState(() {
      tabIndexs = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // DrawerList(),
          IndexedStack(
            index: tabIndexs,
            children: [
              HomePage(),
              Favorite_Psikolog_Screen(),
              AppointmentScreen(),
              ProfilePage(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: tGray2,
        selectedItemColor: tPrimaryColor,
        onTap: _onItemTapped,
        currentIndex: tabIndexs,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: isTab(context) ? 20.sp : 20.sp,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          _bottomNavigationBarItem(
            icon: Image.asset(
              Images.HOME2,
              height: isTab(context) ? 15.sp : 15.sp,
              color: tabIndexs == 0 ? tPrimaryColor : null,
            ),
            label: 'Home',
          ),
          _bottomNavigationBarItem(
            icon: Image.asset(
              Images.FAVORITE,
              height: isTab(context) ? 15.sp : 15.sp,
              color: tabIndexs == 1 ? tPrimaryColor : null,
            ),
            label: 'Favorite',
          ),
          _bottomNavigationBarItem(
            icon: Image.asset(
              Images.CALENDER,
              height: isTab(context) ? 15.sp : 15.sp,
              color: tabIndexs == 2 ? tPrimaryColor : null,
            ),
            label: 'Appointment',
          ),
          _bottomNavigationBarItem(
            icon: Image.asset(
              Images.PROFILEIMAGE,
              height: isTab(context) ? 15.sp : 15.sp,
              color: tabIndexs == 3 ? tPrimaryColor : null,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  _bottomNavigationBarItem({required icon, required String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}
