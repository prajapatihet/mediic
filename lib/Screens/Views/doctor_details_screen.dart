import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/views/appointment.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/date_select.dart';
import '../widgets/doctorList.dart';
import '../widgets/time_select.dart';

class DoctorDetailsScreen extends StatefulWidget {
  const DoctorDetailsScreen({super.key});

  @override
  State<DoctorDetailsScreen> createState() => _DoctorDetailsScreenState();
}

class _DoctorDetailsScreenState extends State<DoctorDetailsScreen> {
  bool showExtendedText = false;

  void toggleTextVisibility() {
    setState(() {
      showExtendedText = !showExtendedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              DoctorList(
                distance: "800m away",
                image: "assets/icons/male-doctor.png",
                title: "Dr. Marcus Horizon",
                numRating: "4.7",
                subtext: "Cardiologist",
              ),
              SizedBox(
                height: 15.h,
              ),
              GestureDetector(
                onTap: toggleTextVisibility,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        showExtendedText
                            ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free lines do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam consectetur adipiscing elit. Sed euismod ..."
                            : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free ... ",
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 37, 37, 37),
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        showExtendedText ? "Read less" : "Read more",
                        style: TextStyle(
                          color: showExtendedText
                              ? Color.fromARGB(255, 1, 128, 111)
                              : Color.fromARGB(255, 1, 128, 111), // Change color based on visibility
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.11,
                  width: MediaQuery.of(context).size.width * 3,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      DateSelect(date: "21", title: "Mon"),
                      DateSelect(date: "22", title: "Tue"),
                      DateSelect(date: "23", title: "Wed"),
                      DateSelect(date: "24", title: "Thu"),
                      DateSelect(date: "25", title: "Fri"),
                      DateSelect(date: "26", title: "Sat"),
                      DateSelect(date: "27", title: "Sun"),
                      DateSelect(date: "28", title: "Mon"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(
                  color: Colors.black12,
                  thickness: 1,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2400,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2500,
                      width: MediaQuery.of(context).size.width * 0.2900,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TimeSelect(mainText: "09:00 AM"),
                          TimeSelect(mainText: "01:00 AM"),
                          TimeSelect(mainText: "04:00 AM"),
                          TimeSelect(mainText: "07:00 AM"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2500,
                      width: MediaQuery.of(context).size.width * 0.2500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TimeSelect(mainText: "10:00 PM"),
                          TimeSelect(mainText: "02:00 PM"),
                          TimeSelect(mainText: "07:00 PM"),
                          TimeSelect(mainText: "09:00 PM"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2500,
                      width: MediaQuery.of(context).size.width * 0.2500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TimeSelect(mainText: "11:00 AM"),
                          TimeSelect(mainText: "03:00 PM"),
                          TimeSelect(mainText: "08:00 PM"),
                          TimeSelect(mainText: "10:00 AM"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80.h,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.1300,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 247, 247, 247),
                      borderRadius: BorderRadius.circular(18.r),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/icons/chat.png",
                        ),
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Appointment(),
                        ),
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.6300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 2, 179, 149),
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Book Appointment",
                            style: GoogleFonts.poppins(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          )
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
    );
  }
}
