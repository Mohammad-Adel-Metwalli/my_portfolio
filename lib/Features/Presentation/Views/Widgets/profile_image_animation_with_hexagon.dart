import 'package:flutter/material.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/profile_image.dart';
import 'hexagon_profile.dart';

class ProfileImageAnimationWithHexagon extends StatelessWidget
{
  const ProfileImageAnimationWithHexagon({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.9,
      width: MediaQuery.sizeOf(context).width * 0.39,
      child: Stack(
        children: [
          const HexagonProfile(),

          Padding(
            padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.001),
            child: const Center(child: ProfileImage()),
          ),
        ],
      ),
    );
  }
}