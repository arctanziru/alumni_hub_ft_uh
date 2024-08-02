import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/features/auth/sign_up_screen.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart'; // Import yang benar

class LicenseScreen extends StatefulWidget {
  static const route = "/license";

  const LicenseScreen({super.key});

  @override
  State<LicenseScreen> createState() => _LicenseScreenState();
}

class _LicenseScreenState extends State<LicenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        titleSpacing: 0,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Persetujuan',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                  Text(
                    'Syarat dan Ketentuan',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.black,
                          fontWeight:
                              FontWeight.bold, // Set font weight to bold
                        ),
                  ),
                  Text(
                    'terakhir di-update: 5/12/2006',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        toolbarHeight: 100, // Adjust height as needed
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    klausaSection(
                      'Klausa 1',
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet ex fermentum sapien ultrices ornare sit amet non nibh. Sed ullamcorper massa consectetur lacus efficitur facilisis. Sed tincidunt vestibulum semper. Vestibulum in lobortis metus. Suspendisse sed sem ut justo mattis tempor elementum sed quam. Etiam non justo nec lorem bibendum egestas vitae a metus. Ut sit amet elit vel est rhoncus porta ut sed sapien. Vestibulum a pharetra neque. Quisque commodo, augue eu egestas cursus, est augue pellentesque dui, quis sollicitudin dolor ante ut ex. Aenean pharetra non sapien at blandit. Phasellus a ex arcu. Integer vitae ornare nulla, vitae ornare sem. Proin vulputate, est ut auctor eleifend, lorem justo ullamcorper arcu, quis dignissim lorem massa vel enim. Aenean maximus eu quam non fermentum.',
                    ),
                    const SizedBox(height: 16),
                    klausaSection(
                      'Klausa 2',
                      'Quisque commodo, augue eu egestas cursus, est augue pellentesque dui, quis sollicitudin dolor ante ut ex. Aenean pharetra non sapien at blandit. Phasellus a ex arcu. Integer vitae ornare nulla, vitae ornare sem. Proin vulputate, est ut auctor eleifend, lorem justo ullamcorper arcu, quis dignissim lorem massa vel enim. Aenean maximus eu quam non fermentum.',
                    ),
                    const SizedBox(height: 16),
                    klausaSection(
                      'Klausa 3',
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat. Aenean faucibus nibh et justo cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique posuere.',
                    ),
                    const SizedBox(height: 16),
                    klausaSection(
                      'Klausa 4',
                      'Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ButtonWidget(
                onPressed: () =>
                    Navigator.pushNamed(context, SignUpScreen.route),
                label: 'Setuju dan Lanjutkan',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget klausaSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold, // Set font weight to bold
              ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                height: 1.5, // Adjust line height as needed
              ),
          textAlign: TextAlign.justify, // Justify text alignment
        ),
      ],
    );
  }
}
