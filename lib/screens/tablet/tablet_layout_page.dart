import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/screens/widgets/count_container_widget.dart';
import 'package:porfolio/screens/widgets/download_cv_widget.dart';
import 'package:porfolio/screens/widgets/header_text_widget.dart';
import 'package:porfolio/screens/widgets/myservice_widgets.dart';
import 'package:porfolio/screens/widgets/rotating_image_widget.dart';
import 'package:porfolio/screens/widgets/social_widget.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [RotatingImageContainer()],
                          ),
                        ),
                        SizedBox(height: size.width*0.09,),
                        Row(
                          children: [
                            HeaderTextWidget(
                              size: size,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Social_Tab(size: size)
                      ],
                    ),

                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,

                  margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CountWidget(size: size,text1: "14",text2: "Years of",text3: "Experience",),
                      const SizedBox(height: 20,),
                      Divider(
                        color: AppColors.paleSlate,
                        indent: size.width*0.05,
                        endIndent: size.width*0.05,

                      ),

                      const SizedBox(height: 20,),
                      CountWidget(size: size,text1: "50+",text2: "Projects",text3: "Completed",),
                      const SizedBox(height: 20,),
                      Divider(
                        color: AppColors.paleSlate,
                        indent: size.width*0.05,
                        endIndent: size.width*0.05,

                      ),

                      const SizedBox(height: 20,),
                      CountWidget(size: size,text1: "1.5K",text2: "Happy",text3: "Customers",),
                      const SizedBox(height: 20,),
                      Divider(
                        color: AppColors.paleSlate,
                        indent: size.width*0.05,
                        endIndent: size.width*0.05,

                      ),

                      const SizedBox(height: 20,),
                      CountWidget(size: size,text1: "1M",text2: "Awesome",text3: "Reviews",),

                    ],
                  ),
                ),

                MyServicesWidget(size: size)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Social_Tab extends StatelessWidget {
  const Social_Tab({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DownloadCVButton(),
          SizedBox(
            height: 20,
          ),
          SocialWidget(),


        ],
      ),
    );
  }
}
