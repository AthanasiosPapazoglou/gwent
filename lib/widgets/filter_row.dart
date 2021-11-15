import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterRow extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 8,
          width: 16,
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('GameAssets/svgAssets/playing-cards-svgrepo-com.svg'),
        ),
        Container(
          height: 8,
          width: 16,
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('GameAssets/svgAssets/sword-svgrepo-com.svg'),
        ),
        Container(
          height: 8,
          width: 16,
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('GameAssets/svgAssets/crossbow-svgrepo-com.svg'),
        ),
        Container(
          height: 8,
          width: 16,
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset('GameAssets/svgAssets/catapult-svgrepo-com.svg'),
        ),
      ],
      
    );
  }
}