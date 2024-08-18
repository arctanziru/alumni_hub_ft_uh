import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 2),
    backgroundColor: Theme.of(context).primaryColor,
  ));
}

void showToastMessage({
  required String message,
  ToastGravity? gravity,
  Color? backgroundColor,
}) {
  String formattedMessage = message.replaceAll(r'\n', '\n');
  Fluttertoast.showToast(
    msg: formattedMessage,
    toastLength: Toast.LENGTH_LONG,
    gravity: gravity ?? ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: backgroundColor ?? Colors.grey[800],
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
