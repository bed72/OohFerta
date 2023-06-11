import 'package:flutter/material.dart';

import 'package:oohferta/src/shared/extensions/context_extension.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String label;
  final bool isEnabled;
  final String hintText;
  final bool isPassword;
  final String? errorText;
  final TextInputType textInputType;
  final TextEditingController? controller;

  const TextFormFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.textInputType,
    this.errorText,
    this.isEnabled = true,
    this.isPassword = false,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: context.fontBody1.medium,
        ),
        const SizedBox(height: 16),
        TextFormField(
          enabled: widget.isEnabled,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          cursorColor: context.colorGrey.g400,
          decoration: InputDecoration(
            filled: true,
            hintText: widget.hintText,
            errorText: widget.errorText,
            fillColor: context.colorGrey.g200,
            focusColor: context.colorGrey.g200,
            hintStyle: context.fontBody2.regular!.copyWith(
              color: context.colorGrey.g400,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 12,
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.0),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                width: 1.0,
                color: context.colorGrey.g300!,
              ),
            ),
            errorStyle: context.fontBody2.regular!.copyWith(
              color: context.colorDanger.d700,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                width: 1.0,
                color: context.colorDanger.d700!,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                width: 1.0,
                color: context.colorDanger.d700!,
              ),
            ),
            suffixIcon: IconButton.filled(
              onPressed: () {},
              style: IconButton.styleFrom(
                enableFeedback: true,
                shadowColor: Colors.transparent,
                splashFactory: NoSplash.splashFactory,
              ),
              icon: widget.isPassword
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.close_outlined),
            ),
          ),
        ),
      ],
    );
  }
}
