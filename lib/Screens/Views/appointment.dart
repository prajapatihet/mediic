import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/views/doctor_details_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/doctorList.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

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
                child: DoctorDetailsScreen(),
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
        toolbarHeight: 100,
        backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                DoctorList(
                  distance: "800m away",
                  image: "lib/icons/male-doctor.png",
                  title: "Dr. Marcus Horizon",
                  numRating: "4.7",
                  subtext: "Cardiologist",
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Date",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "Change",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0,
                          color: const Color.fromARGB(137, 56, 56, 56),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.1300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 247, 247),
                          borderRadius: BorderRadius.circular(18.r),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/icons/callender.png",
                            ),
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Text(
                          "Wednesday, Jun 23, 2021 | 10:00 AM",
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reasion",
                        style: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        "Change",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.2,
                          color: const Color.fromARGB(137, 56, 56, 56),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Divider(color: Colors.black12),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.1300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 247, 247),
                          borderRadius: BorderRadius.circular(18.r),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/icons/pencil.png",
                            ),
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Chest pain",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Divider(color: Colors.black12),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        "Payment Details",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Consultation",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "\$60",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Admin Fee",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "\$01.00",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Additional Discount",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        "-",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "\$61.00",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Color.fromARGB(255, 4, 92, 58),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Divider(color: Colors.black12),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Payment Method"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Visa",
                          style: GoogleFonts.inter(
                            fontStyle: FontStyle.italic,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 38, 39, 117),
                          ),
                        ),
                        Text(
                          "Change",
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0,
                            color: const Color.fromARGB(137, 56, 56, 56),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.h,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.2100,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Total",
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0,
                                  color: const Color.fromARGB(137, 56, 56, 56),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "  \$61",
                                style: GoogleFonts.inter(
                                  fontSize: 19.sp,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.4300,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 2, 179, 149),
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Book",
                                  style: GoogleFonts.poppins(
                                    fontSize: 15.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
