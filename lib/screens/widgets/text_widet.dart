import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
   final TextAlign ?alignment;
  final String ?text;
  final Color? color;
  final double? size;
  final FontWeight? fw;
  final Size sSize;
  const TextWidget({
    super.key,
    required this.sSize,
    this.size,this.text, this.color,this.fw,this.alignment
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      textAlign: sSize.width < 600 && alignment!=null ? alignment : null,
      style: TextStyle(
     fontSize: size!=null?size:sSize.width * 0.040,
          color: color,
          fontWeight: fw,
          fontFamily: 'Poppins'),
    );
  }
}