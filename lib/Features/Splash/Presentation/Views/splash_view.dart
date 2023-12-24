import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/Core/Utils/constant_colors.dart';
import 'Widgets/splash_view_body.dart';

class SplashView extends StatefulWidget
{
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
{
  @override
  void initState()
  {
    super.initState();
    navigateToPortfolioView();
  }

  navigateToPortfolioView()
  {
    Future.delayed(
      const Duration(seconds: 5), () => GoRouter.of(context).replace('/portfolioView')
    );
  }

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/Black logo.png'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: blackColor,
      body: SplashViewBody(),
    );
  }
}