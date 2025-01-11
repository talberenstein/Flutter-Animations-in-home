import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff665646),
    );
  }
}

class BorderRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
          color: Color(0xff665646),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(990),
              bottomRight: Radius.circular(300))),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff665646),
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // propiedades
    paint.color = Color(0xff665646);
    // paint.style = PaintingStyle.stroke; // .fill
    paint.style = PaintingStyle.fill; // .fill
    paint.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el paint(lapiz)
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff665646),
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // propiedades
    paint.color = Color(0xff665646);
    // paint.style = PaintingStyle.stroke; // .fill
    paint.style = PaintingStyle.fill; // .fill
    paint.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el paint(lapiz)
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  const HeaderPico({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff665646),
      child: CustomPaint(
        painter: _HeaderPico(),
      ),
    );
  }
}

class _HeaderPico extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    // propiedades
    paint.color = Color(0xff665646);
    // paint.style = PaintingStyle.stroke; // .fill
    paint.style = PaintingStyle.fill; // .fill
    paint.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el paint(lapiz)
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width * 0.5, size.height * 0.25);
    path.lineTo(size.width, size.height * 0.2);
    path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width , 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff665646),
      color: Color.fromARGB(255, 245, 243, 242),
      child: CustomPaint(
        painter: _HeaderCurvoPaint(),
      ),
    );
  }
}

class _HeaderCurvoPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Gradient gradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[
        Color(0xff8B5E3C), // Mocha (soft brown)
        Color(0xffD7A98C), // Creamy beige
        Color(0xff5B3A29), // Chocolate
      ],
      stops: [0.0, 0.5, 1.0], // Ensures smooth transitions
    );

    final Rect rect =
        Rect.fromLTWH(0, 0, 900, 100); // Adjust rect dimensions as needed

    final paint = Paint()..shader = gradient.createShader(rect);
    // propiedades
    paint.color = Color(0xff665646);
    // paint.style = PaintingStyle.stroke; // .fill
    paint.style = PaintingStyle.fill; // .fill
    paint.strokeWidth = 20;

    final path = Path();

    //Dibujar con el path y el paint(lapiz)
    path.lineTo(0, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.25,
        size.width * 0.5, size.height * 0.35);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.45, size.width, size.height * 0.35);
    path.lineTo(size.width, 0);
    // path.lineTo(size.width, 0.2);
    // path.lineTo(size.width, size.height);
    // path.lineTo(size.width , 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
