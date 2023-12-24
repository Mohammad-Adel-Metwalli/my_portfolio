import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/profile_image_animation_with_hexagon.dart';
import 'identification_section_left_side.dart';

class IdentificationSection extends StatelessWidget
{
  const IdentificationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.2),
          child: const IdentificationSectionLeftSide().animate().fadeIn(duration: 2.seconds),
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.101),

        Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height * 0.1),
          child: const ProfileImageAnimationWithHexagon().animate().moveX(
              duration: 500.milliseconds,
              begin: 200,
              end: -50
          ).then().fade().then().shimmer(duration: 2.seconds),
        ),
      ],
    );
  }
}