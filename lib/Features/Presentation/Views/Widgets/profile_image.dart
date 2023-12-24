import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileImage extends StatelessWidget
{
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Image(
      height: MediaQuery.sizeOf(context).width <= 990 ? 300.h : 450.h,
      image: const AssetImage('Assets/Images/Hexagonal Profile Photo.png'),
    );
  }
}