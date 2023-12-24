import 'package:fluentui_emoji_icon/fluentui_emoji_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelalEmoji extends StatelessWidget
{
  const HelalEmoji({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).width <= 500 ? MediaQuery.sizeOf(context).height * 0.4 : MediaQuery.sizeOf(context).height * 0.525,
      right: MediaQuery.sizeOf(context).width <= 500 ? MediaQuery.sizeOf(context).width * 0.825 : MediaQuery.sizeOf(context).width * 0.64,
      child: FluentUiEmojiIcon(
        fl: Fluents.flCrescentMoon,
        h: MediaQuery.sizeOf(context).width <= 500 ? 75.h : 100.h,
        w: MediaQuery.sizeOf(context).width <= 500 ? 75.h : 100.h,
      ),
    );
  }
}