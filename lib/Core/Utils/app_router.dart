import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/Features/Splash/Presentation/Views/splash_view.dart';
import '../../Features/Mobile/Views/mobile_view.dart';
import '../../Features/Presentation/Views/portfolio_view.dart';

abstract class AppRouter
{
  static final routes = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashView(),
        ),

        //portfolioView
        GoRoute(
          path: '/portfolioView',
          pageBuilder: (context, state)
          {
            return CustomTransitionPage(
              child: MediaQuery.sizeOf(context).width <= 500 ? const MobileView() : const PortfolioView(),
              transitionDuration: const Duration(seconds: 1),
              transitionsBuilder: (context, animation, secondaryAnimation, child)
              {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            );
          },
        ),
      ]
  );
}