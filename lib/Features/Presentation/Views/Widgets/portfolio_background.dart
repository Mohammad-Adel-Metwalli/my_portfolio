import 'package:flutter/material.dart';

class PortfolioBackground extends StatelessWidget
{
  const PortfolioBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const Image(image: AssetImage('Assets/Images/15151444_5556661.jpg'), height: double.infinity, width: double.infinity, fit: BoxFit.cover);
  }
}