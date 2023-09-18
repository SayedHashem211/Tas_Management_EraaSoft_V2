import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_eraa_soft/features/department/data/models/update_department_model.dart';
import 'package:task_management_eraa_soft/features/department/presentation/views/add_department_screen.dart';
import 'package:task_management_eraa_soft/features/home/presentation/views/user_page_screen.dart';
import 'package:task_management_eraa_soft/features/home/presentation/views/user_tasks_screen.dart';

import '../../../department/presentation/views/update_department_screen.dart';
import '../../../logout/presentation/views/logout_screen.dart';
import '../../../user/presentation/views/add_new_user_screen.dart';
import '../../../user/presentation/views/update_user_screen.dart';
class MainUsersScreen extends StatelessWidget {
  const MainUsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFF3FAF9),
        appBar: AppBar(
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
              )
            ],
          ),
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
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.person_outline_rounded),
                text: "USERS",
              ),
              Tab(icon: Icon(Icons.task), text: "Tasks"),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 2.h,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(Icons.add),
              ),
            ),
            const SizedBox(
              width: 18,
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              SizedBox(height: 110.h,),
              ListTile(
                leading: const Icon(Icons.task),
                title: const Text("user tasks"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const UserTasksScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.home_repair_service),
                title: const Text("add department"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddDepartmentScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("add user"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddNewUserScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text("update user"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const UpdateUserScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.home_repair_service),
                title: const Text("update department"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const UpdateDepartmentScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text("Logout"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LogoutScreen();
                  }));
                },
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UserPageScreen(),
            Center(),
          ],
        ),
      ),
    );
  }
}
