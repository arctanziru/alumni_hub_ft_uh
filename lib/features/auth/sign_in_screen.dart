import 'package:alumni_hub_ft_uh/common/widgets/button/button_widget.dart';
import 'package:alumni_hub_ft_uh/common/widgets/textField/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const route = "/sign_in";

  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
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
                    TextFieldWidget(
                      label: 'Email',
                      hint: 'Masukkan email',
                      controller: _emailController,
                    ),
                    const SizedBox(height: 12),
                    TextFieldWidget(
                      label: 'Kata Sandi',
                      hint: 'Masukkan Kata Sandi',
                      obscureText: true,
                      controller: _passwordController,
                    ),
                    const SizedBox(height: 36),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonWidget(
                        onPressed: () => Navigator.pushNamed(context, '/home'),
                        label: 'Masuk',
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
