import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';

class SocialIconsListItem extends StatelessWidget
{
  const SocialIconsListItem({
    super.key,
    required this.isHovering, required this.index,
  });

  final int index;
  final bool isHovering;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: AnimatedContainer(
        duration: 500.milliseconds,
        height: MediaQuery.sizeOf(context).width <= 500 ? 50.h : 50.h,
        width: MediaQuery.sizeOf(context).width <= 500 ? 40.w : 20.w,
        decoration: BoxDecoration(color: isHovering ? babyPowder : Colors.transparent, shape: BoxShape.circle, border: Border.all(color: babyPowder, width: 2)),

        child: isHovering ? socialMediaIconsColored[index] : socialMediaIcons[index],
      ),
    );
  }
}