import 'package:base_project_flutter/globalFuctions/globalFunctions.dart';
import 'package:base_project_flutter/responsive.dart';
import 'package:base_project_flutter/views/bottomNavigation.dart/bottomNavigation.dart';
import '../../constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../logiPage/login_page.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var currentPage = 0;

  bool get isLastPage => currentPage == splashData.length - 1;

  var pageControll = PageController();

  late List<Map<String, String>> splashData = [
    {
      'title': 'Dengan Psikolog Terbaik',
      'suntitle':
          'Konsultasi langsung dengan psikolog berlisensi, dan dapatkan pengalaman konsultasi terbaik.',
      'image': 'assets/images/ob3.png',
    },
    {
      'title': 'Lakukan Tes dengan cepat',
      'suntitle':
          'Kenali Diri lebih baik dengan menjawab beberapa soal dengan cepat',
      'image': 'assets/images/ob1.png'
    },
    {
      'title': 'Tanyakan apapun kapanpun',
      'suntitle': 'Kapan saja, dimana saja, jadwalkan sesi sesuai keinginanmu.',
      'image': 'assets/images/ob2.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              PageView.builder(
                  onPageChanged: (page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  controller: pageControll,
                  itemCount: splashData.length,
                  itemBuilder: (context, index) {
                    return OnboardingWidget(
                      title: splashData[index]['title'],
                      subtitle: splashData[index]['suntitle'],
                      image: splashData[index]['image'],
                      titlecolor: tBlack,
                      subtitlecolor: tGray2,
                      height: 10.w,
                    );
                  }),
              Column(
                children: [
                  Spacer(),
                  /// Sliderrr ////////////
                  Container(
                      alignment: Alignment.center,
                      // color: Colors.green,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 145, vertical: 50),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.centerRight,
                                  // width: 50.w,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: List.generate(
                                        splashData.length,
                                        (index) => Container(
                                          margin: EdgeInsets.all(4),
                                          height: isTab(context) ? 3.sp : 4.sp,
                                          width: currentPage == index ? 15.sp : 10.sp,
                                          decoration: BoxDecoration(
                                              color: currentPage == index
                                                  ? tBlack : Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(1)),
                                        ),
                                      )),
                                ),
                                Spacer(),
                              ]))),

                  /// tombol next dan get started ////////////////////////////////////
                  Builder(builder: (context) {
                    if (currentPage == splashData.length - 1) {
                      return Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(bottom: 80),
                        // width: 30.w,
                        child: GestureDetector(
                          onTap: () {
                            Twl.navigateTo(context, LoginPage());
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: isTab(context) ? 30.sp : 150.sp,
                            height: isTab(context) ? 40.sp : 35.sp,
                            decoration: BoxDecoration(
                                color: tPrimaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Get Started",
                              style: TextStyle(color: tWhite, fontSize: 12.sp),
                            ),
                          ),
                        ),
                      );
                    }

                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 80),
                      // width: 30.w,
                      child: GestureDetector(
                        onTap: () {
                          pageControll.nextPage(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease,
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: isTab(context) ? 30.sp : 150.sp,
                          height: isTab(context) ? 40.sp : 35.sp,
                          decoration: BoxDecoration(
                              color: tPrimaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Next",
                            style: TextStyle(color: tWhite, fontSize: 12.sp),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// class OnboardingPage extends StatefulWidget {

// }

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget(
      {Key? key,
      this.title,
      this.subtitle,
      this.image,
      this.title2,
      this.titlecolor,
      this.height,
      this.subtitlecolor})
      : super(key: key);
  final String? title;
  final String? title2;
  final String? subtitle;
  final image;
  final titlecolor;
  final height;
  final subtitlecolor;

  get tprimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: height,
          ),
          Text(
            title!,
            style: TextStyle(
                color: titlecolor,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height / 3,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              subtitle!,
              style: TextStyle(
                  color: subtitlecolor,
                  height: 1.7,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
