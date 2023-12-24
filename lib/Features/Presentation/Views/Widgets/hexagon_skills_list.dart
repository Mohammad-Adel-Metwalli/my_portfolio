import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';
import 'hexagon_skills_list_item.dart';

class HexagonSkillsList extends StatelessWidget
{
  const HexagonSkillsList({
    super.key,
    required this.rotationValue,
  });

  final double rotationValue;

  @override
  Widget build(BuildContext context)
  {
    return CircleList(
      origin: const Offset(0, 22.5),
      innerRadius: 250,
      outerRadius: 500,
      childrenPadding: 15,
      showInitialAnimation: true,
      initialAngle: rotationValue,

      centerWidget: Text('My Skills', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp, color: babyPowder)),

      children: List.generate(
          skillsIcons.length, (index) => HexagonSkillsListItem(index: index)
      ),
    );
  }
}