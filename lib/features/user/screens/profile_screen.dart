import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/textField/text_field_profile_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/appBar/app_bar_secondary_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profile';

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isEditing = false;

  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController locationController;
  late TextEditingController departmentController;
  late TextEditingController batchController;
  late TextEditingController businessFieldController;

  @override
  void initState() {
    super.initState();

    final userSession = context.read<UserBloc>().getUserSession();
    final user = userSession?.user;

    nameController = TextEditingController(text: user?.alumni?.nama ?? '');
    phoneController = TextEditingController(text: '');
    locationController = TextEditingController(text: '');
    departmentController =
        TextEditingController(text: user?.alumni?.jurusan ?? '');
    batchController = TextEditingController(text: user?.alumni?.angkatan ?? '');
    businessFieldController =
        TextEditingController(text: '71204 - Jasa Inspeksi Teknik Instalasi');

    debugPrint("User session: $userSession");
  }

  void _toggleEditMode() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.read<UserBloc>().getUserSession()?.user;

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
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        user?.avatar ?? 'https://example.com/profile_pic.jpg',
                      ),
                    ),
                    const SizedBox(width: 40),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user?.alumni?.nama ?? '',
                            style: textTheme.labelLarge!.copyWith(fontSize: 25),
                          ),
                          Text(
                            user?.email ?? '',
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextFieldProfileWidget(
                      label: 'Nama Lengkap',
                      description: nameController.text,
                      icon: Icons.person,
                      controller: nameController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Phone',
                      description: phoneController.text,
                      icon: Icons.phone,
                      controller: phoneController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Domisili',
                      description: locationController.text,
                      icon: Icons.location_on,
                      controller: locationController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Jurusan',
                      description: departmentController.text,
                      icon: Icons.school,
                      controller: departmentController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Angkatan',
                      description: batchController.text,
                      icon: Icons.calendar_today,
                      controller: batchController,
                      readOnly: !_isEditing,
                    ),
                    TextFieldProfileWidget(
                      label: 'Bidang Usaha',
                      description: businessFieldController.text,
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
