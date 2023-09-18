import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_eraa_soft/features/home/presentation/views/widgets/custom_grid_label.dart';

class UserPageScreen extends StatelessWidget {
  const UserPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 80.w,
                    height: 2.h,
                    color: Colors.black26,
                  ),
                  Text(
                    "  department name",
                    style: GoogleFonts.roboto(
                        color: Colors.black45,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                  const Icon(Icons.mode_edit_outline)
                ],
              ),
               SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3/2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 10
                    ),
                    itemBuilder: (BuildContext , index){
                      return const CustomGridItem();
                    },
                  itemCount: 4,
                ),
              ),
              // SizedBox(
              //   height: 15.h,
              // ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 80.w,
                    height: 2.h,
                    color: Colors.black26,
                  ),
                  Text(
                    "  department name",
                    style: GoogleFonts.roboto(
                        color: Colors.black45,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                  const Icon(Icons.mode_edit_outline)
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3/2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 10
                  ),
                  itemBuilder: (BuildContext , index){
                    return const CustomGridItem();
                  },
                  itemCount: 4,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 80.w,
                    height: 2.h,
                    color: Colors.black26,
                  ),
                  Text(
                    "  department name",
                    style: GoogleFonts.roboto(
                        color: Colors.black45,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.start,
                  ),
                  const Icon(Icons.mode_edit_outline)
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3/2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 10
                  ),
                  itemBuilder: (BuildContext , index){
                    return const CustomGridItem();
                  },
                  itemCount: 4,
                ),
              )
            ],
          ),
        );
  }
}
