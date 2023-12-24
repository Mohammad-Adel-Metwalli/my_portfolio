import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../Core/Utils/constant_colors.dart';

class PreviewButtonItems extends StatelessWidget
{
  const PreviewButtonItems({
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

          Icon(HeroIcons.command_line, color: isHovering ? blackColor : babyPowder),

          SizedBox(width: MediaQuery.sizeOf(context).width * 0.003),

          Text('Preview Code', style: TextStyle(color: isHovering ? blackColor : babyPowder, fontSize: MediaQuery.sizeOf(context).width <= 500 ? 10.sp : (MediaQuery.sizeOf(context).width <= 990 ? 5.sp : 3.sp))),

          const Spacer(),
        ],
      ),
    );
  }
}