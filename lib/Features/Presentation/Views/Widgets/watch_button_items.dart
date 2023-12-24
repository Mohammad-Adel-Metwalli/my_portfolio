import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';

class WatchButtonItems extends StatelessWidget
{
  const WatchButtonItems({
    super.key, required this.isHovering,
  });
  final bool isHovering;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
        children: [
          const Spacer(),

          Icon(HeroIcons.computer_desktop, color: isHovering ? blackColor : babyPowder),

          SizedBox(width: MediaQuery.sizeOf(context).width * 0.003),

          Text('Watch it', style: TextStyle(color: isHovering ? blackColor : babyPowder, fontSize: MediaQuery.sizeOf(context).width <= 500 ? 10.sp : (MediaQuery.sizeOf(context).width <= 990 ? 5.sp : 3.sp))),

          const Spacer(),
        ],
      ),
    );
  }
}