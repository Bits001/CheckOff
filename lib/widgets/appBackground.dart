import 'package:checkoff/utils/extension.dart';
import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({
    super.key,
    this.body,
    this.header,
    this.headerHeight,
  });

  final Widget? body;
  final Widget? header;
  final double? headerHeight;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Column(
      children: [
        Container(
          height: headerHeight,
          width: deviceSize.width,
          color: colors.primary,
          child: Center(
            child: header,
          ),
        )
      ],
    );
  }
}
