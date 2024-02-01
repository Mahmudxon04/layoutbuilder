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
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});


  @override
  State<MainScreen> createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen>
  with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Tween<double> animation;
  @override
  void initState() {
  animationController = AnimationController(
    vsync: this, duration: const Duration(seconds: 1),
  )..addStatusListener((status) {
    if(status == AnimationStatus.completed) {
      animationController.reverse();
    } else if(status == AnimationStatus.dismissed) {
      animationController.forward();
    }

  });
  animation = Tween<double>(
    begin: 0.8, end: 0,
  );

  animationController.forward();
  super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: AnimatedBuilder(
          builder: (context, child) => CustomPaint(
            painter: PackManPainter(
              mouthExtend: animationController.value,

            ),
          ),
          animation: animation.animate(animationController),
        ),
      )
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
    );
  }
  // int gatMaxColumnSize(double value) {
  //   if(value < 1020) {
  //     return 1;
  //   } else if(value < 1020 && value > 1280) {
  //     return 2;
  //   } else {
  //     return 3;
  //   }
  // }
}

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

class PackManPainter extends CustomPainter {

  final double mouthExtend;
  const PackManPainter({
    super.repaint,
    required this.mouthExtend,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final paint = Paint();
    paint.color = Colors.red;

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(centerX, centerY),
        width: 200,
        height: 200,
      ),
      0.4,
      2 * pi - mouthExtend,
      true,
      paint,
    );

    canvas.drawCircle(
      Offset(-20, -50),
      10,
      Paint()..color = Colors.black,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

