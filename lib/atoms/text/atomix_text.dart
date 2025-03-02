import 'dart:ui';

import 'package:atomix_design/theme/color/atomix_colors.dart';
import 'package:flutter/material.dart';

enum AtomixTextType { regular, medium, semiBold, bold }

class AtomixText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;
  final textType;
  final maxLines;

  const AtomixText({
    required this.text,
    this.fontSize = 14,
    this.color = AtomixColors.color000000,
    this.textAlign = TextAlign.left,
    this.textType = AtomixTextType.regular,
    this.maxLines,
  });

  @override
  build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          // TODO fontWeight: _getFontWeight(),
          fontWeight: textType == AtomixTextType.bold
              ? FontWeight.w700
              : FontWeight.w400),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
