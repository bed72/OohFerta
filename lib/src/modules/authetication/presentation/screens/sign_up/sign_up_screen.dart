import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:oohferta/src/modules/authetication/data/models/request/sign_up_resquest_model.dart';
import 'package:oohferta/src/modules/core/data/value_objects/email_vo.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';
import 'package:oohferta/src/shared/widgets/buttons/button_widget.dart';
import 'package:oohferta/src/shared/widgets/scaffolds/scaffold_widget.dart';
import 'package:oohferta/src/shared/widgets/buttons/icon_button_widget.dart';
import 'package:oohferta/src/shared/widgets/fields/text_form_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscureText = false;
  final _formKey = GlobalKey<FormState>();

  SignUpRequestModel _vo = SignUpRequestModel.empty();

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colorGrey.g100,
        foregroundColor: context.colorGrey.g600,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
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
                valueObject: _vo.name,
                suffixIcon: _suffixIcon(),
                hintText: 'Entre com seu nome',
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                onChanged: (value) => _vo = _vo.copyWith(name: value),
              ),
              const SizedBox(height: 16),
              TextFormFieldWidget(
                label: 'E-mail',
                valueObject: _vo.email,
                suffixIcon: _suffixIcon(),
                hintText: 'Entre com seu e-mail',
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => _vo = _vo.copyWith(email: value),
              ),
              const SizedBox(height: 16),
              TextFormFieldWidget(
                label: 'Senha',
                isEnabled: true,
                valueObject: _vo.password,
                isObscureText: !_isObscureText,
                hintText: 'Entre com sua senha',
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) => _vo = _vo.copyWith(password: value),
                onFieldSubmitted: (value) => log('Submitted $value'),
                suffixIcon: IconButtonWidget(
                  onPressed: () =>
                      setState(() => _isObscureText = !_isObscureText),
                  icon: Icon(
                    !_isObscureText ? Icons.visibility : Icons.visibility_off,
                    color: context.colorGrey.g400,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              ButtonWidget(
                title: 'Criar Conta',
                isDisabled: _vo.validate().isLeft,
                foregroundColor: context.colorGrey.g100,
                backgroundColor: context.colorPrimary.p700,
                titleStyle: context.fontBody1.semiBold!.copyWith(
                  color: context.colorGrey.g100,
                ),
                onPressed: () => {
                  _vo.validate().fold(
                        (failure) => log(failure),
                        (success) => log(success.toString()),
                      ),
                },
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _suffixIcon() => IconButtonWidget(
        onPressed: () {},
        icon: const Icon(Icons.close_rounded),
      );
}
