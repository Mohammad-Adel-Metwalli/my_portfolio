import 'package:fluentui_emoji_icon/fluentui_emoji_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';

class ZeroDistanceEmojiAndText extends StatelessWidget
{
  const ZeroDistanceEmojiAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        FluentUiEmojiIcon(
          fl: Fluents.flWinkingFace,
          w: 10.h,
          h: 10.w,
        ),

        Text('Zero Distance', style: TextStyle(color: babyPowder, fontWeight: FontWeight.bold, fontSize: 7.sp)),
      ],
    );
  }
}