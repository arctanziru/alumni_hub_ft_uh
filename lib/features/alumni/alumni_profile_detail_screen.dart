import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/textField/text_field_profile_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';

class AlumniProfileDetailScreen extends StatelessWidget {
  static const String route = '/alumniProfileDetail';

  const AlumniProfileDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    // Controllers to manage the text fields
    final TextEditingController nameController = TextEditingController(text: 'Syukri Ruly');
    final TextEditingController phoneController = TextEditingController(text: '+62 813-4073-4686');
    final TextEditingController locationController = TextEditingController(text: 'Indonesia, Sulawesi Selatan, Makassar');
    final TextEditingController departmentController = TextEditingController(text: 'Teknik Mesin');
    final TextEditingController batchController = TextEditingController(text: '1996');
    final TextEditingController businessFieldController = TextEditingController(text: '71204 - Jasa Inspeksi Teknik Instalasi');

    return Scaffold(
      appBar: const AppBarSecondaryWidget(
        title: 'Profil Saya',
      ),
      body: Container(
        color: Colors.grey[100], // Set the background color of the entire screen
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 40, // Reduced size for avatar
                        backgroundImage: NetworkImage('https://example.com/profile_pic.jpg'),
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'M. Syukri T.',
                              style: textTheme.labelLarge!.copyWith(fontSize: 25),
                            ),
                            Text(
                              'D121221001',
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                    child: Image.network(
                      'https://api.qrserver.com/v1/create-qr-code/?size=300x300&data=Example',
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
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
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      TextFieldProfileWidget(
                        label: 'Nama Lengkap',
                        description: 'Syukri Ruly',
                        icon: Icons.person,
                        controller: nameController,
                        readOnly: true, // Set to read-only
                      ),
                      TextFieldProfileWidget(
                        label: 'Phone',
                        description: '+62 813-4073-4686',
                        icon: Icons.phone,
                        controller: phoneController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Domisili',
                        description: 'Indonesia, Sulawesi Selatan, Makassar',
                        icon: Icons.location_on,
                        controller: locationController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Jurusan',
                        description: 'Teknik Mesin',
                        icon: Icons.school,
                        controller: departmentController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Angkatan',
                        description: '1996',
                        icon: Icons.calendar_today,
                        controller: batchController,
                        readOnly: true,
                      ),
                      TextFieldProfileWidget(
                        label: 'Bidang Usaha',
                        description: '71204 - Jasa Inspeksi Teknik Instalasi',
                        icon: Icons.business,
                        controller: businessFieldController,
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