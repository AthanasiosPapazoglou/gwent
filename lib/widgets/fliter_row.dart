import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterRow extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(assetName)
      ],
      
    );
  }
}