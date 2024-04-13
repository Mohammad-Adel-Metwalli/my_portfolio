import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';

class IconsOfWorkExperience extends StatelessWidget
{
  const IconsOfWorkExperience({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      top: MediaQuery.sizeOf(context).width <= 500 ? MediaQuery.sizeOf(context).height * 0.001 : MediaQuery.sizeOf(context).height * 0.07,
      left: MediaQuery.sizeOf(context).width * 0.04,
      child: Container(
        height: 80.h,
        width: 80.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: lightPurpleAndBlue, width: 6.5), color: babyPowder,
          image: index == 2 || index == 4 || index == 5 ? DecorationImage(image: AssetImage(someLogos[index]!), fit: BoxFit.cover) : const DecorationImage(image: AssetImage('')),
        ),

        child: Center(child: workExperience[index]),
      ),
    );
  }
}