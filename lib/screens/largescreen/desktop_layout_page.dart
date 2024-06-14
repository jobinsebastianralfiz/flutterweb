import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/screens/widgets/count_container_widget.dart';
import 'package:porfolio/screens/widgets/header_text_widget.dart';
import 'package:porfolio/screens/widgets/myservice_widgets.dart';
import 'package:porfolio/screens/widgets/rotating_image_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(

            children: [
              Container(
                margin: EdgeInsets.symmetric( vertical: size.height * 0.18),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HeaderTextWidget(
                          size: size,
                        ),
                        SizedBox(height: 20,),
                        Social_large(size: size),

                      ],
                    ),

                    Expanded(child: Container(


                      child: Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatingImageContainer()

                        ],
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountWidget(size: size,text1: "14",text2: "Years of",text3: "Experience",),
                    CountWidget(size: size,text1: "50+",text2: "Projects",text3: "Completed",),
                    CountWidget(size: size,text1: "1.5K",text2: "Happy",text3: "Customers",),
                    CountWidget(size: size,text1: "1M",text2: "Awesome",text3: "Reviews",),

                  ],
                ),
              ),

              SizedBox(height: size.height*0.12,),
  Container(

    color: AppColors.ebony,
    padding: EdgeInsets.symmetric(vertical: size.width*0.05),
    child: Column(
      children: [


        GradientText( "My Quality Services", colors: [

          AppColors.studio,
          AppColors.paleSlate,
        ],

      style: TextStyle(
          fontSize: size.width * 0.030,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold),

        ),
        SizedBox(height: size.height*0.02,),
        Text('We put your ideas and thus your wishes in the form of a unique web project that inspires you and you customers.', style: TextStyle(
            fontSize:size.width*0.012,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Colors.white
        ),),

        SizedBox(height: size.height*0.05,),
        MyServicesWidget(size:size),
      ],
    ),
  )

            ],
          ),
        ),
      ),
    );
  }
}
