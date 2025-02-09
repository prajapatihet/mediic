import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/views/doctor_details_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/doctorList.dart';
import '../widgets/list_icons.dart';

class FindDoctor extends StatelessWidget {
  const FindDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.06,
            child: Image.asset("assets/icons/back2.png"),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Column(
          children: [
            Text(
              "Find Doctor",
              style: GoogleFonts.inter(
                color: Color.fromARGB(255, 51, 47, 47),
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
        toolbarHeight: 60,
        forceMaterialTransparency: true,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
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
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "Top Doctor",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                ListIcons(icon: "assets/icons/doctor.png", text: "General"),
                ListIcons(icon: "assets/icons/Lungs.png", text: "Lungs Prob"),
                ListIcons(icon: "assets/icons/dentist.png", text: "General"),
                ListIcons(icon: "assets/icons/psychology.png", text: "Psychiatrist"),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                ListIcons(icon: "assets/icons/covid.png", text: "General"),
                ListIcons(icon: "assets/icons/injection.png", text: "Lungs Prob"),
                ListIcons(icon: "assets/icons/cardiologist.png", text: "General"),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "Recommended Doctors",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
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
                distance: "800m away",
                image: "assets/icons/male-doctor.png",
                title: "Dr. Marcus Horizon",
                numRating: "4.7",
                subtext: "Cardiologists",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Text(
                    "Your Recent Doctors",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1400,
                  width: MediaQuery.of(context).size.width * 0.2900,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.100,
                        width: MediaQuery.of(context).size.width * 0.1900,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/icons/male-doctor.png"),
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dr. Marcus"),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1400,
                  width: MediaQuery.of(context).size.width * 0.2900,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.100,
                        width: MediaQuery.of(context).size.width * 0.1900,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/icons/female-doctor.png"),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dr. Maria"),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1400,
                  width: MediaQuery.of(context).size.width * 0.2900,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.100,
                        width: MediaQuery.of(context).size.width * 0.1900,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/icons/black-doctor.png",
                            ),
                            fit: BoxFit.contain,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dr. Luke"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
