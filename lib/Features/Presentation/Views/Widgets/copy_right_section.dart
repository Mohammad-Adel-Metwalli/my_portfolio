import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../Core/Utils/constant_colors.dart';

class CopyRightSection extends StatelessWidget
{
  const CopyRightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        MediaQuery.sizeOf(context).width <= 500 ? const Spacer() : const SizedBox.shrink(),

        const Text('Made with ', style: TextStyle(color: babyPowder, fontSize: 15)),

        const Icon(FontAwesomeIcons.solidHeart, color: red, size: 18),

        const Text(' By Mohammad Adel ', style: TextStyle(color: babyPowder, fontSize: 15)),

        const Icon(Icons.copyright_sharp, color: babyPowder, size: 18),

        Text(' ${DateTime.now().year}', style: const TextStyle(color: babyPowder, fontSize: 15)),

        MediaQuery.sizeOf(context).width <= 500 ? const Spacer() : const SizedBox.shrink(),
      ],
    );
  }
}