import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';

class IconButtonWidget extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;

  const IconButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPressed,
      style: IconButton.styleFrom(
        enableFeedback: true,
        shadowColor: context.colorGrey.g200,
        splashFactory: NoSplash.splashFactory,
      ),
      icon: icon,
    );
  }
}
