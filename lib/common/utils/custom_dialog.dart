import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  static void showCustomDialog(
    BuildContext context, {
    required String title,
    required Widget content,
    required List<Widget> actions,
    String? subTitle,
    String? titleAction,
  }) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      builder: (context) {
        return AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (subTitle != null)
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  if (titleAction != null)
                    Text(
                      titleAction,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                ],
              ),
              const Divider(),
            ],
          ),
          backgroundColor: AppColors.backgroundColor,
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                content,
                const SizedBox(height: 16),
                Row(
                  children: actions,
                ),
              ],
            ),
          ),
          clipBehavior: Clip.none
        );
      },
    );
  }
}
