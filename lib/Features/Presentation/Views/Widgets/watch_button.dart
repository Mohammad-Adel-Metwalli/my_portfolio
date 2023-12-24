import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Core/Utils/constants.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/watch_button_items.dart';
import '../../../../Core/Utils/Functions/used_functions.dart';
import '../../../../Core/Utils/constant_colors.dart';

class WatchButton extends StatefulWidget
{
  const WatchButton({
    super.key, required this.index,
  });
  final int index;

  @override
  State<WatchButton> createState() => _WatchButtonState();
}

class _WatchButtonState extends State<WatchButton>
{
  bool isHovering = false;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () => launchUrlMedia(watchAppLinks[widget.index]),

      child: MouseRegion(
        onEnter: (event) => setState(() => isHovering = true),
        onExit: (event) => setState(() => isHovering = false),

        child: AnimatedContainer(
          duration: 350.milliseconds,
          height: 38.h,
          width: MediaQuery.sizeOf(context).width <= 500 ? 100.w : (MediaQuery.sizeOf(context).width <= 990 ? 60.w : 40.w),
          decoration: BoxDecoration(color: isHovering ? babyPowder : Colors.transparent, border: Border.all(color: babyPowder, width: 2.5), borderRadius: BorderRadius.circular(20)),

          child: WatchButtonItems(isHovering: isHovering),
        ),
      ),
    );
  }
}