import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';

class MobileContainerWork extends StatelessWidget
{
  const MobileContainerWork({
    super.key, required this.workWidget,
  });
  final Widget workWidget;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.02),
      child: Container(
        height: 350.h,
        width: 350.w,
        decoration: BoxDecoration(
          color: frenchViolet,
          border: Border.all(color: babyPowder, width: 6),
          borderRadius: BorderRadius.only(topLeft: borderRadiusWork(100), bottomRight: borderRadiusWork(100), topRight: borderRadiusWork(25), bottomLeft: borderRadiusWork(25)),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: majorellePurple,
            ),
          ],
        ),

        child: workWidget,
        // child: workWidget,
      ),
    );
  }
}