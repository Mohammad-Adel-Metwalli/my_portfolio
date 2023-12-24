import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobilePalestineFlag extends StatelessWidget
{
  const MobilePalestineFlag({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 45.h,
      child: const Image(
        image: AssetImage('Assets/Images/image_149.png'),
      ),
    );
  }
}