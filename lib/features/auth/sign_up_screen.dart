import 'package:alumni_hub_ft_uh/common/utils/ui_helper.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart'; // Import UserBloc
import 'package:provider/provider.dart'; // Import Provider for context.read()


import '../../common/widgets/button/button_widget.dart';
import '../../common/widgets/textField/text_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  static const route = "/sign_up";

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isPasswordObscured1 = false;
  bool _isPasswordObscured2 = false;// Declare the variable

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleSignUp() {
    Navigator.pushNamed(context, '/claim_alumni_data');
  }

  void _handleGoogleSignIn() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(
        clientId: dotenv.env['GOOGLE_CLIENT_ID'] ?? '',
      );

      final googleUser = await googleSignIn.signIn();

      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;

        // Make sure UserBloc is provided in the widget tree
        context.read<UserBloc>().add(
          UserEventSignInWithGoogle(accessToken: googleAuth.accessToken ?? ''),
        );
      }
    } catch (error) {
      debugPrint("Google Sign-In Error: $error");
      showSnackBar(context, 'Google Sign-In gagal. Silakan coba lagi.');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: constraints.maxHeight - MediaQuery.of(context).padding.top,
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.8,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 40),
                      const Text(
                        'Registrasi',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.02,
                        ),
                      ),
                      const Text(
                        'Daftarkan email anda',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _handleGoogleSignIn,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(48),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            elevation: 5,
                            side: const BorderSide(
                              color: Colors.grey, // Set outline color
                              width: 1, // Set outline width
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/logos/google_logo.png', // Path to your Google logo asset
                                height: 24, // Adjust the height as needed
                                width: 24,  // Adjust the width as needed
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Registrasi dengan Google',
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Colors.black, // Set the text color to black
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFieldWidget(
                        label: 'Alamat Email',
                        hint: 'Masukkan alamat email anda',
                        controller: _emailController,
                      ),
                      const SizedBox(height: 12),
                      TextFieldWidget(
                        label: 'Kata Sandi',
                        hint: 'Masukkan kata sandi',
                        obscureText: _isPasswordObscured1,
                        controller: _passwordController,
                        icon: IconButton(
                          icon: Icon(_isPasswordObscured1 ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isPasswordObscured1 = !_isPasswordObscured1;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 12),
                      TextFieldWidget(
                        label: 'Konfirmasi Kata Sandi',
                        hint: 'Masukkan ulang kata sandi',
                        obscureText: _isPasswordObscured2,
                        controller: _confirmPasswordController,
                        icon: IconButton(
                          icon: Icon(_isPasswordObscured2 ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isPasswordObscured2 = !_isPasswordObscured2;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ButtonWidget(
                          onPressed: _handleSignUp,
                          label: 'Daftar',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
