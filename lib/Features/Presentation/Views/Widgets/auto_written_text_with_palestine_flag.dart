import 'package:flutter/material.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/palestine_flag.dart';
import 'auto_written_text.dart';

class AutoWrittenTextWithPalestineFlag extends StatelessWidget
{
  const AutoWrittenTextWithPalestineFlag({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      children: [
        Spacer(),

        AutoWrittenText(),

        PalestineFlag(),

        Spacer(),
      ],
    );
  }
}