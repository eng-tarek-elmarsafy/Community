import 'package:community/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CourseBackground extends StatelessWidget {
  const CourseBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 351 / 156,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(55, 216, 232, 246),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          border: Border.all(color: Colors.black),
        ),

        child: Stack(
          children: [
            ClipPath(
              clipper: CustomClipperPath(),
              child: Container(color: AppColor.bul),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final rectPath =
        Path()..addRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(0, 0, size.width, size.height),
            const Radius.circular(16),
          ),
        );

    final circlePath =
        Path()..addOval(
          Rect.fromCircle(
            center: Offset(size.width * 0.2, size.height * 0.2),
            radius: size.width * 0.25,
          ),
        );

    return Path.combine(PathOperation.difference, rectPath, circlePath);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
