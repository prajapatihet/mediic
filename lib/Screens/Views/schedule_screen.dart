import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/views/schedule_tab1.dart';
import 'package:medical/screens/views/schedule_tab2.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Top Doctors",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 22.sp,
          ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Container(
              height: 20.h,
              width: 20.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/bell.png"),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Container(
                        // height: 50.h,
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(255, 235, 235, 235)),
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                              child: TabBar(
                                indicator: BoxDecoration(
                                  color: Color.fromARGB(255, 5, 185, 155),
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                indicatorColor: const Color.fromARGB(255, 241, 241, 241),
                                dividerColor: Colors.transparent,
                                unselectedLabelColor: const Color.fromARGB(255, 32, 32, 32),
                                labelColor: Color.fromARGB(255, 255, 255, 255),
                                labelPadding: EdgeInsets.zero,
                                controller: tabController,
                                tabs: const [
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Tab(
                                      text: "Upcoming",
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Tab(
                                      text: "Completed",
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Tab(
                                      text: "Cancel",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: const [
                          ScheduleTab1(),
                          ScheduleTab2(),
                          ScheduleTab2(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
