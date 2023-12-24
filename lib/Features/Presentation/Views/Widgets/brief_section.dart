import 'package:flutter/material.dart';
import 'brief_back_container.dart';
import 'brief_container.dart';
import 'helal_emoji.dart';
import 'moon_emoji.dart';

class BriefSection extends StatelessWidget
{
  const BriefSection({
    super.key,
    required this.smallBrief,
  });

  final String smallBrief;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.08, top: MediaQuery.sizeOf(context).height * 0.12),
          child: const BriefBackContainer(),
        ),

        Padding(
          padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.04, top: MediaQuery.sizeOf(context).height * 0.06),
          child: const BriefBackContainer(),
        ),

        BriefContainer(smallBrief: smallBrief),

        const HelalEmoji(),

        const MoonEmoji(),
      ],
    );
  }
}