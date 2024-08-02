import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/text_field_widget.dart';
import 'package:flutter/gestures.dart';

class SignUpScreen extends StatefulWidget {
  static const route = "/sign_up";

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? selectedJurusan;
  String? selectedAngkatan;
  String? selectedGender;
  bool agreeToTerms = false;

  final List<String> jurusanList = [
    'Teknik Elektro',
    'Teknik Mesin',
    'Teknik Sipil',
    'Teknik Informatika'
  ];
  final List<String> angkatanList = ['2010', '2011', '2012', '2013', '2014'];

  final _namaLengkapController = TextEditingController();
  final _namaPanggilanController = TextEditingController();
  final _stambukController = TextEditingController();
  final _emailController = TextEditingController();
  final _kataSandiController = TextEditingController();
  final _konfirmasiKataSandiController = TextEditingController();
  final _noTelpController = TextEditingController();

  @override
  void dispose() {
    _namaLengkapController.dispose();
    _namaPanggilanController.dispose();
    _stambukController.dispose();
    _emailController.dispose();
    _kataSandiController.dispose();
    _konfirmasiKataSandiController.dispose();
    _noTelpController.dispose();
    super.dispose();
  }

  void _handleSignUp() {
    if (agreeToTerms) {
      Navigator.pushNamed(context, '/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Anda harus menyetujui syarat dan ketentuan terlebih dahulu.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: constraints.maxHeight - MediaQuery.of(context).padding.top,
            ),
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              height: MediaQuery.of(context).size.height * 0.8,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Registrasi',
                      style: textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.02,
                      ),
                    ),
                    Text(
                      'Data Diri',
                      style: textTheme.titleMedium?.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFieldWidget(
                      label: 'Nama Lengkap',
                      hint: 'Masukkan nama lengkap',
                      controller: _namaLengkapController,
                    ),
                    const SizedBox(height: 12),
                    TextFieldWidget(
                      label: 'Nama Panggilan',
                      hint: 'Masukkan nama panggilan',
                      controller: _namaPanggilanController,
                    ),
                    const SizedBox(height: 12),
                    TextFieldWidget(
                      label: 'Stambuk',
                      hint: 'Masukkan stambuk',
                      controller: _stambukController,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Jurusan',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                        value: selectedJurusan,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedJurusan = newValue;
                          });
                        },
                        items: jurusanList.map((String jurusan) {
                          return DropdownMenuItem<String>(
                            value: jurusan,
                            child: Text(
                              jurusan,
                              style: textTheme.bodyMedium?.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Angkatan',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                        value: selectedAngkatan,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedAngkatan = newValue;
                          });
                        },
                        items: angkatanList.map((String angkatan) {
                          return DropdownMenuItem<String>(
                            value: angkatan,
                            child: Text(
                              angkatan,
                              style: textTheme.bodyMedium?.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Jenis Kelamin',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedGender = 'Laki-laki';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: selectedGender == 'Laki-laki'
                                    ? Theme.of(context).primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Center(
                                child: Text(
                                  'Laki-laki',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: selectedGender == 'Laki-laki'
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
                              setState(() {
                                selectedGender = 'Perempuan';
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: selectedGender == 'Perempuan'
                                    ? Theme.of(context).primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Center(
                                child: Text(
                                  'Perempuan',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: selectedGender == 'Perempuan'
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
                    const SizedBox(height: 12),
                    TextFieldWidget(
                      label: 'Email',
                      hint: 'Masukkan email',
                      controller: _emailController,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'No Telepon',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          constraints: const BoxConstraints(
                            minHeight: 60,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: const BoxDecoration(
                            color: Colors.red,
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
                                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                                hintText: 'Masukkan nomor telepon',
                                border: InputBorder.none,
                                hintStyle: textTheme.bodyMedium?.copyWith(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TextFieldWidget(
                      label: 'Kata Sandi',
                      hint: 'Masukkan kata sandi',
                      controller: _kataSandiController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Minimal 8 karakter',
                      style: textTheme.bodySmall?.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFieldWidget(
                      label: 'Konfirmasi Kata Sandi',
                      hint: 'Masukkan ulang kata sandi',
                      controller: _konfirmasiKataSandiController,
                      obscureText: true,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        SizedBox(
                          height: 24,
                          child: Checkbox(
                            value: agreeToTerms,
                            onChanged: (bool? value) {
                              setState(() {
                                agreeToTerms = value ?? false;
                              });
                            },
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Saya menyetujui ',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'syarat dan ketentuan',
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: Colors.red,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, '/license');
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonWidget(
                        onPressed: agreeToTerms ? _handleSignUp : null,
                        label: 'Daftar',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
