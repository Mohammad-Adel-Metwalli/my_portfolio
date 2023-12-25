import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexagon/hexagon.dart';
import '../../../../Core/Utils/constant_colors.dart';

class MobileProfileHexagon extends StatelessWidget
{
  const MobileProfileHexagon({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.225),
      child: Transform.rotate(
        angle: - pi * 18 / 12,
        child: HexagonWidget.flat(
          height: 280.h,
          width: 280.w,
          color: majorellePurple,
          cornerRadius: 110,

          child: Transform.rotate(
            angle: pi / 5-2.2,
            child: Center(
                child: Image(
                  image: const AssetImage('Assets/Images/Hexagonal Profile Photo.png'),
                  height: 220.h,
                  width: 220.w,
                )
            ),
          ),
        ),
      ),
    );
  }
}