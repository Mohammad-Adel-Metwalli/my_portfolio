import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_portfolio/Core/Utils/constant_colors.dart';

class SplashViewBody extends StatelessWidget
{
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        children: [
          const Spacer(),

          const Image(
              image: AssetImage('Assets/Images/Black logo.png')
          ).animate().fadeIn(curve: Curves.easeInOut).then().moveY(
            duration: const Duration(seconds: 3),
            curve: Curves.easeInOut,
            begin: -100,
            end: 20,
          ),

          SpinKitSpinningLines(color: babyPowder, lineWidth: MediaQuery.sizeOf(context).width > 500 ? 3 : 5).animate().fadeIn(duration: const Duration(seconds: 2)),

          const Spacer(),
        ],
      ),
    );
  }
}