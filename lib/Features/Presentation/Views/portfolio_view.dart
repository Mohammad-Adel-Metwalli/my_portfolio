import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:my_portfolio/Core/Utils/constant_colors.dart';
import 'Widgets/portfolio_background.dart';
import 'Widgets/portfolio_view_body.dart';

class PortfolioView extends StatefulWidget
{
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView>
{
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/15151444_5556661.jpg'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => PortfolioViewBody.scrollController.animateTo(0.0, duration: 2.seconds, curve: Curves.easeInOut),

        backgroundColor: majorellePurple,
        splashColor: babyPowder.withOpacity(0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: const BorderSide(color: babyPowder, width: 3)),
        child: Center(child: Icon(EvaIcons.chevron_up, color: babyPowder, size: 30.h)),
      ),
      
      body: Stack(
        children: [
          const PortfolioBackground().animate().fadeIn(
            duration: const Duration(seconds: 3),
            curve: Curves.easeInOut
          ),

          const PortfolioViewBody(),
        ],
      ),
    );
  }
}