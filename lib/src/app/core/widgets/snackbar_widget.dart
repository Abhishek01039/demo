import 'package:demo/src/config/color_config.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

/// Show snackbar
void showSnackbar({
  required BuildContext context,
  required String text,
}) {
  // Display snackbar only for mobile
  if (!kIsWeb) {
    Flushbar<String>(
      margin: const EdgeInsets.only(left: 8, right: 8, bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      boxShadows: const [
        BoxShadow(color: Colors.black38, offset: Offset(0, 3), blurRadius: 18)
      ],
      borderRadius: 4,
      backgroundColor: Styleguide.colorGray_9,
      messageText: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: Styleguide.colorGray_2),
      ),
      duration: const Duration(seconds: 2),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    ).show(context);
  }
}
