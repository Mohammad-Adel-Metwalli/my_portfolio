import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../Core/Utils/constant_colors.dart';

class ViewCvSectionItem extends StatelessWidget
{
  const ViewCvSectionItem({
    super.key,
    required this.cvHover,
  });

  final bool cvHover;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        Center(child: Text('View Resume', style: TextStyle(fontSize: MediaQuery.sizeOf(context).width <= 500 ? 15.sp : 7.sp, color: cvHover ? blackColor : babyPowder))),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.005),

        Icon(FontAwesomeIcons.cloudArrowDown, color: cvHover ? blackColor : babyPowder, size: 20.h),

        const Spacer(),
      ],
    );
  }
}