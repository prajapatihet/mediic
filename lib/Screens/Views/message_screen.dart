import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/views/schedule_tab1.dart';
import 'package:medical/screens/views/schedule_tab2.dart';
import 'package:medical/screens/widgets/tab_pages/message_tab_all.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> with SingleTickerProviderStateMixin {
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
            fontSize: 18.sp,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 100,
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
              )),
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
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                indicatorColor: const Color.fromARGB(255, 241, 241, 241),
                                unselectedLabelColor: const Color.fromARGB(255, 32, 32, 32),
                                labelColor: Color.fromARGB(255, 255, 255, 255),
                                controller: tabController,
                                tabs: const [
                                  Tab(
                                    text: "Upcoming",
                                  ),
                                  Tab(
                                    text: "Completed",
                                  ),
                                  Tab(
                                    text: "Cancel",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TabBarView(
                      controller: tabController,
                      children: const [
                        MessageTabAll(),
                        ScheduleTab1(),
                        ScheduleTab2(),
                      ],
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
