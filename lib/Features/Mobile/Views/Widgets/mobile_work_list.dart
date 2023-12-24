import 'package:flutter/material.dart';
import 'mobile_work_list_items.dart';

class MobileWorkList extends StatelessWidget
{
  const MobileWorkList({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.6,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => MobileWorkListItems(index: index),
      ),
    );
  }
}