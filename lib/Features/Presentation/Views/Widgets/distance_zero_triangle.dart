import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';

class DistanceZeroTriangle extends StatelessWidget
{
  const DistanceZeroTriangle({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Transform.rotate(
      angle: - pi,
      child: SizedBox(
        child: Container(
          width: 50.h,
          height: 50.h,
          decoration: const ShapeDecoration(
            color: red,
            shape: StarBorder.polygon(
                sides: 3,
                pointRounding: 0.2
            ),
          ),
        ),
      ),
    );
  }
}