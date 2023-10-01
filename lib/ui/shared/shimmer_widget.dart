import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: Shimmer.fromColors(
        baseColor: const Color(0xffefeff6),
        highlightColor: const Color(0xffe4e0ff),
        child: Container(
          color: Colors.white70,
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
