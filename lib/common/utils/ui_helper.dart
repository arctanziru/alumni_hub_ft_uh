import 'package:alumni_hub_ft_uh/common/utils/custom_dialog.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
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

void klaimData(
  BuildContext context,
) {
  CustomDialog.showCustomDialog(
    context,
    title: 'Klaim Data Alumni',
    content: Text(
      'Untuk mendapatkan akses full, isi kelengkapan data alumni',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    ),
    actions: [
      Expanded(
        child: ButtonWidget(
          label: 'Nanti',
          color: AppColors.secondaryColor,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      const SizedBox(width: 16),
      Expanded(
        child: ButtonWidget(
          label: 'Klaim Data',
          onPressed: () {
            Navigator.of(context).pushNamed('/claim_alumni_data');
          },
        ),
      ),
    ],
  );
}
