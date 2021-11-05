import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterRow extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('GameAssets/svgAssets/playing-cards-svgrepo-com.svg'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('GameAssets/svgAssets/sword-svgrepo-com.svg'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('GameAssets/svgAssets/crossbow-svgrepo-com.svg'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('GameAssets/svgAssets/catapult-svgrepo-com.svg'),
        ),
      ],
      
    );
  }
}