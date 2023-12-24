import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PalestineFlag extends StatefulWidget
{
  const PalestineFlag({
    super.key,
  });

  @override
  State<PalestineFlag> createState() => _PalestineFlagState();
}

class _PalestineFlagState extends State<PalestineFlag>
{
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