import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/views/homepage.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/article.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Articles",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
            color: Color.fromARGB(255, 100, 98, 98),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 60,
        elevation: 0,
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            child: Image.asset(
              "assets/icons/back2.png",
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: HomePage(),
              ),
            );
          },
        ),
        actions: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            child: Image.asset(
              "assets/icons/more.png",
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(),
                child: TextField(
                  textAlign: TextAlign.start,
                  textInputAction: TextInputAction.none,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    focusColor: Colors.black26,
                    fillColor: Color.fromARGB(255, 247, 247, 247),
                    filled: true,
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                        width: MediaQuery.of(context).size.width * 0.01,
                        child: Image.asset(
                          "assets/icons/search.png",
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                    label: Text("Search doctor, drugs, articles..."),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    "Popular Articles",
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 3,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 20.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 173, 131),
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                          ),
                          child: Center(
                            child: Text(
                              "Covid-19",
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 20.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 173, 131),
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                          ),
                          child: Center(
                            child: Text(
                              "Diet",
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 20.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 173, 131),
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                          ),
                          child: Center(
                            child: Text(
                              "Fitness",
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 20.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 2, 173, 131),
                            borderRadius: BorderRadius.all(Radius.circular(12.r)),
                          ),
                          child: Center(
                            child: Text(
                              "Medicines",
                              style: GoogleFonts.poppins(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            //TRENDING ARTICLE START FROM HERE
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    "Trending Article",
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3000,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2700,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.all(Radius.circular(8.r)),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.1200,
                                  width: MediaQuery.of(context).size.width * 0.400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/article1.png",
                                      ),
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.01800,
                                  width: MediaQuery.of(context).size.width * 0.1200,
                                  color: Color.fromARGB(255, 233, 231, 231),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Covid",
                                        style: GoogleFonts.poppins(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 6, 110, 102),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Text(
                                  "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                                  softWrap: true,
                                  style: GoogleFonts.inter(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Row(
                                  children: [
                                    Text(
                                      "Jun 10, 2021 ",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "5min Read",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.sp,
                                        color: Color.fromARGB(255, 0, 136, 102),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2700,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.all(Radius.circular(8.r)),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.1200,
                                  width: MediaQuery.of(context).size.width * 0.400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/capsules.png",
                                      ),
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.01800,
                                  width: MediaQuery.of(context).size.width * 0.1200,
                                  color: Color.fromARGB(255, 233, 231, 231),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Covid",
                                        style: GoogleFonts.poppins(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 6, 110, 102),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Text(
                                  "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                                  softWrap: true,
                                  style: GoogleFonts.inter(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Row(
                                  children: [
                                    Text(
                                      "Jun 10, 2021 ",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "5min Read",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.sp,
                                        color: Color.fromARGB(255, 0, 136, 102),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2700,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.all(Radius.circular(8.r)),
                            border: Border.all(color: Colors.black12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.1200,
                                  width: MediaQuery.of(context).size.width * 0.400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.r),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/capsules2.png",
                                      ),
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * 0.01800,
                                  width: MediaQuery.of(context).size.width * 0.1200,
                                  color: Color.fromARGB(255, 233, 231, 231),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Covid",
                                        style: GoogleFonts.poppins(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(255, 6, 110, 102),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Text(
                                  "Comparing the AstraZeneca and Sinovac COVID-19 Vaccines",
                                  softWrap: true,
                                  style: GoogleFonts.inter(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Row(
                                  children: [
                                    Text(
                                      "Jun 10, 2021 ",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "5min Read",
                                      style: GoogleFonts.poppins(
                                        fontSize: 11.sp,
                                        color: Color.fromARGB(255, 0, 136, 102),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //Container End Here
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    "Related Article",
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            //Import this from widget
            Article(
              image: "assets/images/article1.png",
              dateText: "2 min Read",
              duration: "2 min read",
              title: "Main text",
            ),
          ],
        ),
      ),
    );
  }
}
