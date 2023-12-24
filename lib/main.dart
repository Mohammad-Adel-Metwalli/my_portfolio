import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Core/Utils/app_router.dart';

void main()
{
  runApp(const PortfolioWebsite());
}

class PortfolioWebsite extends StatelessWidget
{
  const PortfolioWebsite({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.vigaTextTheme(), useMaterial3: true, brightness: Brightness.dark),
        routerConfig: AppRouter.routes,
      ),
    );
  }
}