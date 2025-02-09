import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/authentication/login.dart';
import 'package:medical/screens/authentication/tabs/forgot_using_email.dart';
import 'package:medical/screens/authentication/tabs/forgot_using_phone.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
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
        leading: IconButton(
          icon: SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.08,
            child: SvgPicture.asset(
              "assets/svgIcons/back_arrow_icon.svg",
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.topToBottom,
                child: LogInScreen(),
              ),
            );
          },
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Forgot your password?",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter your email or your phone number, we\nwill send you confirmation code",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
              SizedBox(height: 15.h),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color.fromARGB(255, 235, 235, 235)),
                          color: Color.fromARGB(255, 241, 241, 241),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                              child: TabBar(
                                indicator: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                indicatorColor: const Color.fromARGB(255, 241, 241, 241),
                                unselectedLabelColor: Colors.grey,
                                labelColor: const Color.fromARGB(255, 3, 190, 150),
                                controller: tabController,
                                dividerColor: Colors.transparent,
                                tabs: [
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Tab(
                                      text: "Email",
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Tab(
                                      text: "Phone",
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
                        children: [
                          ForgotUsingEmail(),
                          ForgotUsingPhone(),
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
