import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Utils/Functions/used_functions.dart';
import '../../../../Core/Utils/constant_colors.dart';
import 'download_cv_section_item.dart';

class DownloadCvSection extends StatefulWidget
{
  const DownloadCvSection({
    super.key,
    required this.cvHover,
  });

  final bool cvHover;

  @override
  State<DownloadCvSection> createState() => _DownloadCvSectionState();
}

class _DownloadCvSectionState extends State<DownloadCvSection>
{
  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: () async => downloadPdf(),

        child: AnimatedContainer(
          duration: 500.milliseconds,
          height: MediaQuery.sizeOf(context).width <= 500 ? 65.h : 75.h,
          width: MediaQuery.sizeOf(context).width <= 500 ? 175.w : 100.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: widget.cvHover ? babyPowder : Colors.transparent, border: Border.all(color: babyPowder, width: 2)),

          child: DownloadCvSectionItem(cvHover: widget.cvHover),
        ),
      ),
    );
  }
}