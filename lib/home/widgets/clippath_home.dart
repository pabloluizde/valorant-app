import 'package:flutter/material.dart';
import 'package:vava_app/themes/app_colors.dart';

class ClippathHome extends StatelessWidget {
  const ClippathHome({
    Key? key,
    required this.vrrr,
  }) : super(key: key);

  final double vrrr;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TsClip1(),
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: vrrr,
        color: AppColors.grey,
      ),
    );
  }
}

class TsClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height * 0.05);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width, 0, size.width - 320.0, 30.0 * 1.1);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
