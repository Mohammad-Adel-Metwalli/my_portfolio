import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';
import 'brief_section.dart';
import 'hexagon_skills_list.dart';
import 'identification_section.dart';
import 'list_view_work.dart';

class PortfolioViewBody extends StatefulWidget
{
  const PortfolioViewBody({super.key});
  static late ScrollController scrollController;

  @override
  State<PortfolioViewBody> createState() => _PortfolioViewBodyState();
}

class _PortfolioViewBodyState extends State<PortfolioViewBody> with TickerProviderStateMixin
{
  late AnimationController animationController;
  double rotationValue = 0.0;

  @override
  void initState()
  {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 750), // Adjust the duration as needed
    )..repeat(); // This makes the animation repeat

    animationController.addListener(()
    {
      setState(() => rotationValue = animationController.value * 360);
    });

    PortfolioViewBody.scrollController = ScrollController();
  }

  @override
  void dispose()
  {
    animationController.dispose();
    PortfolioViewBody.scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/image_149.png'), context);
    precacheImage(const AssetImage('Assets/Images/Hexagonal Profile Photo.png'), context);
    precacheImage(const AssetImage('Assets/Images/power-bi.png'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: SingleChildScrollView(
        controller: PortfolioViewBody.scrollController,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const IdentificationSection(),

            BriefSection(smallBrief: smallBrief).animate().fadeIn(
              duration: 3.seconds,
              curve: Curves.easeInOut,
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height * 2,
              width: double.infinity,
              child: Center(
                child: HexagonSkillsList(rotationValue: rotationValue),
              ),
            ).animate().fadeIn(
              duration: 4.seconds,
              curve: Curves.easeInOut
            ),

            Center(
              child: Text(
                'My Work Experience',
                style: TextStyle(color: babyPowder, fontSize: MediaQuery.sizeOf(context).width <= 990 ? 10.sp : 8.sp),
              ),
            ).animate().fadeIn(
              duration: 3.seconds,
              curve: Curves.easeInOut,
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.8,
              width: double.infinity,

              child: const ListViewWork(),
            ).animate().fadeIn(
              duration: 3.seconds,
              curve: Curves.easeInOut,
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
          ],
        ),
      ),
    );
  }
}