import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    foregroundColor: context.colorGrey.g100,
                    backgroundColor: context.colorPrimary.p700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: context.fontBody1.semiBold!.copyWith(
                      color: context.colorGrey.g100,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                    elevation: 0,
                    foregroundColor: context.colorGrey.g400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  child: Text('Sign in', style: context.fontBody1.regular),
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
