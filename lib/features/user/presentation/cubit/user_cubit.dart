

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/constants.dart';
import '../../../../core/networking/remote/dio_helper.dart';
import '../../data/models/add_user_model.dart';
import '../../data/models/update_user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  int buttonValue = 0;

  changeUserValue(value) {
    if(value == "Admin") {
      buttonValue = 0;
    }
    if(value == "User") {
      buttonValue = 1;
    }
    if(value == "Manager") {
      buttonValue = 2;
    }
    emit(ChangeUserTypeState());
  }


UserModel? userModel;


  static UserCubit get(context) => BlocProvider.of(context);

  Future<void> addUser(String name, String email, String password, String phone) async {
    emit(AddUserLoadingState());

      await DioHelper.postData(url: "user/store", data: {
        'name': name,
        'email': email,
        'phone': phone,
        "password": password,
        'user_type': buttonValue.toString(),
      }).then((value) {
        userModel = UserModel.fromJson(value.data);
        print(value.data);
        emit(AddUserSuccessState());

    }).catchError((error) {
      // Handle any errors that may occur
      emit(AddUserErrorState());
      debugPrint('Error during add user: ${error.toString()}');
    });
  }


  int buttonValueUpdate = 0;

  UpdateUserModel? updateUserModel;

  Future<void> updateUser(String name, String email, String password, String phone,
   String userStatus,
      String departmentID, ) async {
    emit(UpdateUserLoadingState());
    UserModel? userModel;
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://tasksapp.integration25.com/api/',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
      ),
    );

    try {
      final response = await dio.post(
        'user/update/${userModel?.data?.id}',
        data: {
          'name': name,
          'email': email,
          'phone': phone,
          "password": password,
          'user_type': buttonValueUpdate.toString(),
          'user_status': userStatus,
          'department_id': departmentID,
        },
      );
      updateUserModel = UpdateUserModel.fromJson(response.data);
      emit(UpdateUserSuccessState());
    } catch (e) {
      // Handle any errors that may occur
      emit(UpdateUserErrorState());
      debugPrint('Error during update user: ${e.toString()}');
    }
  }
}
