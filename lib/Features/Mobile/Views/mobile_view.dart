import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/portfolio_background.dart';
import '../../../Core/Utils/constant_colors.dart';
import 'Widgets/mobile_view_body.dart';

class MobileView extends StatelessWidget
{
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => MobileViewBody.scrollController.animateTo(0.0, duration: 2.seconds, curve: Curves.easeInOut),

        backgroundColor: majorellePurple,
        splashColor: babyPowder.withOpacity(0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: const BorderSide(color: babyPowder, width: 3)),
        child: Center(child: Icon(EvaIcons.chevron_up, color: babyPowder, size: 30.h)),
      ),

      body: Stack(
        children: [
          const PortfolioBackground(),

          const MobileViewBody().animate().fadeIn(curve: Curves.easeInOut, duration: const Duration(seconds: 2)),
        ],
      ),
    );
  }
}