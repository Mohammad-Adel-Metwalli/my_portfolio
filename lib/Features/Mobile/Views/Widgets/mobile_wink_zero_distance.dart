import 'package:fluentui_emoji_icon/fluentui_emoji_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';

class MobileWinkZeroDistance extends StatelessWidget
{
  const MobileWinkZeroDistance({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        FluentUiEmojiIcon(
          fl: Fluents.flWinkingFace,
          w: 25.h,
          h: 25.w,
        ),

        Text('Zero Distance', style: TextStyle(color: babyPowder, fontWeight: FontWeight.bold, fontSize: 15.sp)),

        const Spacer(),
      ],
    );
  }
}