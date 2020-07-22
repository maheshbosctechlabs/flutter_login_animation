import 'dart:math';

import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final String logoTxt;
  final double fontSize;
  final double myHeight;
  final double myWidth;
  LogoWidget({
    Key key,
    @required this.logoTxt,
    @required this.fontSize,
    @required this.myHeight,
    @required this.myWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          logoTxt,
          style: Theme.of(context).textTheme.caption.copyWith(
                fontSize: fontSize,
                color: Color(0XFF22419A),
                fontWeight: FontWeight.w800,
              ),
        ),
        SizedBox(
          width: 10,
        ),
        Transform.rotate(
            angle: pi / 4,
            child: Container(
              height: myHeight,
              width: myWidth,
              color: Color(0XFF22419A),
              child: Center(
                child: Container(
                  height: 15,
                  width: 15,
                  color: Colors.white,
                ),
              ),
            )),
      ],
    );
  }
}
