import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';



class CustomGridItem extends StatelessWidget {
  const CustomGridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 160.w,
      height: 90.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 2,
              color: Colors.black26
          )
      ),
      child: Row(
          children: [
            Container(
              color: const Color(0xFF5A55CA),
              height: 65,
              width: 3,
            ),
            const SizedBox(width: 4,),
            Column(
              children: [
                Text(" Employee name",style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18.sp, fontWeight: FontWeight.w700)),
                const SizedBox(height: 2,),
                Text("ADMIN                      ",style : GoogleFonts.roboto(
                    color: const Color(0xFF5A55CA),
                    fontSize: 12.sp, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 2,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.email_outlined,size: 16,),
                    const SizedBox(width: 2,),
                    Text("user email               ",style : GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 13.sp, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 2,),


                  ],
                ),
                const SizedBox(height: 4,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.call_outlined,size: 16,),
                    const SizedBox(width: 2,),
                    Text("user email               ",style : GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 13.sp, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 2,),


                  ],
                )
              ],
            )
          ]
      ),
    );
  }
}
