import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';
import 'package:oohferta/src/shared/widgets/buttons/button_widget.dart';
import 'package:oohferta/src/shared/widgets/scaffolds/scaffold_widget.dart';
import 'package:oohferta/src/shared/widgets/fields/text_form_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colorGrey.g100,
        foregroundColor: context.colorGrey.g600,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Criar conta',
                  style: context.fontHeading3.medium,
                ),
                const SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    text: 'Entre com seu Nome, E-mail e Senha para continuar.',
                    style: context.fontBody1.regular!.copyWith(
                      color: context.colorGrey.g400,
                    ),
                    children: [
                      TextSpan(
                        text: ' Já possuí uma conta?',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Modular.to.pushNamed('sign_in'),
                        style: context.fontBody1.regular!.copyWith(
                          color: context.colorPrimary.p400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                TextFormFieldWidget(
                  label: 'Nome',
                  controller: _nameController,
                  hintText: 'Entre com seu nome',
                  textInputType: TextInputType.name,
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  label: 'E-mail',
                  controller: _emailController,
                  errorText: 'E-mail inválido.',
                  hintText: 'Entre com seu e-mail',
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                TextFormFieldWidget(
                  label: 'Senha',
                  isEnabled: true,
                  isPassword: true,
                  controller: _passwordController,
                  hintText: 'Entre com sua senha',
                  textInputType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 32),
                ButtonWidget(
                  onPressed: () => {},
                  title: 'Criar Conta',
                  foregroundColor: context.colorGrey.g100,
                  backgroundColor: context.colorPrimary.p700,
                  titleStyle: context.fontBody1.semiBold!.copyWith(
                    color: context.colorGrey.g100,
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
