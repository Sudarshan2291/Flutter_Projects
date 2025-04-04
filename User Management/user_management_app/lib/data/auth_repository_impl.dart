
import '../domain/auth_repository.dart';
import '../domain/user.dart';
import 'firebase_auth_data_source.dart'; // Correct path

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuthDataSource _dataSource;

  AuthRepositoryImpl(this._dataSource);

  @override
  Future<AppUser?> getCurrentUser() async {
    return _dataSource.getCurrentUser();
  }

  @override
  Future<AppUser> signUpWithEmailAndPassword(String email, String password) async {
    return _dataSource.signUpWithEmailAndPassword(email, password);
  }

  @override
  Future<AppUser> signInWithEmailAndPassword(String email, String password) async {
    return _dataSource.signInWithEmailAndPassword(email, password);
  }

  @override
  Future<void> signOut() async {
    return _dataSource.signOut();
  }
}