import 'package:atomix_design/atomix_design_export.dart';
import 'package:flutter/material.dart';

class AtomixTextForm extends StatelessWidget {
  final TextEditingController? controller;
  final String? initialValue;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final String? prefixText;
  final String? suffixText;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final EdgeInsetsGeometry padding;
  const AtomixTextForm(
      {super.key,
      this.controller,
      this.initialValue,
      this.hintText,
      this.labelText,
      this.helperText,
      this.errorText,
      this.prefixText,
      this.suffixText,
      this.prefix,
      this.suffix,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText,
      this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8)});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
        child: TextFormField(
          controller: controller,
          initialValue: initialValue,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            fillColor: AtomixColors.colorFFFFFF,
            filled: true,
            border: OutlineInputBorder(),
            labelText: 'Enter your username',
            hintText: 'Enter your username',
          ),
        ));
  }
}
