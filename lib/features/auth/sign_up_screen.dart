import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/common/utils/ui_helper.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_event.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_state.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart'; // Import UserBloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
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

  bool _isPasswordObscured1 = true;
  bool _isPasswordObscured2 = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
        Positioned.fill(
        child: SafeArea(
        child:
            LayoutBuilder(
              builder: (context, constraints) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: constraints.maxHeight -
                        MediaQuery.of(context).padding.top,
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
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 16,
                    ),
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
                            child: BlocConsumer<UserBloc, UserState>(
                              listener: (context, state) {
                                if (state is UserStateSuccessSignUp) {
                                  showToastMessage(
                                      message: 'Registrasi berhasil');
                                  locator<AppNavigation>()
                                      .navigateReplace('/home');
                                } else if (state is UserStateException) {
                                  showToastMessage(
                                      message: state.exception.message);
                                }
                              },
                              builder: (context, state) {
                                return ElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<UserBloc>()
                                        .add(UserEventSignInWithGoogle());
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(48),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    elevation: 5,
                                    side: const BorderSide(
                                      color: AppColors.gray1, // Set outline color
                                      width: 1, // Set outline width
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/logos/google.jpg', // Path to your Google logo asset
                                        height: 24, // Adjust the height as needed
                                        width: 24, // Adjust the width as needed
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Registrasi dengan Google',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                          color: Colors
                                              .black, // Set the text color to black
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
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
                              icon: Icon(_isPasswordObscured1
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isPasswordObscured1 =
                                  !_isPasswordObscured1;
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
                              icon: Icon(_isPasswordObscured2
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _isPasswordObscured2 =
                                  !_isPasswordObscured2;
                                });
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Dengan membuat akun, Anda menyetujui ',
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 0.1),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'kebijakan privasi',
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.red,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.red,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        const url = 'https://antekhub.com/privacy-policy/id/';
                                        try {
                                          await launchUrl(Uri.parse(url));
                                        } catch (e) {
                                          ('Could not launch $url: $e');
                                        }
                                      },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          SizedBox(
                            width: double.infinity,
                            child: BlocConsumer<UserBloc, UserState>(
                              listener: (context, state) {
                                if (state is UserStateSuccessSignUp) {
                                  showToastMessage(
                                      message: 'Selamat datang');
                                  debugPrint(
                                      "Token: ${state.signUpResponse.token}");
                                  locator<AppNavigation>()
                                      .navigateReplace('/claim_alumni_data');
                                } else if (state is UserStateException) {
                                  debugPrint(
                                      "Exception: ${state.exception.message}");
                                }
                              },
                              builder: (context, state) {
                                return ButtonWidget(
                                  onPressed: () =>
                                      context.read<UserBloc>().add(
                                        UserEventSignUp(
                                          signUpBody: SignUpBody(
                                            email: _emailController.text,
                                            password:
                                            _passwordController.text,
                                            confirmPassword:
                                            _confirmPasswordController
                                                .text,
                                          ),
                                        ),
                                      ),
                                  label: 'Daftar',
                                  isLoading: state is UserStateSignUpLoading &&
                                      state is! UserStateException,
                                  disabled: _emailController.text.isEmpty |
                                  _passwordController.text.isEmpty |
                                  _confirmPasswordController
                                      .text.isEmpty,
                                );
                              },
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
        ),
            Positioned(
              // Adjust position based on a percentage of the screen height
              top: MediaQuery.of(context).size.height * 0.07,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      // Calculate dynamic size based on screen width
                      double logoSize = constraints.maxWidth * 0.4;

                      // Set a maximum size for the logo to prevent it from being too large on tablets
                      double maxSize = 200.0; // Set your desired maximum size here
                      if (logoSize > maxSize) {
                        logoSize = maxSize;
                      }

                      return Image.asset(
                        'assets/logos/ikatek_unhas.webp',
                        height: logoSize,
                        width: logoSize,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}