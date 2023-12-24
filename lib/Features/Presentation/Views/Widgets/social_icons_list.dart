import 'package:flutter/material.dart';
import 'package:my_portfolio/Features/Presentation/Views/Widgets/social_icons_list_item.dart';
import '../../../../Core/Utils/Functions/used_functions.dart';

class SocialIconsList extends StatefulWidget
{
  const SocialIconsList({super.key,});

  @override
  State<SocialIconsList> createState() => _SocialIconsListState();
}

class _SocialIconsListState extends State<SocialIconsList>
{
  bool isHovering = false, isHovering1 = false, isHovering2 = false, isHovering3 = false;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        MouseRegion(
          onEnter: (event) => setState(() => isHovering = true),
          onExit: (event) => setState(() => isHovering = false),

          child: GestureDetector(
            onTap: () => launchUrlMedia('https://github.com/Mohammad-Adel-Metwalli'),
            
            child: SocialIconsListItem(isHovering: isHovering, index: 0),
          ),
        ),

        MouseRegion(
          onEnter: (event) => setState(() => isHovering1 = true),
          onExit: (event) => setState(() => isHovering1 = false),

          child: GestureDetector(
            onTap: () => launchUrlMedia('https://www.facebook.com/profile.php?id=100048932493274'),

            child: SocialIconsListItem(isHovering: isHovering1, index: 1),
          ),
        ),

        MouseRegion(
          onEnter: (event) => setState(() => isHovering2 = true),
          onExit: (event) => setState(() => isHovering2 = false),

          child: GestureDetector(
            onTap: () => launchUrlMedia('https://www.linkedin.com/in/mohammad-adel-metwalli-21a102220/'),

            child: SocialIconsListItem(isHovering: isHovering2, index: 2),
          ),
        ),

        const Spacer(),
      ],
    );
  }
}