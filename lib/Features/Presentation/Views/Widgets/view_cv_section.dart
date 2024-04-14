import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/Functions/used_functions.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'view_cv_section_item.dart';

class ViewCvSection extends StatefulWidget
{
  const ViewCvSection({
    super.key,
    required this.cvHover,
  });

  final bool cvHover;

  @override
  State<ViewCvSection> createState() => _ViewCvSectionState();
}

class _ViewCvSectionState extends State<ViewCvSection>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: () async => launchUrlMedia('https://firebasestorage.googleapis.com/v0/b/mohammad-adel-metwally-2-bab35.appspot.com/o/Mohammad-Adel-Metwalli-Resume.pdf?alt=media&token=9b6a3e10-5d2d-41cd-ab49-0de6d06f9fcd'),

        child: AnimatedContainer(
          duration: 500.milliseconds,
          height: MediaQuery.sizeOf(context).width <= 500 ? 65.h : 75.h,
          width: MediaQuery.sizeOf(context).width <= 500 ? 175.w : 100.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: widget.cvHover ? babyPowder : Colors.transparent, border: Border.all(color: babyPowder, width: 2)),

          child: ViewCvSectionItem(cvHover: widget.cvHover),
        ),
      ),
    );
  }
}