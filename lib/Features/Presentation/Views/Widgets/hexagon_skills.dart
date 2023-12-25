import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexagon/hexagon.dart';
import 'package:my_portfolio/Core/Utils/constants.dart';
import '../../../../Core/Utils/constant_colors.dart';

class HexagonSkills extends StatelessWidget
{
  const HexagonSkills({
    super.key, required this.isThereChild, required this.index,
  });
  final bool isThereChild;
  final int index;

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

          child: isThereChild ? Center(
            child: Transform.rotate(
              angle: pi/2-1.05,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),

                  skillsIcons[index],

                  Text(skillsIconsNames[index]),

                  const Spacer(),
                ],
              ),
            ),
          ) : const SizedBox.shrink(),
        ),
      ),
    );
  }
}