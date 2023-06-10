import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';
import 'package:oohferta/src/shared/widgets/buttons/button_widget.dart';
import 'package:oohferta/src/shared/widgets/images/image_widget.dart';
import 'package:oohferta/src/shared/widgets/scaffolds/scaffold_widget.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              const Expanded(
                flex: 8,
                child: ImageWidget(
                  height: 200,
                  image: 'onboard_search.png',
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                flex: 2,
                child: Text(
                  'Divulgue suas OohFertas',
                  textAlign: TextAlign.center,
                  style: context.fontHeading2.semiBold,
                ),
              ),
              Expanded(
                child: Text(
                  'Vamos ajudar você a divulgar seus produtos de forma simple e prática.',
                  textAlign: TextAlign.center,
                  style: context.fontBody1.regular!.copyWith(
                    color: context.colorGrey.g400,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ButtonWidget(
                  title: 'Criar Conta',
                  foregroundColor: context.colorGrey.g100,
                  backgroundColor: context.colorPrimary.p700,
                  onPressed: () => Modular.to.pushNamed('sign_up'),
                  titleStyle: context.fontBody1.semiBold!.copyWith(
                    color: context.colorGrey.g100,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ButtonWidget(
                  title: 'Já possuí uma conta?',
                  backgroundColor: context.colorGrey.g200,
                  foregroundColor: context.colorGrey.g300,
                  onPressed: () => Modular.to.pushNamed('sign_in'),
                  titleStyle: context.fontBody1.semiBold!.copyWith(
                    color: context.colorGrey.g400,
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
