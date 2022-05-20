import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class SiCCAShimmer extends StatelessWidget {
  final double width;
  final double height;
  final Color primaryColor;
  final Color highlightColor;

  const SiCCAShimmer({
    required Key key,
    required this.width,
    required this.height,
    required this.primaryColor,
    required this.highlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      key: key,
      baseColor: primaryColor,
      highlightColor: highlightColor,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: primaryColor,
        ),
      ),
    );
  }
}
