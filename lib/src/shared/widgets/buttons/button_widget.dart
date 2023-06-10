import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/widgets/buttons/load_widget.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool isLoading;
  final bool isDisabled;
  final TextStyle titleStyle;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final void Function()? onPressed;

  const ButtonWidget({
    super.key,
    required this.title,
    required this.titleStyle,
    required this.onPressed,
    required this.foregroundColor,
    required this.backgroundColor,
    this.isLoading = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          enableFeedback: true,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          shadowColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: isLoading
            ? LoadWidget(
                width: 20,
                height: 20,
                color: foregroundColor,
              )
            : Text(title, style: titleStyle),
      ),
    );
  }
}
