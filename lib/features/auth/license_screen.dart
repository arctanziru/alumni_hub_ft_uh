import 'package:alumni_hub_ft_uh/features/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';

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
                      fontWeight: FontWeight.bold,
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
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Center(
              child: Text(
                'Dengan menggunakan aplikasi ini, Anda menyetujui syarat dan ketentuan berikut:',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                bulletSection(
                  'Penggunaan Aplikasi',
                  'Aplikasi ini hanya untuk alumni Fakultas Teknik Universitas Hasanuddin. Pengguna wajib mematuhi aturan penggunaan dan tidak menyalahgunakan fitur aplikasi.',
                ),
                const SizedBox(height: 16),
                bulletSection(
                  'Pendaftaran dan Keamanan Akun',
                  'Pengguna wajib mendaftar dengan data yang akurat. Keamanan akun menjadi tanggung jawab pengguna.',
                ),
                const SizedBox(height: 16),
                bulletSection(
                  'Kebijakan Privasi',
                  'Data pribadi pengguna dilindungi dan digunakan sesuai kebijakan privasi. Data tidak akan dibagikan kepada pihak ketiga tanpa izin pengguna.',
                ),
                const SizedBox(height: 16),
                bulletSection(
                  'Pembatasan Tanggung Jawab',
                  'Pengelola tidak bertanggung jawab atas kerugian yang timbul dari penggunaan aplikasi, termasuk transaksi dan informasi yang disediakan.',
                ),
                const SizedBox(height: 16),
                bulletSection(
                  'Perubahan Syarat dan Ketentuan',
                  'Pengelola berhak mengubah syarat dan ketentuan ini kapan saja tanpa pemberitahuan.',
                ),
                const SizedBox(height: 16),
                bulletSection(
                  'Hukum yang Berlaku',
                  'Syarat dan ketentuan ini tunduk pada hukum yang berlaku di Indonesia.',
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    'Dengan menggunakan aplikasi ini, Anda dianggap telah menyetujui syarat dan ketentuan di atas.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
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

  Widget bulletSection(String title, String content) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Colors.black,
        ),
        children: [
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Icon(Icons.circle, size: 6, color: Colors.black),
          ),
          const WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: SizedBox(width: 8),
          ),
          TextSpan(
            text: '$title: ',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: content),
        ],
      ),
    );
  }
}