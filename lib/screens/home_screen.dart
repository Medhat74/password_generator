import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session8/components/card_widget.dart';
import 'package:session8/components/generate_button_widget.dart';
import 'package:session8/components/text_field_widget.dart';

import '../blocs/password_cubit/password_cubit.dart';
import '../components/slider_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 50, bottom: 50, left: 30, right: 30),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
          child: BlocConsumer<PasswordCubit, PasswordState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              var cubit = PasswordCubit.get(context);
              return Column(children: [
                 Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFieldWidget(text: cubit.password,),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        cubit.changeIndex(0);
                      },
                        child: CardWidget(text:'aBc',tr: 0,tl: 20,br: 0,bl: 20,
                            color: cubit.index == 0 ? Colors.blue : Colors.grey[900])),
                    GestureDetector(
                      onTap: (){
                        cubit.changeIndex(1);
                      },
                        child: CardWidget(text:'abc',tr: 0,tl: 0,br: 0,bl: 0,
                            color: cubit.index == 1 ? Colors.blue: Colors.grey[900])),
                    GestureDetector(
                      onTap: (){
                        cubit.changeIndex(2);
                      },
                        child: CardWidget(text:'ABC',tr: 0,tl: 0,br: 20,bl: 20,
                          color: cubit.index == 2 ? Colors.blue: Colors.grey[900]))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SliderExample(cubit.len,cubit.changeLen),
                GenerateButtonWidget(fun : (){
                  cubit.generateRandomPassword();
                }),
              ]);
            },
          ),
        ),
      ),
    );
  }
}
