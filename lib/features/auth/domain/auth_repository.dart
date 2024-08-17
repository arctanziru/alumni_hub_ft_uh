import 'dart:io';

import 'package:alumni_hub_ft_uh/features/auth/domain/auth_model.dart';
import 'package:alumni_hub_ft_uh/middleware/custom_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../data/auth_remote_data_source.dart';

abstract class AuthRepository {
  Future<SignInResponse> signIn(SignInBody body);
  Future<SignUpResponse> signUp(SignUpBody body);
  Future<void> signOut();
  Future<SignInWithGoogleResponse> signInWithGoogle();
}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  const AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<SignInResponse> signIn(SignInBody body) async {
    return authRemoteDataSource.signIn(body);
  }

  @override
  Future<SignUpResponse> signUp(SignUpBody body) async {
    return authRemoteDataSource.signUp(body);
  }

  @override
  Future<void> signOut() async {
    return authRemoteDataSource.signOut();
  }

  @override
  Future<SignInWithGoogleResponse> signInWithGoogle() async {
    try {
      debugPrint('Starting Google Sign-In process');

      debugPrint('Google Client ID: ${dotenv.env['GOOGLE_CLIENT_ID']}');

      GoogleSignIn googleSignIn = GoogleSignIn();

      await googleSignIn.signOut();

      final googleUser = await googleSignIn.signIn();
      debugPrint('Google Sign-In successful, user: $googleUser');

      if (googleUser == null) {
        throw const CustomException('Google Sign-In gagal. Silakan coba lagi.');
      }

      final googleAuth = await googleUser.authentication;
      debugPrint(
          'Google Auth successful, accessToken: ${googleAuth.accessToken}');

      if (googleAuth.accessToken == null) {
        throw const CustomException('Google Sign-In gagal. Silakan coba lagi.');
      }

      return authRemoteDataSource.signInWithGoogle(googleAuth.accessToken!);
    } on CustomException {
      rethrow;
    } catch (error) {
      throw CustomException(error.toString());
    }
  }
}
