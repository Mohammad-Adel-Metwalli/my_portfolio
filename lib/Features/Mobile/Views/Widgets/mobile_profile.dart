import 'package:flutter/material.dart';
import 'mobile_profile_hexagon.dart';
import 'mobile_profile_image.dart';

class MobileProfile extends StatelessWidget
{
  const MobileProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const MobileProfileHexagon(),

        Padding(
          padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.225),
          child: const Center(child: MobileProfileImage()),
        )
      ],
    );
  }
}