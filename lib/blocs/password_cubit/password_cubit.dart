import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordInitial());

  static PasswordCubit get(context) => BlocProvider.of(context);

  double len = 10;
  String password = "Generate Password";
  int index= 0;

  void changeLen(value) {
    len = value;
    emit(ChangeLenPasswordState());
  }

  void changeIndex(int chooseIndex ){
    index = chooseIndex;
    emit(ChangeIndexState());
  }

  void generateRandomPassword() {
    const _allChars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    const _smallChars = 'abcdefghijklmnopqrstuvwxyz';
    const _caplitalChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    Random _rnd = Random();
    print("Password ");
    if (index == 0) {
      password = _getRandomString(len.toInt(), _allChars, _rnd);
    }else if (index == 1){
      password = _getRandomString(len.toInt(), _smallChars, _rnd);
    }else{
      password = _getRandomString(len.toInt(), _caplitalChars, _rnd);

    }
    emit(GeneratePasswordState());
  }

  String _getRandomString(int length, chars, rnd) =>
      String.fromCharCodes(Iterable.generate(
          length, (_) =>
          chars.codeUnitAt(rnd.nextInt(chars.length))));
}