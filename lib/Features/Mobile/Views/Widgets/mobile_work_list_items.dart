import 'package:flutter/material.dart';
import '../../../Presentation/Views/Widgets/icons_of_work_experience.dart';
import 'mobile_container_work.dart';
import 'mobile_container_work_widget.dart';

class MobileWorkListItems extends StatelessWidget
{
  const MobileWorkListItems({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        MobileContainerWork(workWidget: MobileContainerWorkWidget(index: index)),

        IconsOfWorkExperience(index: index),
      ],
    );
  }
}