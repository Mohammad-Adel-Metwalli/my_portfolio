import 'package:flutter/material.dart';
import 'hexagon_skills.dart';
import 'hexagon_skills_names_and_icons.dart';

class HexagonSkillsListItem extends StatelessWidget
{
  const HexagonSkillsListItem({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const HexagonSkills(),

        Padding(
          padding: EdgeInsets.only(top: index != 8 ? MediaQuery.sizeOf(context).height * 0.1 : MediaQuery.sizeOf(context).height * 0.08),
          child: HexagonSkillsNamesAndIcons(index: index),
        ),
      ],
    );
  }
}