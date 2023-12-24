import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'mobile_auto_written_text.dart';
import 'mobile_palestine_flag.dart';

class MobileAutoWrittenTextAndPalestineFlag extends StatelessWidget
{
  const MobileAutoWrittenTextAndPalestineFlag({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const MobileAutoWrittenText().animate().fadeIn(curve: Curves.easeInOut, duration: const Duration(seconds: 2)),

        const MobilePalestineFlag(),

        const Spacer(),
      ],
    );
  }
}