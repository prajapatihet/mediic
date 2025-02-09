import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/chat_doctor.dart';
import '../widgets/chat_info.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     PageTransition(
          //       type: PageTransitionType.fade,
          //       child: HomePage(),
          //     ),
          //   );
          // },
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
          "Dr. Marcus Horizon",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 17.sp,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        forceMaterialTransparency: true,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                // Video call icon
                Container(
                  height: 18.h,
                  width: 18.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/video_call.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  height: 18.h,
                  width: 18.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/call.png"),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                // More options icon
                Container(
                  height: 18.h,
                  width: 18.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/icons/more.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.9,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Widget to display chat information
                  const ChatInfo(),
                  SizedBox(
                    height: 22.h,
                  ),
                  // Widget to display doctor's information
                  const ChatDoctor(),
                  SizedBox(
                    height: 20.h,
                  ),
                  // Container for user's introductory message
                  Container(
                    height: MediaQuery.of(context).size.height * 0.035,
                    width: MediaQuery.of(context).size.width * 0.500,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 232, 232),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello. how can i help you?",
                          style: TextStyle(fontSize: 15.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Container for user's message
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.085,
                        width: MediaQuery.of(context).size.width * 0.500,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 131, 113),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0.r),
                            topLeft: Radius.circular(10.r),
                            bottomLeft: Radius.circular(10.r),
                            bottomRight: Radius.circular(10.r),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                                // User's message content
                                child: Text(
                                  "I have suffering from headache and cold for 3 days, I took 2 tablets of dolo,\nbut still pain",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width * 0.055,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/ticks.png"),
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  // Widget to display doctor's information
                  const ChatDoctor(),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Container for user's introductory message
                  Container(
                    height: MediaQuery.of(context).size.height * 0.035,
                    width: MediaQuery.of(context).size.width * 0.500,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 236, 232, 232),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello. how can i help you?",
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Container for user's message
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.09,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 131, 113),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0.r),
                            topLeft: Radius.circular(10.r),
                            bottomLeft: Radius.circular(10.r),
                            bottomRight: Radius.circular(10.r),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                // User's message content
                                child: Text(
                                  "I have suffering from headache and cold for 3 days, I took 2 tablets of dolo,\nbut still pain",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width * 0.05,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/icons/ticks.png"),
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.82,
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
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
                            child: SizedBox(
                              height: 10.h,
                              width: 10.w,
                              child: Image.asset("assets/icons/pin.png"),
                            ),
                          ),
                          prefixIconColor: const Color.fromARGB(255, 3, 190, 150),
                          label: Text("Type message ..."),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
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
