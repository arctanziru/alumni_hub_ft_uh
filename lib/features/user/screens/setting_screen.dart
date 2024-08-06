import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/footer/footer_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/listTile/list_tile_widget.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  static const route = '/setting';

  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarSecondaryWidget(title: 'Pengaturan'),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 24.0,
            ),
            child: Column(
              children: [
                ListTileWidget(
                    icon: Icons.location_on_outlined, title: 'Sekitar Saya'),
                SizedBox(height: 20),
                ListTileWidget(icon: Icons.mail_outline, title: 'Kemitraan'),
                SizedBox(height: 20),
                ListTileWidget(
                    icon: Icons.local_offer_outlined, title: 'E-commerce'),
              ],
            ),
          ),
          Spacer(),
          FooterWidget()
        ],
      ),
    );
  }
}
