import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/screens/widgets/download_cv_widget.dart';
import 'package:porfolio/screens/widgets/socail_section.dart';
import 'package:porfolio/screens/widgets/social_widget.dart';
import 'package:porfolio/screens/widgets/text_widet.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
      ),
      child: Column(
        crossAxisAlignment: size.width > 600
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              child: TextWidget(
            sSize: size,
            text: "I am Jobin",
            color: Colors.white,
            size: 26,
            fw: FontWeight.bold,
            alignment: TextAlign.center,
          )),
          GradientTextWidget(
            size: size,
            alignment: TextAlign.center,
            text1: "Flutter Developer",
            text2: "UX Designer",
          ),
          SizedBox(
            width: size.width * 0.5,
            child: TextWidget(
                sSize: size,
                alignment: TextAlign.center,
                text:
                    "I break down complex user experinece problems to create integritiy focussed solutions that connect billions of people",
                size: 16,
                color: Colors.white,
                fw: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}

class GradientTextWidget extends StatelessWidget {
  final TextAlign? alignment;
  final String? text1;
  final String? text2;
  final Color? color1;
  final Color? color2;
  final double? fsize;
  final FontWeight? fw;
  const GradientTextWidget(
      {super.key,
      required this.size,
      this.alignment,
      this.fw,
      this.color1,
      this.text1,
      this.text2,
      this.color2,
      this.fsize});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GradientText(
      textAlign: size.width < 600 && alignment != null ? alignment : null,
      "${text1}\n${text2??""}",
      colors: [
        AppColors.studio,
        AppColors.paleSlate,
      ],
      style: TextStyle(
          fontSize: size.width * 0.040,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold),
    );
  }
}

class Social_large extends StatelessWidget {
  const Social_large({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      child: Row(
        children: [
          DownloadCVButton(),
          SizedBox(
            width: 20,
          ),
          SocialWidget()
        ],
      ),
    );
  }
}
