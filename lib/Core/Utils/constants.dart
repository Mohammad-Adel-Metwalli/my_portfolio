import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'constant_colors.dart';

List<String> texts = [
  'Flutter Developer',
  'Data Analysis Student',
];

BoxShadow customedShadowBox()
{
  return const BoxShadow(
      color: babyPowder,
      blurRadius: 20
  );
}

final skillsIcons = [
  Icon(Bootstrap.git, size: 70.h, color: red.withOpacity(0.7)),
  Logo(Logos.postman, size: 70.h),
  Logo(Logos.flutter, size: 70.h),
  Icon(DevIcons.dartPlain, size: 70.h, color: dartColor),
  Logo(Logos.firebase, size: 70.h),
  Logo(Logos.figma, size: 70.h),
  Logo(Logos.python, size: 70.h),
  Logo(Logos.postgresql, size: 70.h),
  Container(
    height: 90.h,
    width: 90.h,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(image: AssetImage('Assets/Images/power-bi.png'), fit: BoxFit.cover),
    ),
  ),
];

final skillsIconsNames = [
  'Git',
  'Postman',
  'Flutter',
  'Dart',
  'Firebase',
  'Figma',
  'Python',
  'PostgreSql',
  'Power BI',
];

final workExperienceList = [
  'Quran App',
  'QR Code App',
];

final workExperienceListSubtitle = [
  'The Quran App with Azkar is a comprehensive mobile application designed to enrich the spiritual journey of Muslims by seamlessly integrating the Quranic text with a collection of beneficial Azkar (remembrances) to enhance daily worship and mindfulness. User-friendly interface for easy navigation through surahs and verses. A dedicated section for Azkar, including morning and evening supplications, du\'as and remembrances, Categorized Azkar for different occasions, such as before sleep, after prayer, and during daily activities. Bookmark and highlight verses for easy reference.',
  'The QR Code Generator app is a versatile and user-friendly tool designed to simplify the process of sharing contact information and social media profiles. With a focus on popular platforms such as WhatsApp, LinkedIn, GitHub, Facebook, and Instagram, this app provides a convenient way to generate personalized QR codes for each of these services. Also, it will be stored in the gallery and can be shared with friends. The app works offline, ensuring that users can generate and share QR codes even in environments with limited or no internet connectivity, The app offers customization features, allowing users to personalize their QR codes with colors.',
];

final watchAppLinks = [
  'https://www.linkedin.com/posts/mohammad-adel-metwalli-21a102220_%D9%88-%D8%B1%D8%A8%D9%83-%D8%A7%D9%84%D8%BA%D9%81%D9%88%D8%B1-%D8%B0%D9%88-%D8%A7%D9%84%D8%B1%D8%AD%D9%85%D8%A9-%D8%A8%D8%B9%D8%AF-%D8%AA%D9%88%D9%81%D9%8A%D9%82-%D8%A7%D9%84%D9%84%D9%87-activity-7079210607484239872-2UVj?utm_source=share&utm_medium=member_desktop',
  'https://www.linkedin.com/posts/mohammad-adel-metwalli-21a102220_%D9%81%D8%B3%D8%A8%D8%AD%D9%86-%D9%B1%D9%84%D9%84%D9%87-%D8%AD%D9%8A%D9%86-%D8%AA%D9%85%D8%B3%D9%88%D9%86-%D9%88%D8%AD%D9%8A%D9%86-activity-7118720781693427712-0W3n?utm_source=share&utm_medium=member_desktop',
];

final previewCodeLinks = [
  'https://github.com/Mohammad-Adel-Metwalli/quran_app',
  'https://github.com/Mohammad-Adel-Metwalli/qr_code_app',
];

List<Widget> socialMediaIcons = [
  Icon(FontAwesomeIcons.github, color: babyPowder, size: 25.h),
  Icon(FontAwesomeIcons.facebook, color: babyPowder, size: 25.h),
  Icon(FontAwesomeIcons.linkedinIn, color: babyPowder, size: 25.h),
];

List<Widget> socialMediaIconsColored = [
  Icon(FontAwesomeIcons.github, color: blackColor, size: 25.h),
  Icon(FontAwesomeIcons.facebook, color: blue, size: 25.h),
  Icon(FontAwesomeIcons.linkedinIn, color: cerulean, size: 25.h),
];

final workExperience = [
  Icon(FlutterIslamicIcons.solidQuran, size: 40.h, color: brown),
  Icon(HeroIcons.qr_code, size: 40.h, color: blackColor),
  Icon(FontAwesomeIcons.briefcase , size: 30.h, color: darkPurple),
];

String smallBrief = 'Hello!\nI\'m Mohammad Adel, a passionate Flutter developer with a keen interest in data analysis. Currently pursuing my studies in data analysis, I find the intersection of technology and data fascinating. My journey in the world of Flutter development has been an exciting one, allowing me to create dynamic and engaging cross-platform applications. As I continue to explore the realms of data analysis, I look forward to integrating these skills with my development expertise to build innovative solutions. Always eager to learn and grow, I am committed to staying at the forefront of technology and contributing to the ever-evolving landscape of software development and data science.';

borderRadiusWork(double radius) => Radius.circular(radius);