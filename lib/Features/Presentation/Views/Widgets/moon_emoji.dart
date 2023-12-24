import 'package:fluentui_emoji_icon/fluentui_emoji_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoonEmoji extends StatelessWidget
{
  const MoonEmoji({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      top: MediaQuery.sizeOf(context).width <= 500 ? MediaQuery.sizeOf(context).height * 0.35 : MediaQuery.sizeOf(context).height * 0.5,
      left: MediaQuery.sizeOf(context).width <= 500 ? MediaQuery.sizeOf(context).width * 0.82 : MediaQuery.sizeOf(context).width * 0.625,
      child: FluentUiEmojiIcon(
        fl: Fluents.flNewMoonFace,
        h: MediaQuery.sizeOf(context).width <= 500 ? 75.h : 100.h,
        w: MediaQuery.sizeOf(context).width <= 500 ? 75.h : 100.h,
      ),
    );
  }
}