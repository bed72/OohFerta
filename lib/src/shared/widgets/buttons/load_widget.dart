import 'package:flutter/material.dart';

class LoadWidget extends StatelessWidget {
  final Color? color;
  final double width;
  final double height;

  const LoadWidget({
    super.key,
    required this.color,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(color!),
      ),
    );
  }
}
