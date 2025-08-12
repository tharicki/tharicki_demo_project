import 'package:flutter/material.dart';

void showAutoDismissSuccessDialog(BuildContext builderContext, String title, String message) {
  showDialog(
    context: builderContext,
    barrierDismissible: false,
    builder: (_) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(builderContext).pop(); // Dismiss after 2 seconds
      });

      return AlertDialog(
        title: Text(title),
        content: Text(message),
      );
    },
  );
}
