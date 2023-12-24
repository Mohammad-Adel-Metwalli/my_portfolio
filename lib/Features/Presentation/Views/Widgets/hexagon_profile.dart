import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexagon/hexagon.dart';
import '../../../../Core/Utils/constant_colors.dart';

class HexagonProfile extends StatelessWidget
{
  const HexagonProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.001, left: MediaQuery.sizeOf(context).width <= 855 ? MediaQuery.sizeOf(context).width * 0.01 : 0),
      child: Transform.rotate(
        angle: - pi * 18 / 12,
        child: HexagonWidget.flat(
          height: 200.h,
          width: 200.w,
          color: majorellePurple,
          cornerRadius: MediaQuery.sizeOf(context).width <= 990 ? 120 : 160,
        ),
      ),
    );
  }
}