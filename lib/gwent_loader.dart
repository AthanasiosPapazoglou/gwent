import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GwentLoader extends StatelessWidget {
  const GwentLoader({
    this.width = 50,
    this.height = 50,
    this.size = 50,
    this.color = Colors.white,
    Key? key}) : super(key: key);

    final double width;
    final double height; 
    final double size;
    final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: SpinKitCircle(
          color: color,
          size: size,
        ),
      ),
    );
  }
}
