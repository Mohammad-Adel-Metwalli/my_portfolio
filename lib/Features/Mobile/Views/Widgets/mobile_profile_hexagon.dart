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
          height: 250.h,
          width: 250.w,
          color: majorellePurple,
          cornerRadius: 110,
        ),
      ),
    );
  }
}