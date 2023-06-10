import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';

import 'package:oohferta/src/shared/widgets/scaffolds/scaffold_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colorGrey.g200,
        foregroundColor: context.colorGrey.g600,
      ),
      child: const Center(
        child: Text('SignUp'),
      ),
    );
  }
}
