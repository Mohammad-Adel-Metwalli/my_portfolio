import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';
import '../../../Presentation/Views/Widgets/watch_and_preview_buttons.dart';

class MobileContainerWorkWidget extends StatelessWidget
{
  const MobileContainerWorkWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        Text(workExperienceList[index], style: TextStyle(color: babyPowder, fontSize: 15.sp)),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        ListTile(
          subtitle: Text(workExperienceListSubtitle[index], style: TextStyle(color: babyPowder, fontSize: 10.sp)),
        ),

        SizedBox(height: index == 1 ? MediaQuery.sizeOf(context).height * 0.02 : MediaQuery.sizeOf(context).height * 0.045),

        WatchAndPreviewButtons(index: index),
      ],
    );
  }
}
