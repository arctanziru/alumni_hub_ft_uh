import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_model.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/textField/text_field_profile_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
// import 'package:qr_flutter/qr_flutter.dart';

class AlumniProfileDetailScreen extends StatelessWidget {
  static const String route = '/alumniProfileDetail';

  final AlumniModel alumni;

  const AlumniProfileDetailScreen({super.key, required this.alumni});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final TextEditingController nameController =
        TextEditingController(text: alumni.nama);
    final TextEditingController departmentController =
        TextEditingController(text: alumni.jurusan);
    final TextEditingController batchController =
        TextEditingController(text: alumni.angkatan);
    final TextEditingController birthDateController =
        TextEditingController(text: alumni.tglLahir);
    final TextEditingController religionController =
        TextEditingController(text: alumni.agama);
    final TextEditingController bloodTypeController =
        TextEditingController(text: alumni.golonganDarah ?? '');

    return Scaffold(
      appBar: const AppBarSecondaryWidget(
        title: 'Profil Alumni',
      ),
      body: Container(
        color:
            Colors.grey[100], // Set the background color of the entire screen
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              Image.asset('assets/logos/ikatek_unhas.webp')
                                  .image),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              alumni.nama,
                              style:
                                  textTheme.labelLarge!.copyWith(fontSize: 25),
                            ),
                            Text(
                              alumni.noAnggota ?? '-',
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   padding:
                //       const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                //   child: Center(
                //     child: QrImageView(
                //       data: alumni.noAnggota ?? alumni.nama,
                //       version: QrVersions.auto,
                //       size: 320,
                //       gapless: false,
                //       embeddedImage:
                //           const AssetImage('assets/logos/ikatek_unhas.png'),
                //       embeddedImageStyle: const QrEmbeddedImageStyle(
                //         size: Size(80, 80),
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      TextFieldProfileWidget(
                        label: 'Nama Lengkap',
                        description: alumni.nama,
                        icon: Icons.person,
                        controller: nameController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Jurusan',
                        description: alumni.jurusan,
                        icon: Icons.school,
                        controller: departmentController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Angkatan',
                        description: alumni.angkatan,
                        icon: Icons.calendar_today,
                        controller: batchController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Tanggal lahir',
                        description: alumni.tglLahir,
                        icon: Icons.calendar_view_day,
                        controller: birthDateController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Agama',
                        description: alumni.agama ?? '-',
                        icon: Icons.book,
                        controller: religionController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Golongan Darah',
                        description: alumni.golonganDarah ?? '-',
                        icon: Icons.local_hospital,
                        controller: bloodTypeController,
                        readOnly: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
