import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:keyboard_attachable/src/footer_layout.dart';

class AutoDismissFooterLayout extends StatelessWidget {
  const AutoDismissFooterLayout({
    super.key,
    this.footer,
    this.child,
    this.dismissOnCapturedTaps = false,
  });

  /// The widget to position at the bottom of the available space.
  final Widget? footer;

  /// The primary content of the [FooterLayout].
  final Widget? child;

  /// Tap whitespace area keyboard dismiss.
  final bool dismissOnCapturedTaps;
  @override
  Widget build(BuildContext context) => KeyboardDismissOnTap(
        child: FooterLayout(
          footer: footer,
          child: child,
        ),
      );
}
