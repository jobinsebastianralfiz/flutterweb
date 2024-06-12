import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/screens/widgets/download_cv_widget.dart';
import 'package:porfolio/screens/widgets/socail_section.dart';
import 'package:porfolio/screens/widgets/social_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.07,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "I am Gerold",
            style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
          GradientText(
            "Web Developer +\nUX Designer",
            colors: [
              AppColors.studio,
              AppColors.paleSlate,
            ],
            style: TextStyle(
                fontSize: size.width * 0.040,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
              width: size.width * 0.5,
              child: Text(
                "I break down complex user experinece problems to create integritiy focussed solutions that connect billions of people",
                style: TextStyle(
                    fontSize: 16, color: Colors.white, fontFamily: "Poppins"),
              )),




        ],
      ),
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
          SizedBox(width: 20,),
          SocialWidget()
        ],
      ),
    );
  }
}
