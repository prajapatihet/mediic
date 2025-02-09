import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/widgets/profile_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 226, 215),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 110.w,
                    height: 110.h,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withValues(alpha: 0.1),
                        )
                      ],
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage("assets/icons/avatar.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/icons/camra.png"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Amelia Renata",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0420,
                          width: MediaQuery.of(context).size.width * 0.1500,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/callories.png"),
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        Text(
                          "Calories",
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "103lbs",
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50.h,
                    width: 1.w,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0420,
                          width: MediaQuery.of(context).size.width * 0.1500,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/weight.png"),
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        Text(
                          "Weight",
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "756cal",
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 50.h,
                    width: 1.w,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 0.2500,
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.0420,
                          width: MediaQuery.of(context).size.width * 0.1500,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/heart.png"),
                              filterQuality: FilterQuality.high,
                            ),
                          ),
                        ),
                        Text(
                          "Heart rate",
                          style: GoogleFonts.poppins(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 245, 243, 243),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "215bpm",
                          style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 550.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 24.h,
                  ),
                  ProfileList(
                    image: "assets/icons/heart2.png",
                    title: "My Saved",
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                    child: Divider(),
                  ),
                  ProfileList(
                    image: "assets/icons/appoint.png",
                    title: "Appointment",
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                    child: Divider(),
                  ),
                  ProfileList(
                    image: "assets/icons/chat.png",
                    title: "FAQs",
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                    child: Divider(),
                  ),
                  ProfileList(
                    image: "assets/icons/pay.png",
                    title: "Payment Method",
                    color: Colors.black87,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                    child: Divider(),
                  ),
                  ProfileList(
                    image: "assets/icons/logout.png",
                    title: "Log out",
                    color: Colors.red,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
