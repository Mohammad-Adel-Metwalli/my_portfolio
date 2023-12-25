import 'package:flutter/material.dart';
import '../../../Presentation/Views/Widgets/hexagon_skills.dart';

class MobileMySkillsListItems extends StatelessWidget
{
  const MobileMySkillsListItems({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return HexagonSkills(isThereChild: true, index: index);
  }
}