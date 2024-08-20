import 'package:alumni_hub_ft_uh/common/utils/ui_helper.dart';
import 'package:alumni_hub_ft_uh/constants/common.dart';
import 'package:alumni_hub_ft_uh/features/alumni/bloc/alumni_bloc.dart';
import 'package:alumni_hub_ft_uh/features/alumni/domain/models/alumni_response.dart';
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

  String? selectedGender;

  final _namaLengkapController = TextEditingController();
  final _tanggalLahirController = TextEditingController();
  final _stambukController = TextEditingController();
  final _noTelpController = TextEditingController();
  final _angkatanController = TextEditingController();
  final _jurusanController = TextEditingController();

  String? _golonganDarahController;
  String? _agamaController;

  @override
  void initState() {
    super.initState();

    final userSession = context.read<UserBloc>().getUserSession();
    final user = userSession?.user;

    _namaLengkapController.text = user?.alumni?.nama ?? '';
    _tanggalLahirController.text = user?.alumni?.tglLahir ?? '';
    _stambukController.text = user?.alumni?.nim ?? '';
    _noTelpController.text = user?.alumni?.noTelp ?? '';
    _angkatanController.text = user?.alumni?.angkatan ?? '';
    _jurusanController.text = user?.alumni?.jurusan ?? '';
    _golonganDarahController = user?.alumni?.golonganDarah;
    _agamaController = user?.alumni?.agama;

    selectedGender = user?.alumni?.kelamin;

    debugPrint("User session: $userSession");
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
          child: BlocConsumer<AlumniUpdateBloc, AlumniState>(
            listener: (context, state) {
              if (state is AlumniUpdateSuccess) {
                showToastMessage(message: 'Profil berhasil diperbarui');
                setState(() {
                  _isEditing = false;
                });
              } else if (state is AlumniUpdateError) {
                showToastMessage(message: state.message);
              }
            },
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    color: Colors.grey[200],
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                            user?.avatar ?? '',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user?.alumni?.nama ?? '',
                                style: textTheme.titleMedium,
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
                                disabled: state is AlumniUpdateLoading,
                                onPressed: () {
                                  if (_isEditing) {
                                    context
                                        .read<AlumniUpdateBloc>()
                                        .add(AlumniEventUpdate(
                                          AlumniUpdateBody(
                                            angkatan: _angkatanController.text,
                                            golonganDarah:
                                                _golonganDarahController,
                                            jurusan: _jurusanController.text,
                                            nama: _namaLengkapController.text,
                                            noTelp: _noTelpController.text,
                                            kelamin: selectedGender,
                                            agama: _agamaController,
                                            tglLahir:
                                                _tanggalLahirController.text,
                                            nim: _stambukController.text,
                                          ),
                                        ));
                                  } else {
                                    setState(() {
                                      _isEditing = true;
                                    });
                                  }
                                },
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                              'No. Anggota: ${user?.alumni?.noAnggota ?? '-'}',
                              style: textTheme.labelLarge),
                        ),
                        const SizedBox(height: 12),
                        TextFieldProfileWidget(
                          label: 'Nama Lengkap',
                          description: _namaLengkapController.text,
                          icon: Icons.person,
                          controller: _namaLengkapController,
                          readOnly: !_isEditing || state is AlumniUpdateLoading,
                        ),
                        TextFieldProfileWidget(
                          label: 'Jurusan',
                          description: _jurusanController.text,
                          icon: Icons.school,
                          controller: _jurusanController,
                          readOnly: !_isEditing || state is AlumniUpdateLoading,
                        ),
                        TextFieldProfileWidget(
                          label: 'Angkatan',
                          description: _angkatanController.text,
                          icon: Icons.calendar_today,
                          controller: _angkatanController,
                          readOnly: !_isEditing || state is AlumniUpdateLoading,
                        ),
                        TextFieldProfileWidget(
                          label: 'Tanggal lahir',
                          description: _tanggalLahirController.text,
                          icon: Icons.calendar_view_day,
                          controller: _tanggalLahirController,
                          readOnly: !_isEditing || state is AlumniUpdateLoading,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  if (!_isEditing ||
                                      state is AlumniUpdateLoading) return;
                                  setState(() {
                                    selectedGender = 'l';
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: selectedGender == 'l'
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Center(
                                    child: Text(
                                      'Laki-laki',
                                      style: textTheme.bodyMedium?.copyWith(
                                        color: selectedGender == 'l'
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  if (!_isEditing ||
                                      state is AlumniUpdateLoading) return;
                                  setState(() {
                                    selectedGender = 'p';
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: selectedGender == 'p'
                                        ? Theme.of(context).primaryColor
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Center(
                                    child: Text(
                                      'Perempuan',
                                      style: textTheme.bodyMedium?.copyWith(
                                        color: selectedGender == 'p'
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Container(
                              constraints: const BoxConstraints(
                                minHeight: 60,
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: const BoxDecoration(
                                color: Color(0xFFD80100),
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(8),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  '+62',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: const BorderRadius.horizontal(
                                    right: Radius.circular(8),
                                  ),
                                ),
                                child: TextField(
                                  controller: _noTelpController,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(16.0),
                                    hintText: 'Masukkan nomor telepon',
                                    border: InputBorder.none,
                                    hintStyle: textTheme.bodyMedium?.copyWith(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  readOnly: !_isEditing ||
                                      state is AlumniUpdateLoading,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Golongan Darah',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                          // disable when not editing

                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                            hintStyle: Theme.of(context).textTheme.bodyMedium,
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                          ),
                          hint: Text('Pilih golongan darah',
                              style: Theme.of(context).textTheme.bodyMedium),
                          value: _golonganDarahController,
                          onChanged: !_isEditing
                              ? null
                              : (String? newValue) {
                                  setState(() {
                                    _golonganDarahController = newValue;
                                  });
                                },
                          items: golonganDarahList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: textTheme.bodyMedium),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'Agama',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          hint: Text('Pilih agama',
                              style: Theme.of(context).textTheme.bodyMedium),
                          value: _agamaController,
                          onChanged: !_isEditing
                              ? null
                              : (String? newValue) {
                                  setState(() {
                                    _agamaController = newValue;
                                  });
                                },
                          items: agamaList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value, style: textTheme.bodyMedium),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
