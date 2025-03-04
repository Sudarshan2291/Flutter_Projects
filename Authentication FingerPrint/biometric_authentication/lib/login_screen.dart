import 'package:flutter/material.dart';
import 'biometric_service.dart';

class LoginScreen extends StatelessWidget {
  final BiometricService biometricService = BiometricService();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Biometric Login")),
      body: Center(
        child: ElevatedButton(
  onPressed: () async {
    bool authenticated = await biometricService.authenticate();

    if (authenticated) {
      await biometricService.saveToken("user_token");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Success")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Failed")),
      );
    }
  },
  child: const Text("Login with Biometrics"),
) ),
    );
  }
}
