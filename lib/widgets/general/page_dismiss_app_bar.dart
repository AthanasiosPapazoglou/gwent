// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DismissPromptAppBar extends StatelessWidget {
  const DismissPromptAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        color: Colors.black.withOpacity(.7),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(48, 0, 0, 0),
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 48, 0),
              child: Text(
                'Tap or Slide to Return',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
