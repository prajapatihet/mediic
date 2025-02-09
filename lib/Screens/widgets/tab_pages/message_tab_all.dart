import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../views/chat_screen.dart';
import '../message_all_widget.dart';

class MessageTabAll extends StatefulWidget {
  const MessageTabAll({super.key});

  @override
  State<MessageTabAll> createState() => _MessageTabAllState();
}

class _MessageTabAllState extends State<MessageTabAll> with SingleTickerProviderStateMixin {
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
          "Schedule",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 22.sp,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        leading: null,
        automaticallyImplyLeading: false,
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
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  child: ChatScreen(),
                ),
              );
            },
            child: MessageAllWidget(
              image: "assets/icons/male-doctor.png",
              title: "Dr. Marcus Horizon",
              subtext: "I don,t have any fever, but headchace...",
              time: "10.24",
              messageCount: "2",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  child: ChatScreen(),
                ),
              );
            },
            child: MessageAllWidget(
              image: "assets/icons/docto3.png",
              title: "Dr. Alysa Hana",
              subtext: "Hello, How can i help you?",
              time: "10.24",
              messageCount: "1",
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  child: ChatScreen(),
                ),
              );
            },
            child: MessageAllWidget(
              image: "assets/icons/doctor2.png",
              title: "Dr. Maria Elena",
              subtext: "Do you have fever?",
              time: "10.24",
              messageCount: "3",
            ),
          ),
        ],
      ),
    );
  }
}
