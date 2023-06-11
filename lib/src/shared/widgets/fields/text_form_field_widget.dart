import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String label;
  final bool isEnabled;
  final String hintText;
  final String? errorText;
  final bool isObscureText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;

  const TextFormFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.onChanged,
    required this.keyboardType,
    required this.textInputAction,
    this.errorText,
    this.suffixIcon,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.isEnabled = true,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.fontBody1.medium,
        ),
        const SizedBox(height: 16),
        TextFormField(
          enabled: isEnabled,
          autocorrect: false,
          onChanged: onChanged,
          obscureText: isObscureText,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          inputFormatters: inputFormatters,
          onFieldSubmitted: onFieldSubmitted,
          cursorColor: context.colorGrey.g400,
          decoration: InputDecoration(
            filled: true,
            hintText: hintText,
            errorText: errorText,
            suffixIcon: suffixIcon,
            fillColor: context.colorGrey.g200,
            focusColor: context.colorGrey.g200,
            hintStyle: context.fontBody2.regular!.copyWith(
              color: context.colorGrey.g400,
            ),
            errorStyle: context.fontBody2.regular!.copyWith(
              color: context.colorDanger.d700,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 12,
            ),
            border: _normalBorder(),
            enabledBorder: _normalBorder(),
            disabledBorder: _normalBorder(),
            focusedBorder: _normalBorder().copyWith(
              borderSide: _borderSide(context.colorGrey.g300!),
            ),
            errorBorder: _errorBorder(context),
            focusedErrorBorder: _errorBorder(context),
          ),
        ),
      ],
    );
  }

  InputBorder _normalBorder() => OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(16.0),
      );

  InputBorder _errorBorder(BuildContext context) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: _borderSide(context.colorDanger.d700!),
      );

  BorderSide _borderSide(Color color) => BorderSide(
        width: 1.0,
        color: color,
      );
}
