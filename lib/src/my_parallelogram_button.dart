import 'package:flutter/material.dart';
import 'package:shaped_buttons/src/my_parallelogram.dart';

class ParallalogramButton extends StatelessWidget {
  ParallalogramButton(
      {this.key,
      this.onPressed,
      this.buttonColor = Colors.blue,
      this.borderColor,
      this.borderWdth = 1,
      this.margin,
      this.height = 50,
      this.width = 120,
      this.boxShadow,
      this.tilt=10,
      @required this.child})
      : super(key: key);
  final Key key;
  final Widget child;
  final VoidCallback onPressed;
  final Color buttonColor;
  final List<BoxShadow> boxShadow;
  final Color borderColor;
  final double borderWdth;
  final EdgeInsetsGeometry margin;
  final double height;
  final double width;
  final double tilt;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: height,
      width: width,
      margin: margin ?? EdgeInsets.only(left: 1, right: 1),
      decoration: BoxDecoration(boxShadow: boxShadow),
      child: GestureDetector(
        onTap: onPressed,
        child: CustomPaint(
          painter: MyParallelogram(
              tilt: tilt,
              borderColor: borderColor ?? buttonColor,
              borderWidth: borderWdth,
              buttonColor: buttonColor),
          child: Center(
            child: Container(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
