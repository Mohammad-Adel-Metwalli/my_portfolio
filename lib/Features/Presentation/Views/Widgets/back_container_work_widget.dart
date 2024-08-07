import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/watch_and_preview_buttons.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';

class BackContainerWorkWidget extends StatelessWidget
{
  const BackContainerWorkWidget({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

          Text(workExperienceList[index], style: index == 2 ? GoogleFonts.amiri(color: babyPowder, fontSize: 8.sp, fontWeight: FontWeight.bold) : TextStyle(color: babyPowder, fontSize: 8.sp), textAlign: TextAlign.center),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          ListTile(
            subtitle: Text(workExperienceListSubtitle[index], style: TextStyle(color: babyPowder, fontSize: MediaQuery.sizeOf(context).width <= 995 ? (5.5).sp : 4.sp)),
          ),

          SizedBox(height: index == 1 ? MediaQuery.sizeOf(context).height * 0.02 : MediaQuery.sizeOf(context).height * 0.045),

          WatchAndPreviewButtons(index: index),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        ],
      ),
    );
  }
}