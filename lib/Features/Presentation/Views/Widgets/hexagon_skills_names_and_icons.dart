import 'package:flutter/material.dart';
import '../../../../Core/Utils/constants.dart';

class HexagonSkillsNamesAndIcons extends StatelessWidget
{
  const HexagonSkillsNamesAndIcons({
    super.key, required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Center(child: skillsIcons[index]),

        Text(skillsIconsNames[index], style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}