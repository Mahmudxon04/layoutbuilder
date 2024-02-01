import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example2(),
    );
  }
}



class Example2 extends StatelessWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Snowman'),
      ),
      body: CustomPaint(
        painter: MyPainter(),
        child: Container(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawCircle(Offset(size.width / 2, size.height * 3.5 / 10), 70, Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 5.5 / 10), 100, Paint()..color = Colors.white);
    canvas.drawCircle(Offset(size.width / 2, size.height * 8 / 10), 120, Paint()..color = Colors.white);
    paint.strokeWidth = 2;
    // body
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5 / 10), 5, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5.3 / 10), 5, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5.2 / 10, size.height * 5.6 / 10), 5, Paint()..color = Colors.black);
    // head
    canvas.drawCircle(Offset(size.width * 5.8 / 10, size.height * 3.2 / 10), 5, Paint()..color = Colors.blue);
    canvas.drawCircle(Offset(size.width * 4.6 / 10, size.height * 3.2 / 10), 5, Paint()..color = Colors.blue);
    // smile
    canvas.drawCircle(Offset(size.width * 4.6 / 10, size.height * 3.8 / 10), 5, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 4.9 / 10, size.height * 3.9 / 10), 5, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5.3 / 10, size.height * 3.9 / 10), 5, Paint()..color = Colors.black);
    canvas.drawCircle(Offset(size.width * 5.6 / 10, size.height * 3.8 / 10), 5, Paint()..color = Colors.black);
    // nose
    final nosePath = Path()
      ..moveTo(size.width * 5.2 / 10, size.height * 3.4 / 10)
      ..lineTo(size.width * 7.6 / 10, size.height * 3.3 / 10)
      ..lineTo(size.width * 5.2 / 10, size.height * 3.5 / 10)
      ..lineTo(size.width * 5.2 / 10, size.height * 3.4 / 10);
    canvas.drawPath(nosePath, Paint()..color = Colors.red);
    final leftArm = Path()
      ..moveTo(size.width * 7.2 / 10, size.height * 4.8 / 10)
      ..lineTo(size.width * 8.5 / 10, size.height * 4.3 / 10)
      ..lineTo(size.width * 8.7 / 10, size.height * 4 / 10)
      ..lineTo(size.width * 8.85 / 10, size.height * 4.05 / 10)
      ..lineTo(size.width * 8.7 / 10, size.height * 4.3 / 10)
      ..lineTo(size.width * 9 / 10, size.height * 4.15 / 10)
      ..lineTo(size.width * 9.1 / 10, size.height * 4.2 / 10)
      ..lineTo(size.width * 8.74 / 10, size.height * 4.38 / 10)
      ..lineTo(size.width * 9.16 / 10, size.height * 4.46 / 10)
      ..lineTo(size.width * 9.1 / 10, size.height * 4.55 / 10)
      ..lineTo(size.width * 8.65 / 10, size.height * 4.46 / 10)
      ..lineTo(size.width * 7.32 / 10, size.height * 4.97 / 10);
    print('ok');
    paint.strokeWidth = 5;
    canvas.drawPath(leftArm, Paint()..color = Colors.brown);
    final rightArm = Path()
      ..moveTo(size.width * 2.7 / 10, size.height * 4.8 / 10)
      ..lineTo(size.width * 1 / 10, size.height * 4 / 10)
      ..lineTo(size.width * 0.9 / 10, size.height * 3.7 / 10)
      ..lineTo(size.width * 0.7 / 10, size.height * 3.72 / 10)
      ..lineTo(size.width * 0.78 / 10, size.height * 4.05 / 10)
      ..lineTo(size.width * 0.38 / 10, size.height * 3.9 / 10)
      ..lineTo(size.width * 0.3 / 10, size.height * 4 / 10)
      ..lineTo(size.width * 0.77 / 10, size.height * 4.2 / 10)
      ..lineTo(size.width * 0.35 / 10, size.height * 4.3 / 10)
      ..lineTo(size.width * 0.35 / 10, size.height * 4.4 / 10)
      ..lineTo(size.width * 0.9 / 10, size.height * 4.3 / 10)
      ..lineTo(size.width * 2.6 / 10, size.height * 5.08 / 10);
    // hat

    print('ok');

    canvas.drawPath(rightArm, Paint()..color = Colors.brown);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 5 / 10, size.height * 2.6 / 10), width: 150, height: 40),
        Paint()..color = Colors.black26);

    final hatPath = Path()
      ..moveTo(size.width * 4 / 10, size.height * 2.6 / 10)
      ..lineTo(size.width * 4.1 / 10, size.height * 1.4 / 10)
      ..lineTo(size.width * 6 / 10, size.height * 1.4 / 10)
      ..lineTo(size.width * 6 / 10, size.height * 2.6 / 10)
      ..lineTo(size.width * 4 / 10, size.height * 2.6 / 10);
    canvas.drawPath(hatPath, Paint()..color = Colors.black26);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}















// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//
//
//   @override
//   State<MainScreen> createState() => _MainScreenState();
//
// }
//
// class _MainScreenState extends State<MainScreen>
//   with SingleTickerProviderStateMixin {
//
//   late AnimationController animationController;
//   late Tween<double> animation;
//   @override
//   void initState() {
//   animationController = AnimationController(
//     vsync: this, duration: const Duration(seconds: 1),
//   )..addStatusListener((status) {
//     if(status == AnimationStatus.completed) {
//       animationController.reverse();
//     } else if(status == AnimationStatus.dismissed) {
//       animationController.forward();
//     }
//
//   });
//   animation = Tween<double>(
//     begin: 0.8, end: 0,
//   );
//
//   animationController.forward();
//   super.initState();
//
//
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Center(
//         child: AnimatedBuilder(
//           builder: (context, child) => CustomPaint(
//             painter: PackManPainter(
//               mouthExtend: animationController.value,
//
//             ),
//           ),
//           animation: animation.animate(animationController),
//         ),
//       )
      // LayoutBuilder(
      //   builder: (context, constraints) {
      //     print(constraints.maxHeight);
      //     print(constraints.minHeight);
      //     print(constraints.maxWidth);
      //     print(constraints.maxWidth);
      //     return GridView(
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: gatMaxColumnSize(constraints.maxWidth),
      //       ),
      //       children: [
      //         WCard(),
      //         WCard(),
      //         WCard(),
      //         WCard(),
      //         WCard(),
      //         WCard(),
      //         WCard(),
      //       ],
      //     );
      //   },
      // ),
  //   );
  // }
  // int gatMaxColumnSize(double value) {
  //   if(value < 1020) {
  //     return 1;
  //   } else if(value < 1020 && value > 1280) {
  //     return 2;
  //   } else {
  //     return 3;
  //   }
  // }
// }

// class WCard extends StatelessWidget {
//   const WCard({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//           border: Border.all(
//             width: 1,
//             color: Colors.grey,
//           ),
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.2),
//               blurRadius: 4,
//             )
//           ]),
//       child: const Column(
//         children: [
//           Text(
//             'Title',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           SizedBox(height: 16),
//           Text(
//             'Lorem ipsum dolor sit amet! Lorem ipsum dolor sit amet! Lorem ipsum dolor sit amet! Lorem ipsum dolor sit amet! Lorem ipsum dolor sit amet!',
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PackManPainter extends CustomPainter {
//
//   final double mouthExtend;
//   const PackManPainter({
//     super.repaint,
//     required this.mouthExtend,
//   });
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final centerX = size.width / 2;
//     final centerY = size.height / 2;
//     final paint = Paint();
//     paint.color = Colors.red;
//
//     canvas.drawArc(
//       Rect.fromCenter(
//         center: Offset(centerX, centerY),
//         width: 200,
//         height: 200,
//       ),
//       0.4,
//       2 * pi - mouthExtend,
//       true,
//       paint,
//     );
//
//     canvas.drawCircle(
//       Offset(-20, -50),
//       10,
//       Paint()..color = Colors.black,
//     );
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
// }

