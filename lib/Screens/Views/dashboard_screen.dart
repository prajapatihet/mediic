import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/views/article_page.dart';
import 'package:medical/screens/views/doctor_search.dart';
import 'package:medical/screens/views/find_doctor.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/article.dart';
import '../widgets/banner.dart';
import '../widgets/list_doctor1.dart';
import '../widgets/list_icons.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.03,
              width: MediaQuery.of(context).size.width * 0.06,
              child: SvgPicture.asset(
                "assets/svgIcons/bell_icon.svg",
                height: 30.h,
              ),
            ),
          ),
        ],
        title: Text(
          "Find your desire\nhealth solution",
          style: GoogleFonts.inter(
            color: Color.fromARGB(255, 51, 47, 47),
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        toolbarHeight: 80,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(),
                child: TextField(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: FindDoctor(),
                      ),
                    );
                  },
                  textAlign: TextAlign.start,
                  textInputAction: TextInputAction.none,
                  autofocus: false,
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
                        height: 8.h,
                        width: 8.w,
                        child: Image.asset(
                          "assets/icons/search.png",
                          height: 6.h,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                    label: Text("Search doctor, drugs, articles..."),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            //Body Start fro here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListIcons(icon: "assets/icons/doctor.png", text: "Doctor"),
                ListIcons(icon: "assets/icons/Pharmacy.png", text: "Pharmacy"),
                ListIcons(icon: "assets/icons/Hospital.png", text: "Hospital"),
                ListIcons(icon: "assets/icons/ambulance.png", text: "Ambulance"),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const BannerWidget(),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Doctor",
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: DoctorSearch(),
                        ),
                      );
                    },
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        color: const Color.fromARGB(255, 3, 190, 150),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: SizedBox(
                height: 190.h,
                width: 400.w,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListDoctor1(
                      distance: "130m Away",
                      image: "assets/icons/male-doctor.png",
                      title: "Dr. Marcus Horizon",
                      numRating: "4.7",
                      subtext: "Cardiologist",
                    ),
                    ListDoctor1(
                      distance: "130m Away",
                      image: "assets/icons/docto3.png",
                      title: "Dr. Maria Elena",
                      numRating: "4.6",
                      subtext: "Psychologist",
                    ),
                    ListDoctor1(
                      distance: "2km away",
                      image: "assets/icons/doctor2.png",
                      title: "Dr. Stevi Jessi",
                      numRating: "4.8",
                      subtext: "Orthopedist",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Health article",
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: ArticlePage(),
                        ),
                      );
                    },
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        color: const Color.fromARGB(255, 3, 190, 150),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            //Article banner here import from widget>article
            Article(
              image: "assets/images/article1.png",
              dateText: "Jun 10, 2021 ",
              duration: "5min read",
              title: "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
            ),
          ],
        ),
      ),
    );
  }
}
