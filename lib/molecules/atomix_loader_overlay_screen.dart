import 'package:atomix_design/theme/color/atomix_colors.dart';
import 'package:flutter/material.dart';

class AtomixLoaderOverlayScreen extends StatelessWidget {
  final bool showLoader;
  final bool dismissible;
  final VoidCallback? onDismiss;
  final Widget child;

  const AtomixLoaderOverlayScreen({
    Key? key,
    required this.showLoader,
    this.dismissible = false,
    this.onDismiss,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (showLoader)
          GestureDetector(
            onTap: dismissible ? onDismiss : null,
            child: Container(
              color: AtomixColors.color000000.withOpacity(0.5),
              child: Center(
                child: CircularProgressIndicator(
                  color: AtomixColors.colorFFFFFF,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
