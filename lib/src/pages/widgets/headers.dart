import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff5082de),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70)),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        //color: Color(0xff5082de),
        child: CustomPaint(
          painter: _HeaderDiagonalPainter(),
        ));
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = const Color(0xff5082de);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        //color: Color(0x8D5082DE),
        child: CustomPaint(painter: _HeaderCurvolPainter()));
  }
}

class _HeaderCurvolPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();
    lapiz.color = const Color(0xff55ABDB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * .5, size.height * .45, size.width, size.height * .25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(CustomPainter oldDelegate) => false;
}
