import 'package:flutter/material.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/preview_button.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/watch_button.dart';

class WatchAndPreviewButtons extends StatelessWidget
{
  const WatchAndPreviewButtons({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        WatchButton(index: index),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        PreviewButton(index: index),
      ],
    );
  }
}