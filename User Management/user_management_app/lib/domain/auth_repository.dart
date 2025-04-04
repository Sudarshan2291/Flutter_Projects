
import 'user.dart';

abstract class AuthRepository {
  Future<AppUser?> getCurrentUser();
  Future<AppUser> signUpWithEmailAndPassword(String email, String password);
  Future<AppUser> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}