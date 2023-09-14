part of 'password_cubit.dart';

@immutable
abstract class PasswordState {}

class PasswordInitial extends PasswordState {}

class GeneratePasswordState extends PasswordState {}
class ChangeLenPasswordState extends PasswordState {}
class ChangeIndexState extends PasswordState {}
