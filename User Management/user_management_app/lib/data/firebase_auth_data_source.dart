// lib/data/datasources/firebase_auth_data_source.dart
import 'package:firebase_auth/firebase_auth.dart';

import '../domain/user.dart';
class FirebaseAuthDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<AppUser?> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      return AppUser(
        id: user.uid,
        email: user.email!,
        displayName: user.displayName,
      );
    }
    return null;
  }

  Future<AppUser> signUpWithEmailAndPassword(String email, String password) async {
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return AppUser(
      id: userCredential.user!.uid,
      email: userCredential.user!.email!,
      displayName: userCredential.user!.displayName,
    );
  }

  Future<AppUser> signInWithEmailAndPassword(String email, String password) async {
    final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return AppUser(
      id: userCredential.user!.uid,
      email: userCredential.user!.email!,
      displayName: userCredential.user!.displayName,
    );
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}