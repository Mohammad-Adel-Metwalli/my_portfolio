import 'package:flutter/material.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/zero_distance_emoji_and_text.dart';
import 'distance_zero_triangle.dart';

class ZeroDistanceSection extends StatelessWidget
{
  const ZeroDistanceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Column(
      children: [
        ZeroDistanceEmojiAndText(),

        DistanceZeroTriangle(),
      ],
    );
  }
}