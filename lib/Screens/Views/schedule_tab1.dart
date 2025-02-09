import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/schedule_card.dart';

class ScheduleTab1 extends StatelessWidget {
  const ScheduleTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          ScheduleCard(
            confirmation: "Confirmed",
            title: "Dr. Marcus Horizon",
            subText: "Cardiologists",
            date: "26/06/2022",
            time: "10:30 AM",
            image: "assets/icons/male-doctor.png",
          ),
          SizedBox(
            height: 20.h,
          ),
          ScheduleCard(
            confirmation: "Confirmed",
            title: "Dr. Marcus Horizon",
            subText: "Cardiologists",
            date: "26/06/2022",
            time: "2:00 PM",
            image: "assets/icons/female-doctor2.png",
          )
        ],
      ),
    );
  }
}
