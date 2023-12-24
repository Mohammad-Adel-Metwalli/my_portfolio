import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';

class BriefContainer extends StatelessWidget
{
  const BriefContainer({
    super.key,
    required this.smallBrief,
  });

  final String smallBrief;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).width <= 500 ? 200.h : 340.h,
      width: MediaQuery.sizeOf(context).width <= 500 ? 325.w : 220.w,
      decoration: BoxDecoration(
        color: frenchViolet,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: babyPowder, width: 5),
        boxShadow: const [
          BoxShadow(
              blurRadius: 50,
              color: majorellePurple
          ),
        ],
      ),

      child: Center(
        child: Text(
          smallBrief,
          style: TextStyle(color: customedGrey, fontSize: MediaQuery.sizeOf(context).width <= 500 ? 9.sp : 5.sp), textAlign: TextAlign.center,
        ),
      ),
    );
  }
}