import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/social_icons_list.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/zero_distance_section.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'auto_written_text_with_palestine_flag.dart';
import 'copy_right_section.dart';
import 'download_cv_section.dart';

class IdentificationSectionLeftSide extends StatefulWidget
{
  const IdentificationSectionLeftSide({
    super.key,
  });

  @override
  State<IdentificationSectionLeftSide> createState() => _IdentificationSectionLeftSideState();
}

class _IdentificationSectionLeftSideState extends State<IdentificationSectionLeftSide>
{
  bool cvHover = false;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),

        Text('WELCOME TO MY PORTFOLIO,', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 5.sp, color: babyPowder)),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

        Text(
            "I'm Mohammad Adel Metwalli",
            style: TextStyle(fontSize: 8.sp, color: babyPowder, fontWeight: FontWeight.bold)
        ),

        SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.1,
            width: MediaQuery.sizeOf(context).width * 0.45,
            child: const AutoWrittenTextWithPalestineFlag()
        ),

        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.2,
          width: MediaQuery.sizeOf(context).width * 0.48,
          child: const Center(child: SocialIconsList()),
        ),

        const ZeroDistanceSection(),

        MouseRegion(
          onEnter: (event) => setState(() => cvHover = true),
          onExit: (event) => setState(() => cvHover = false),
          child: DownloadCvSection(cvHover: cvHover),
        ),

        const CopyRightSection(),
      ],
    );
  }
}