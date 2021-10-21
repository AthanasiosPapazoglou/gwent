import 'package:flutter/material.dart';

class MenuButtons extends StatelessWidget {
  final String buttonTitle;
  final String routeToNavigateAt;

  MenuButtons({required this.buttonTitle, required this.routeToNavigateAt});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Navigator.pushNamed(context, routeToNavigateAt);
      },
      child: Card(
        color: Colors.grey[300],
        child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
