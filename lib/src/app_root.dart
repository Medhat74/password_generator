import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session8/blocs/password_cubit/password_cubit.dart';
import 'package:session8/screens/home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => PasswordCubit()),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
