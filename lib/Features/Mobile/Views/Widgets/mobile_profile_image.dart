import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileProfileImage extends StatelessWidget
{
  const MobileProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Image(
      height: 250.h,
      image: const AssetImage('Assets/Images/Hexagonal Profile Photo.png'),
    );
  }
}