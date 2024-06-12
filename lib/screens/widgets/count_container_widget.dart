
import 'package:flutter/material.dart';


class CountWidget extends StatelessWidget {

  final Size size;
  final String text1;
  final String text2;
  final String text3;
  const CountWidget({super.key,required this.size,required this.text2, required this.text3, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [


        Text("${text1}",style: TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: size.width*0.05
        ),),

        SizedBox(width: 10,),

        Text("${text2}\n${text3}",style: TextStyle(color: Colors.white,fontFamily: 'Poppins'),)
      ],
    );
  }
}
