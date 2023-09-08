import 'package:checkoff/utils/extension.dart';
import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({
    super.key,
    this.height,
    this.width,
    this.child,
    this.color,
    this.borderRadius = 16,
    this.padding,
  });

  final double? height;
  final double? width;
  final Widget? child;
  final Color? color;
  final double borderRadius;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? colors.primaryContainer,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
