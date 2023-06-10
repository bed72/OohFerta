import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';

class ScaffoldWidget extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;

  const ScaffoldWidget({
    super.key,
    required this.child,
    this.appBar,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.grey.shade100,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor ?? context.colorGrey.g200,
        appBar: appBar,
        body: SafeArea(child: child),
      ),
    );
  }
}
