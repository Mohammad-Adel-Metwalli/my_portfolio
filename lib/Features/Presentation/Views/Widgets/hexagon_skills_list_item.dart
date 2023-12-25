import 'package:flutter/material.dart';
import 'hexagon_skills.dart';

class HexagonSkillsListItem extends StatelessWidget
{
  const HexagonSkillsListItem({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return HexagonSkills(isThereChild: false, index: index);
  }
}