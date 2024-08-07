import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/textField/text_field_profile_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profile';

  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isEditing = false; // State to manage edit mode

  final TextEditingController nameController = TextEditingController(text: 'Syukri Ruly');
  final TextEditingController phoneController = TextEditingController(text: '+62 813-4073-4686');
  final TextEditingController locationController = TextEditingController(text: 'Indonesia, Sulawesi Selatan, Makassar');
  final TextEditingController departmentController = TextEditingController(text: 'Teknik Mesin');
  final TextEditingController batchController = TextEditingController(text: '1996');
  final TextEditingController businessFieldController = TextEditingController(text: '71204 - Jasa Inspeksi Teknik Instalasi');

  void _toggleEditMode() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const AppBarSecondaryWidget(
        title: 'Profil Saya',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 60,
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
                            'dmcikatekuh@gmail.com',
                            style: textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 6),
                          ButtonWidget(
                            label: _isEditing ? 'Save' : 'Edit Profile',
                            type: ButtonType.primary,
                            rounded: false,
                            onPressed: _toggleEditMode,
                          ),
                        ],
                      ),
                    ),
                  ],
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
                      readOnly: !_isEditing, // Set readOnly based on _isEditing
                    ),
                    TextFieldProfileWidget(
                      label: 'Phone',
                      description: '+62 813-4073-4686',
                      icon: Icons.phone,
                      controller: phoneController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Domisili',
                      description: 'Indonesia, Sulawesi Selatan, Makassar',
                      icon: Icons.location_on,
                      controller: locationController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Jurusan',
                      description: 'Teknik Mesin',
                      icon: Icons.school,
                      controller: departmentController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Angkatan',
                      description: '1996',
                      icon: Icons.calendar_today,
                      controller: batchController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Bidang Usaha',
                      description: '71204 - Jasa Inspeksi Teknik Instalasi',
                      icon: Icons.business,
                      controller: businessFieldController,
                      readOnly: !_isEditing,
                    ),
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
