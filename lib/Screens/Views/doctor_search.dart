import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/views/doctor_details_screen.dart';
import 'package:medical/screens/views/homepage.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/doctorList.dart';

class DoctorSearch extends StatelessWidget {
  const DoctorSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              PageTransition(
                type: PageTransitionType.fade,
                child: HomePage(),
              ),
            );
          },
          child: Container(
            height: 10.h,
            width: 10.w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/back1.png"),
              ),
            ),
          ),
        ),
        title: Text(
          "Top Doctors",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 18.sp,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              height: 10.h,
              width: 10.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/more.png"),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: DoctorDetailsScreen(),
                  ),
                );
              },
              child: DoctorList(
                distance: "800m Away",
                image: "assets/icons/male-doctor.png",
                title: "Dr. Marcus Horizon",
                numRating: "4.7",
                subtext: "Cardiologist",
              ),
            ),
            DoctorList(
              distance: "800m Away",
              image: "assets/icons/docto3.png",
              title: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist",
            ),
            DoctorList(
              distance: "800m Away",
              image: "assets/icons/doctor2.png",
              title: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist",
            ),
            DoctorList(
              distance: "800m Away",
              image: "assets/icons/black-doctor.png",
              title: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist",
            ),
            DoctorList(
              distance: "800m Away",
              image: "assets/icons/male-doctor.png",
              title: "Dr. Marcus Horizon",
              numRating: "4.7",
              subtext: "Cardiologist",
            ),
          ],
        ),
      ),
    );
  }
}
