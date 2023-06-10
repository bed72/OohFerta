import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';
import 'package:oohferta/src/shared/widgets/buttons/button_widget.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorGrey.g200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Cooking with great experiences',
                textAlign: TextAlign.center,
                style: context.fontHeading2.semiBold,
              ),
              const SizedBox(height: 16),
              Text(
                'The best experience is given based on the ingredients you have at home',
                textAlign: TextAlign.center,
                style: context.fontBody1.regular!.copyWith(
                  color: context.colorGrey.g400,
                ),
              ),
              const SizedBox(height: 32),
              ButtonWidget(
                title: 'Register',
                onPressed: () => {},
                foregroundColor: context.colorGrey.g100,
                backgroundColor: context.colorPrimary.p700,
                titleStyle: context.fontBody1.semiBold!.copyWith(
                  color: context.colorGrey.g100,
                ),
              ),
              const SizedBox(height: 32),
              ButtonWidget(
                title: 'Sign in',
                onPressed: () => {},
                backgroundColor: context.colorGrey.g200,
                foregroundColor: context.colorPrimary.p400,
                titleStyle: context.fontBody1.semiBold!.copyWith(
                  color: context.colorGrey.g400,
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
