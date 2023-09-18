part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class AddUserLoadingState extends UserState {}
class AddUserSuccessState extends UserState {}
class AddUserErrorState extends UserState {}

class ChangeUserTypeState extends UserState {}

class UpdateUserLoadingState extends UserState {}
class UpdateUserSuccessState extends UserState {}
class UpdateUserErrorState extends UserState {}