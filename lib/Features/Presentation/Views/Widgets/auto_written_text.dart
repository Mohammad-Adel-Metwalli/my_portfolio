import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';

class AutoWrittenText extends StatefulWidget
{
  const AutoWrittenText({super.key});

  @override
  State<AutoWrittenText> createState() => _AutoWrittenTextState();
}

class _AutoWrittenTextState extends State<AutoWrittenText> with TickerProviderStateMixin
{
  late AnimationController _controller;
  late Animation<int> _animation;
  int currentTextIndex = 0;

  @override
  void initState()
  {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _controller.addStatusListener((status)
    {
      if (status == AnimationStatus.completed)
      {
        Future.delayed(const Duration(seconds: 2), ()
        {
          _controller.reverse();
        });
      }

      else if(status == AnimationStatus.dismissed)
      {
        currentTextIndex = ((currentTextIndex + 1) % texts.length);
        _animation = IntTween(begin: 0, end: texts[currentTextIndex].length).animate(_controller)..addListener(() => setState(() => ()));
        _controller.forward();
      }
    });

    _animation = IntTween(begin: 0, end: texts[currentTextIndex].length).animate(_controller)..addListener(() => setState(() => ()));
    _controller.forward();
  }

  @override
  void dispose()
  {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    String animatedText = texts[currentTextIndex].substring(0, _animation.value);

    return RichText(
      text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: [
            TextSpan(
                text: "I currently work as a ",
                style: TextStyle(fontSize: 7.sp, color: babyPowder, fontWeight: FontWeight.bold)
            ),

            TextSpan(
                text: animatedText,
                style: TextStyle(fontSize: 7.sp, color: currentTextIndex == 0 ? orange : lightPurpleAndBlue, fontWeight: FontWeight.bold).apply(shadows: [customedShadowBox()])
            )
          ]
      ),
    );
  }
}