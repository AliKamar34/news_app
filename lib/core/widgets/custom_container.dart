import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.child,
    this.backgroundColor,
    this.padding,
    this.height,
    this.borderRadius,
    this.margin,
  });
  final Widget child;
  final Color? backgroundColor;
  final double? padding;
  final double? height;
  final double? borderRadius;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.all(padding ?? 6),
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
      child: child,
    );
  }
}
