import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'back_container_work.dart';
import 'back_container_work_widget.dart';
import 'icons_of_work_experience.dart';

class ListViewWorkItem extends StatelessWidget
{
  const ListViewWorkItem({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 450.h,
      width: MediaQuery.sizeOf(context).width <= 990 ? 200.w : 150.w,
      child: Stack(
        children: [
          BackContainerWork(workWidget: BackContainerWorkWidget(index: index)),

          IconsOfWorkExperience(index: index),
        ],
      ),
    );
  }
}