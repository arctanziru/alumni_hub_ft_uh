import 'dart:io';

import 'package:alumni_hub_ft_uh/common/widgets/bottomBar/bottom_bar_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';

import '../../common/widgets/appBar/app_bar_search_widget.dart';

class DonationScreen extends StatefulWidget {
  static const String route = '/donation';

  const DonationScreen({super.key});

  @override
  State createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  void _onReadTermsClicked() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      isScrollControlled: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(
              top: 60.0, bottom: 60.0, left: 32.0, right: 32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ENDOWMENT FUND',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'Dana Abadi',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Divider(
                height: 16,
              ),
              const SizedBox(height: 8),
              Text(
                'Apa itu Dana Abadi?',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  const SizedBox(height: 8.0), // Set spacing above
                  Text(
                    'Dana Abadi digunakan untuk mendukung Tri Darma Perguruan Tinggi tanpa mengurangi nilai pokok dana tersebut. Dana Abadi (DA) Universitas Hasanuddin merupakan dana investasi yang diperoleh dari donasi para alumni dan simpatisan dari Fakultas Teknik Universitas Hasanuddin. Dana abadi bersifat simpanan yang akan dikembangkan dan hasilnya akan dimanfaatkan untuk meringankan beban biaya pendidikan yang harus dibayarkan mahasiswa dalam menempuh studinya, mengembangkan riset, serta melakukan pengabdian pada masyarakat.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          height: 1.5, // Adjust line height as needed
                        ),
                    textAlign:
                        TextAlign.justify, // Optional: for text justification
                  ),
                  const SizedBox(height: 8.0), // Set spacing below
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Baca lebih lengkap di file PDF kami',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 16),
              Center(
                child: ButtonWidget(
                  onPressed: () {},
                  label: 'Download PDF',
                ),
              ),
              const SizedBox(height: 16), // Extra space at the bottom
            ],
          ),
        );
      },
    );
  }

  Future<void> _downloadQRCode() async {
    try {
      // Get the directory to save the file
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/qris.png';

      final byteData =
          await DefaultAssetBundle.of(context).load('assets/images/qris.png');
      final buffer = byteData.buffer;
      final file = File(filePath);
      await file.writeAsBytes(
          buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

      // Use flutter_downloader to download the file
      await FlutterDownloader.enqueue(
        url: filePath,
        savedDir: directory.path,
        fileName: 'qris.png',
        showNotification: true,
        openFileFromNotification: true,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('QR Code downloaded successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error downloading QR Code: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBarWidget(currentIndex: 2),
      appBar: const AppBarSearchWidget(),
      body: SafeArea(
        child: Container(
          color: Colors.grey[200], // Light grey background color
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // First Section using full available width
              Expanded(
                child: Container(
                  width: double.infinity, // Ensure it takes full width
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // Changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'DAUH TEKNIK',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 8),
                      Text('NMID: ID1023255148950',
                          style: Theme.of(context).textTheme.bodySmall),
                      Text('TID', style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(height: 20),
                      Expanded(
                          child: Image.asset(
                        'assets/images/qris.png',
                        alignment: Alignment.center,
                      )),
                      const SizedBox(height: 20),
                      Text(
                        'SATU QRIS UNTUK SEMUA',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 8),
                      Text('Cek aplikasi penyelenggara',
                          style: Theme.of(context).textTheme.bodySmall),
                      Text('di: www.aspi-qris.id',
                          style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Space between sections

              // Second Section
              Container(
                width: double.infinity, // Take full width of parent
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // Changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ButtonWidget(
                      label: 'Download QR Code',
                      onPressed: () async {
                        await _downloadQRCode();
                      },
                    ),
                    const SizedBox(height: 16), // Reduced spacing
                    RichText(
                      text: TextSpan(
                        text: 'Ketahui alokasi dana anda disini ',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.black),
                        children: [
                          TextSpan(
                            text: 'baca ketentuan donasi',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                  color: Colors.red,
                                  decoration:
                                      TextDecoration.underline, // Add underline
                                  decorationColor:
                                      Colors.red, // Set underline color
                                ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onReadTermsClicked,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
