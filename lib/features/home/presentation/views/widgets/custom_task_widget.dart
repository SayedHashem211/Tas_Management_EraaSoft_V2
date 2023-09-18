import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';


class CustomTaskWidget extends StatelessWidget {
  const CustomTaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 290.w,
      //height: 100.h,
      decoration : BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 2,
              color: Colors.black26
          )
      ),
      child: Column(
        children: [
          Text("NEW                                                       ",style: GoogleFonts.roboto(
              color: const Color(0xFF5A55CA),
              fontSize: 20.sp, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 4.h,),
          Container(
            height: 1.h,
            width: 280.w,
            color: Colors.black12,
          ),
          SizedBox(height: 8.h,),
          Row(
            children: [
              const SizedBox(width: 3,),
              Container(
                height: 52.h,
                width: 3.w,
                color: const Color(0xFF5A55CA),
              ),
              SizedBox(width: 8.w,),
              Column(
                children: [
                  Row(
                    children: [
                      Text(" Create a High-Intensity Interval....  ",style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 17.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 2.w,),
                      const Icon(Icons.more_vert,size: 20,)
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Text(" Design a 20-minute HIIT workout routine. ",style: GoogleFonts.roboto(
                      color: const Color(0xFF7C808A),
                      fontSize: 15.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 30.h,),
          Row(
            children: [
              SizedBox(width: 8.w,),
              const Icon(Icons.schedule_outlined),
              SizedBox(
                width: 8.w,
              ),
              Text("starts 12/9/2023 - ends 16/9/2023", style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 15.sp, fontWeight: FontWeight.w700))
            ],
          ),
          SizedBox(height: 5.h,),
        ],
      ),
    );
  }
}
