import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constants.dart';
import 'mobile_my_skills_list_items.dart';

class MobileMySkillsList extends StatelessWidget
{
  const MobileMySkillsList({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 200.h,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: skillsIcons.length,
        itemBuilder: (context, index) => MobileMySkillsListItems(index: index),
      ),
    );
  }
}