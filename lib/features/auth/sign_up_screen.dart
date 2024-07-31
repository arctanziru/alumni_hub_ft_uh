import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? selectedJurusan;
  String? selectedAngkatan;
  String? selectedGender;

  final List<String> jurusanList = [
    'Teknik Elektro',
    'Teknik Mesin',
    'Teknik Sipil',
    'Teknik Informatika'
  ];
  final List<String> angkatanList = ['2010', '2011', '2012', '2013', '2014'];

  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        // Delay to ensure the keyboard is fully visible
        Future.delayed(Duration(milliseconds: 100), () {
          _scrollToFocusedField();
        });
      }
    });
  }

  void _scrollToFocusedField() {
    // Use LayoutBuilder to get the constraints of the viewport
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox? renderBox = context.findRenderObject() as RenderBox?;
      final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

      if (renderBox != null) {
        final focusedFieldOffset = renderBox.localToGlobal(Offset.zero).dy;
        final viewportHeight = MediaQuery.of(context).size.height - keyboardHeight;

        if (focusedFieldOffset > viewportHeight) {
          _scrollController.animateTo(
            _scrollController.offset + (focusedFieldOffset - viewportHeight),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Padding(
            padding: EdgeInsets.only(bottom: keyboardHeight),
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 48,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Registrasi',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.02,
                    ),
                  ),
                  const Text(
                    'Data Diri',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.02,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'Nama Lengkap',
                    hint: 'Masukkan nama lengkap',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'Nama Panggilan',
                    hint: 'Masukkan nama panggilan',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'Stambuk',
                    hint: 'Masukkan stambuk',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Jurusan',
                        border: InputBorder.none,
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
                          child: Text(jurusan),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Angkatan',
                        border: InputBorder.none,
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
                          child: Text(angkatan),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Jenis Kelamin',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
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
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
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
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
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
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'Email',
                    hint: 'Masukkan email',
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        constraints: BoxConstraints(
                          minHeight: 60,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(8),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '+62',
                            style: const TextStyle(
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
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                              hintText: 'Masukkan nomor telepon',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'Kata Sandi',
                    hint: 'Masukkan kata sandi',
                    controller: TextEditingController(),
                    obscureText: true,
                  ),
                  const SizedBox(height: 4), // Tambahkan sedikit jarak antara TextField dan teks kecil
                  Text(
                    'Minimal 8 karakter',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey, // Atur warna sesuai dengan kebutuhan
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFieldWidget(
                    label: 'Konfirmasi Kata Sandi',
                    hint: 'Masukkan ulang kata sandi',
                    controller: TextEditingController(),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ButtonWidget(
                      onPressed: () {
                        // Handle Sign Up button press
                      },
                      label: 'Daftar',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }
}
