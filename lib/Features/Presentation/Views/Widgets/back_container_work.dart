import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Core/Utils/constant_colors.dart';
import 'package:my_portfolio/Core/Utils/constants.dart';

class BackContainerWork extends StatelessWidget
{
  const BackContainerWork({
    super.key, required this.workWidget,
  });
  final Widget workWidget;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.025, vertical: MediaQuery.sizeOf(context).height * 0.08),
      child: SizedBox(
        height: 450.h,
        width: MediaQuery.sizeOf(context).width <= 990 ? 200.w : 150.w,
        child: Container(
          decoration: BoxDecoration(
            color: frenchViolet,
            border: Border.all(color: babyPowder, width: 6),
            borderRadius: BorderRadius.only(topLeft: borderRadiusWork(100), bottomRight: borderRadiusWork(100), topRight: borderRadiusWork(25), bottomLeft: borderRadiusWork(25)),
            boxShadow: const [
              BoxShadow(
                blurRadius: 50,
                color: majorellePurple,
              ),
            ],
          ),

          child: workWidget,
        ),
      ),
    );
  }
}