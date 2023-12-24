import 'package:flutter/material.dart';
import '../../../Presentation/Views/Widgets/hexagon_skills.dart';
import '../../../Presentation/Views/Widgets/hexagon_skills_names_and_icons.dart';

class MobileMySkillsListItems extends StatelessWidget
{
  const MobileMySkillsListItems({
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
          padding: EdgeInsets.only(left: index != 8 ? MediaQuery.sizeOf(context).width * 0.145 : MediaQuery.sizeOf(context).width * 0.13, top: index != 8 ? MediaQuery.sizeOf(context).height * 0.08 : MediaQuery.sizeOf(context).height * 0.0725),
          child: HexagonSkillsNamesAndIcons(index: index),
        ),
      ],
    );
  }
}