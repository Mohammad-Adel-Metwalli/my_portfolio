import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/Features/Mobile/Views/Widgets/mobile_wink_zero_distance.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/social_icons_list.dart';
import '../../../../Core/Utils/constant_colors.dart';
import '../../../../Core/Utils/constants.dart';
import '../../../Presentation/Views/Widgets/brief_section.dart';
import '../../../Presentation/Views/Widgets/copy_right_section.dart';
import '../../../Presentation/Views/Widgets/distance_zero_triangle.dart';
import '../../../Presentation/Views/Widgets/download_cv_section.dart';
import 'mobile_auto_written_text_and_palestine_flag.dart';
import 'mobile_my_skills_list.dart';
import 'mobile_profile.dart';
import 'mobile_work_list.dart';

class MobileViewBody extends StatefulWidget
{
  const MobileViewBody({
    super.key,
  });
  static late ScrollController scrollController;

  @override
  State<MobileViewBody> createState() => _MobileViewBodyState();
}

class _MobileViewBodyState extends State<MobileViewBody> with SingleTickerProviderStateMixin
{
  late AnimationController animationController;
  double rotationValue = 0.0;
  bool cvHover = false;

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

    MobileViewBody.scrollController = ScrollController();
  }

  @override
  void dispose()
  {
    animationController.dispose();
    MobileViewBody.scrollController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/power-bi.png'), context);
    precacheImage(const AssetImage('Assets/Images/image_149.png'), context);
    precacheImage(const AssetImage('Assets/Images/Hexagonal Profile Photo.png'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: SingleChildScrollView(
        controller: MobileViewBody.scrollController,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),

            const MobileProfile().animate().moveX(
              duration: 500.milliseconds,
              begin: 200,
              end: -50,
            ).then().fade().then().shimmer(duration: 2.seconds, curve: Curves.easeInOut),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            Text('WELCOME TO MY PORTFOLIO,', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp, color: babyPowder)),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

            Text(
                "I'm Mohammad Adel Metwalli",
                style: TextStyle(fontSize: 15.sp, color: babyPowder, fontWeight: FontWeight.bold)
            ),

            const MobileAutoWrittenTextAndPalestineFlag(),

            const SocialIconsList(),

            const MobileWinkZeroDistance(),

            const DistanceZeroTriangle(),

            MouseRegion(
              onEnter: (event) => setState(() => cvHover = true),
              onExit: (event) => setState(() => cvHover = false),
              child: DownloadCvSection(cvHover: cvHover),
            ),

            const CopyRightSection(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),

            BriefSection(smallBrief: smallBrief),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),

            Center(child: Text('My Skills', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, color: babyPowder))),

            const MobileMySkillsList(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.125),

            Center(child: Text('My Work Experience', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp, color: babyPowder))),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            const MobileWorkList(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
          ],
        ),
      ),
    );
  }
}