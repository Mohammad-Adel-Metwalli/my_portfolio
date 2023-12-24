import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexagon/hexagon.dart';
import '../../../../Core/Utils/constant_colors.dart';

class HexagonSkills extends StatelessWidget
{
  const HexagonSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Transform.rotate(
      angle: 810,
      child: HexagonWidget.flat(
        height: MediaQuery.sizeOf(context).width <= 990 ? 200.h : 205.h,
        width: MediaQuery.sizeOf(context).width <= 990 ? 200.h : 205.h,
        color: majorellePurple,
        cornerRadius: 80,
        child: HexagonWidget.flat(
          height: MediaQuery.sizeOf(context).width <= 990 ? 165.h : 170.h,
          width: MediaQuery.sizeOf(context).width <= 990 ? 165.h : 170.h,
          color: babyPowder,
          cornerRadius: 70,
        ),
      ),
    );
  }
}