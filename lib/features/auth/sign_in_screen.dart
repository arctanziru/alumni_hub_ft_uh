import 'package:alumni_hub_ft_uh/common/utils/app_navigation.dart';
import 'package:alumni_hub_ft_uh/common/utils/ui_helper.dart';
import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/textField/text_field_widget.dart';
import 'package:alumni_hub_ft_uh/constants/colors.dart';
import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:alumni_hub_ft_uh/features/user/bloc/user_bloc.dart';
import 'package:alumni_hub_ft_uh/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatefulWidget {
  static const route = "/sign_in";

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordObscured = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleGoogleSignUp() {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight:
                  constraints.maxHeight - MediaQuery.of(context).padding.top,
            ),
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
              height: MediaQuery.of(context).size.height * 0.8,
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 48,
                bottom: 16,
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 40),
                    const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.02,
                      ),
                    ),
                    const Text(
                      'Masuk ke Akun Anda',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: _handleGoogleSignUp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          elevation: 5,
                          side: const BorderSide(
                            color: AppColors.gray1, // Set outline color
                            width: 1, // Set outline width
                          ), // Add drop shadow
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/logos/google_logo.png', // Path to your Google logo asset
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
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "atau",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    TextFieldWidget(
                      label: 'Email',
                      hint: 'Masukkan email',
                      controller: _emailController,
                    ),
                    const SizedBox(height: 12),
                    TextFieldWidget(
                      label: 'Kata Sandi',
                      hint: 'Masukkan kata sandi',
                      obscureText: _isPasswordObscured,
                      controller: _passwordController,
                      icon: IconButton(
                        icon: Icon(_isPasswordObscured
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isPasswordObscured = !_isPasswordObscured;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 36),
                    SizedBox(
                      width: double.infinity,
                      child: BlocConsumer<UserBloc, UserState>(
                        listener: (context, state) {
                          if (state is UserStateSuccessSignIn) {
                            showSnackBar(context, 'Selamat datang');
                            debugPrint("Token: ${state.signInResponse.token}");
                            locator<AppNavigation>().navigateReplace('/home');
                          } else if (state is UserStateException) {
                            debugPrint("Exception: ${state.exception.message}");
                          }
                        },
                        builder: (context, state) {
                          return ButtonWidget(
                            onPressed: () => context.read<UserBloc>().add(
                                UserEventSignIn(
                                    signInBody: SignInBody(
                                        email: _emailController.text,
                                        password: _passwordController.text))),
                            label: 'Masuk',
                            isLoading: state is UserStateSignInLoading &&
                                state is! UserStateException,
                            disabled: _emailController.text.isEmpty ||
                                _passwordController.text.isEmpty,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Belum punya akun?'),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign_up');
                          },
                          child: const Text(
                            ' Daftar',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
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
