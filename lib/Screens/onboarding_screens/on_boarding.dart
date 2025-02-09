import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/screens/authentication/login_signup.dart';
import 'package:medical/screens/onboarding_screens/on_board1.dart';
import 'package:medical/screens/onboarding_screens/on_board2.dart';
import 'package:medical/screens/onboarding_screens/on_board3.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainOnboardingScreen extends StatefulWidget {
  const MainOnboardingScreen({super.key});

  @override
  State<MainOnboardingScreen> createState() => _MainOnboardingScreenState();
}

class _MainOnboardingScreenState extends State<MainOnboardingScreen> {
  final PageController _controller = PageController();

  bool onLastpage = false;

  List<Widget> onboardingScreens = [
    OnBoardingScreen1(),
    OnBoardingScreen2(),
    OnBoardingScreen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastpage = (index == 2);
              });
            },
            children: onboardingScreens,
          ),
          Container(
            alignment: Alignment(-0.6, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.inter(
                      fontSize: 15.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: onboardingScreens.length,
                  effect: SlideEffect(
                    spacing: 4.0,
                    radius: 4.0,
                    dotWidth: 14.0,
                    dotHeight: 7.0,
                    strokeWidth: 1.5,
                    dotColor: Color.fromARGB(255, 170, 255, 237),
                    activeDotColor: const Color.fromARGB(255, 3, 190, 150),
                  ),
                ),
                onLastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.bottomToTop,
                              child: SelectAuth(),
                            ),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 3, 190, 150),
                            borderRadius: BorderRadius.circular(35.r),
                          ),
                          child: Center(
                            child: Text(
                              "Continue",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 3, 190, 150),
                            borderRadius: BorderRadius.circular(35.r),
                          ),
                          child: Center(
                            child: Text(
                              "Next ",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
