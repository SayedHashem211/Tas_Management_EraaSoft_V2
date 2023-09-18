
// import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:task_management_eraa_soft/features/home/presentation/views/widgets/custom_task_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';
class UserTasksScreen extends StatefulWidget {
  const UserTasksScreen({Key? key}) : super(key: key);

  @override
  State<UserTasksScreen> createState() => _UserTasksScreenState();
}

class _UserTasksScreenState extends State<UserTasksScreen> {
  @override
  Widget build(BuildContext context) {
    var selectedDate = DateTime.now();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              "Today",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 21.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              "11/9/2023",
              style: GoogleFonts.roboto(
                  color: const Color(0xFF7C808A),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
         Row(children: [
           CircularPercentIndicator(
             radius: 20.0,
             lineWidth: 6.0,
             percent: 0.53,
             center: Text("9/20"),
             progressColor: Colors.green,
           ),
           SizedBox(width: 14.w,),
           CircularPercentIndicator(
             radius: 20.0,
             lineWidth: 6.0,
             percent: 0.30,
             center: Text("5/20"),
             progressColor: Colors.orange,
           ),
           SizedBox(width: 14.w,),
           CircularPercentIndicator(
             radius: 20.0,
             lineWidth: 6.0,
             percent: 0.40,
             center: const Text("6/20"),
             progressColor: Colors.red,
           ),
           SizedBox(width: 14.w,),
         ],)
        ],
        leading: Row(
          children: [
            SizedBox(
              width: 5.w,
            ),
            const Icon(Icons.notes_sharp, color: Colors.black, size: 35),
            SizedBox(
              width: 8.w,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h,),
              // Expanded(
              //   child: CalendarTimeline(
              //     showYears: true,
              //     //shrink: true,
              //     initialDate: DateTime.now(),
              //     firstDate: DateTime.now(),
              //     lastDate: DateTime(2100, 11, 20),
              //     onDateSelected: (date) => print(date),
              //     //leftMargin: 20,
              //     monthColor: const Color(0xB2111111).withOpacity(0.7),
              //     dayColor: Colors.grey,
              //     activeDayColor: Colors.white,
              //     activeBackgroundDayColor: Colors.blueGrey,
              //     //dotsColor: Color(0xFF333A47),
              //     selectableDayPredicate: (date) => date.day != 23,
              //     locale: 'en_ISO',
              //   ),
              // ),
              SizedBox(height: 20.h,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTaskWidget(),
              ),
              SizedBox(height: 20.h,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTaskWidget(),
              ),
              SizedBox(height: 20.h,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTaskWidget(),
              ),
              SizedBox(height: 20.h,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTaskWidget(),
              ),
              SizedBox(height: 20.h,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomTaskWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
