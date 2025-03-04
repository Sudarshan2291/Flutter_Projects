import 'package:local_auth/local_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class BiometricService {
  final LocalAuthentication auth = LocalAuthentication();
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();

  Future<bool> authenticate() async {
    try {
      bool isAvailable = await auth.canCheckBiometrics;

      if (!isAvailable) {
        print("Biometric not available");
        return false;
      }

      bool isAuthenticated = await auth.authenticate(
        localizedReason: 'Authenticate to access your account',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );

      print("Authentication: $isAuthenticated");
      return isAuthenticated;

    } catch (e) {
      print("Biometric Error: $e");
      return false;
    }
  }

  Future<void> saveToken(String token) async {
    await secureStorage.write(key: 'auth_token', value: token);
    print("Token Saved");
  }

  Future<String?> getToken() async {
    String? token = await secureStorage.read(key: 'auth_token');
    print("Token: $token");
    return token;
  }

  Future<void> deleteToken() async {
    await secureStorage.delete(key: 'auth_token');
    print("Token Deleted");
  }
}
