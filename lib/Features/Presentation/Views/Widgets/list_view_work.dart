import 'package:flutter/material.dart';
import '../../../../Core/Utils/constants.dart';
import 'list_view_work_item.dart';

class ListViewWork extends StatelessWidget
{
  const ListViewWork({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: ListView.builder(
        itemCount: workExperienceListSubtitle.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.085),
        itemBuilder: (context, index) => ListViewWorkItem(index: index),
      ),
    );
  }
}