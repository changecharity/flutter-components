library paintings;

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ChangeBankPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paintA = Paint()
      ..color = Colors.lightBlue[200]
      ..style = PaintingStyle.fill;
    var paintB = Paint()
      ..color = Colors.lightBlue[400].withOpacity(0.8)
      ..style = PaintingStyle.fill;

    var pathA = Path();
    pathA.moveTo(size.width * 0.6, -100);
    pathA.quadraticBezierTo(
        size.width * 0.75, size.height * 0.14,
        size.width*0.65, size.height* 0.2);
    pathA.quadraticBezierTo(
        size.width * 0.5, size.height * 0.28,
        size.width*0.25, size.height* 0.2);
    pathA.quadraticBezierTo(
        size.width * 0.15, size.height * 0.17,
        0, size.height* 0.25);
    pathA.lineTo(0, -100);
    canvas.drawPath(pathA, paintA);

    var pathB = Path();
    pathB.moveTo(0, size.height* 0.28);
    pathB.quadraticBezierTo(
        size.width * 0.18, size.height * 0.14,
        size.width*0.33, size.height* 0.15);
    pathB.quadraticBezierTo(
        size.width * 0.62, size.height * 0.23,
        size.width*0.58, size.height* 0.1);
    pathB.quadraticBezierTo(
        size.width * 0.4, -200,
        size.width * 0.25, size.height* 0.01);
    pathB.quadraticBezierTo(
        size.width * 0.2, size.height* 0.1,
        0, size.height* 0.03);
    canvas.drawPath(pathB, paintB);
  }

  @override
  bool shouldRepaint(ChangeBankPaint oldDelegate) => false;
}


class ChangeLoginPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paintA = Paint()
      ..color = Colors.lightBlue[200]
      ..style = PaintingStyle.fill;
    var paintB = Paint()
      ..color = Colors.lightBlue[400].withOpacity(0.8)
      ..style = PaintingStyle.fill;

    var pathA = Path();
    pathA.moveTo(size.width, -70);
    pathA.lineTo(size.width*0.75, -75);
    pathA.quadraticBezierTo(
        size.width * 0.37, size.height * 0.1,
        size.width*0.63, size.height* 0.13);
    pathA.quadraticBezierTo(
        size.width * 0.83, size.height * 0.15,
        size.width*0.8, size.height* 0.25);
    pathA.quadraticBezierTo(
        size.width * 0.8, size.height * 0.35,
        size.width, size.height* 0.26);
    canvas.drawPath(pathA, paintA);

    var pathB = Path();
    pathB.moveTo(size.width, -70);
    pathB.lineTo(size.width*0.6, -70);
    pathB.quadraticBezierTo(
        size.width * 0.53, size.height * 0.1,
        size.width*0.7, size.height* 0.1);
    pathB.quadraticBezierTo(
        size.width * 0.9, size.height * 0.11,
        size.width*0.82, size.height* 0.2);
    pathB.quadraticBezierTo(
        size.width * 0.67, size.height * 0.33,
        size.width, size.height* 0.25);
    canvas.drawPath(pathB, paintB);
  }

  @override
  bool shouldRepaint(ChangeLoginPaint oldDelegate) => false;
}

class ChangeSignUpPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paintA = Paint()
      ..color = Colors.lightBlue[200]
      ..style = PaintingStyle.fill;
    var paintB = Paint()
      ..color = Colors.lightBlue[400].withOpacity(0.8)
      ..style = PaintingStyle.fill;

    var pathA = Path();
    pathA.moveTo(0, size.height * 0.35);
    pathA.quadraticBezierTo(
        size.width*0.5, size.height * 0.32,
        size.width*0.38, size.height* 0.42);
    pathA.quadraticBezierTo(
        size.width * 0.12, size.height * 0.6,
        size.width*0.35, size.height* 0.7);
    pathA.quadraticBezierTo(
        size.width * 0.6, size.height * 0.78,
        0, size.height*0.85);
    canvas.drawPath(pathA, paintA);

    var pathB = Path();
    pathB.moveTo(0, size.height * 0.3);
    pathB.quadraticBezierTo(
        size.width*0.39, size.height * 0.25,
        size.width*0.25, size.height* 0.42);
    pathB.quadraticBezierTo(
        size.width*0.05, size.height * 0.6,
        size.width*0.3, size.height* 0.62);
    pathB.quadraticBezierTo(
        size.width*0.52, size.height * 0.65,
        0, size.height* 0.75);
    canvas.drawPath(pathB, paintB);
  }

  @override
  bool shouldRepaint(ChangeSignUpPaint oldDelegate) => false;
}

class ChangeSearchPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paintA = Paint()
      ..color = Colors.lightBlue[200]
      ..style = PaintingStyle.fill;
    var paintB = Paint()
      ..color = Colors.lightBlue[400].withOpacity(0.8)
      ..style = PaintingStyle.fill;

    var pathA = Path();
    pathA.moveTo(size.width + 100, size.height * 0.8);
    pathA.quadraticBezierTo(
        size.width*0.7, size.height * 0.72,
        size.width*0.68, size.height* 0.85);
    pathA.quadraticBezierTo(
        size.width*0.68, size.height * 0.93,
        size.width*0.52, size.height* 0.93);
    pathA.quadraticBezierTo(
        size.width*0.43, size.height * 0.93,
        size.width*0.4, size.height);
    pathA.lineTo(size.width + 100, size.height + 100);
    canvas.drawPath(pathA, paintA);

    var pathB = Path();
    pathB.moveTo(size.width + 100, size.height * 0.88);
    pathB.quadraticBezierTo(
        size.width*0.89, size.height * 0.6,
        size.width*0.82, size.height* 0.8);
    pathB.quadraticBezierTo(
        size.width*0.8, size.height * 0.88,
        size.width*0.58, size.height* 0.91);
    pathB.quadraticBezierTo(
        size.width*0.49, size.height * 0.93,
        size.width*0.48, size.height);
    pathB.lineTo(size.width + 100, size.height + 100);
    canvas.drawPath(pathB, paintB);
  }

  @override
  bool shouldRepaint(ChangeSearchPaint oldDelegate) => false;
}

class ChangeHomePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    var paintA = Paint()
      ..color=Colors.lightBlue[200]
      ..style=PaintingStyle.fill;
    var paintB=Paint()
      ..color=Colors.lightBlue[400].withOpacity(.8)
      ..style=PaintingStyle.fill;
    var pathA = Path();
    pathA.moveTo(size.width, size.height*.25);
    pathA.lineTo(size.width, size.height*.65);
    pathA.quadraticBezierTo(
        size.width-200, size.height*.55,
        size.width-100, size.height*.45);
    pathA.quadraticBezierTo(
        size.width, size.height*.35,
        size.width-150, size.height*.3);
    pathA.quadraticBezierTo(
        size.width-250,size.height*.25,
        size.width, size.height*.2);
    var pathB = Path();
    pathB.moveTo(size.width, size.height*.15);
    pathB.lineTo(size.width, size.height*.7);
    pathB.quadraticBezierTo(
        size.width-200, size.height*.55,
        size.width-100, size.height*.48);
    pathB.quadraticBezierTo(
        size.width+100, size.height*.35,
        size.width-100, size.height*.35);
    pathB.quadraticBezierTo(
        size.width-350, size.height*.35,
        size.width, size.height*.25);

    canvas.drawPath(pathA, paintA);
    canvas.drawPath(pathB, paintB);
  }
  @override
  bool shouldRepaint(ChangeHomePaint oldDelegate)=>false;

}

class ChangeProfilePaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paintA = Paint()
      ..color = Colors.lightBlue[200]
      ..style = PaintingStyle.fill;
    var paintB = Paint()
      ..color = Colors.lightBlue[400].withOpacity(0.8)
      ..style = PaintingStyle.fill;

    var pathA = Path();
    pathA.moveTo(size.width, size.height+50);
    pathA.lineTo(size.width, size.height *.85);
    pathA.quadraticBezierTo(
        size.width*.8, size.height*.6,
        size.width*.65, size.height*.85
    );
    pathA.quadraticBezierTo(
        size.width*.6, size.height*.95,
        size.width*.3, size.height*.9
    );
    pathA.quadraticBezierTo(
        size.width*.1, size.height*.88,
        size.width*.2, size.height+50
    );
    canvas.drawPath(pathA, paintA);

    var pathB = Path();
    pathB.moveTo(size.width, size.height+50);
    pathB.lineTo(size.width, size.height*.95);
    pathB.quadraticBezierTo(
        size.width*.7, size.height*.55,
        size.width*.5, size.height*.9
    );
    pathB.quadraticBezierTo(
        size.width*.45, size.height,
        size.width*.2, size.height*.9
    );
    pathB.quadraticBezierTo(
        size.width*.05, size.height*.85,
        size.width*.1, size.height+50
    );
    canvas.drawPath(pathB, paintB);

  }

  @override
  bool shouldRepaint(ChangeProfilePaint oldDelegate) => false;
}