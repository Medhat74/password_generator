import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  // const Card1({super.key});
  final String text;
  final double tr;
  final double tl;
  final double br;
  final double bl;
  final  color;
  CardWidget({required this.text, required this.tr, required this.tl, required this.br, required this.bl, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          color: color,
          borderRadius:  BorderRadius.only(
            topLeft:  Radius.circular(tl),
            topRight:  Radius.circular(tr),
            bottomLeft:  Radius.circular(bl),
            bottomRight:  Radius.circular(br),
          )
      ),
      child: Center(child: Text(text.toString(), style: TextStyle(color: Colors.white, fontSize: 20), )),);
  }
}

