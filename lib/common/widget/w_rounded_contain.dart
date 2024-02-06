import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double radius;
  final Color? backgroundColor;
  final double? width;

  const RoundedContainer(
      {super.key,
      required this.child,
      this.width,
      this.radius = 20,
      this.backgroundColor,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? context.appColors.roundedLayoutBackground,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
