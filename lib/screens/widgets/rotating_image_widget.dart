import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';

import 'dart:math' as math;


class RotatingImageContainer extends StatefulWidget {
  const RotatingImageContainer({super.key});

  @override
  State<RotatingImageContainer> createState() => _RotatingImageContainerState();
}

class _RotatingImageContainerState extends State<RotatingImageContainer> {
  
   bool isHovered=false;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return MouseRegion(
      
      onEnter: (_)=>setState(()=>isHovered=true),
      onExit: (_)=>setState(()=>isHovered=false),
      
      child: AnimatedContainer(
        
        duration: Duration(microseconds: 300),
        transform: Matrix4.rotationZ(isHovered ?0:math.pi/36),
        
        height: size.width*0.24,
        width: size.width*0.24,
        
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/profile_new.jpg')
          ),
          
          border: Border.all(color: AppColors.studio,width: 1.2),
          borderRadius: BorderRadius.circular(20)
        ),
        
      ),
      
    );
  }
}
