// lib/domain/entities/user.dart
import 'package:equatable/equatable.dart';

class AppUser extends Equatable {
  final String id;
  final String email;
  final String? displayName;

  const AppUser({required this.id, required this.email, this.displayName});

  @override
  List<Object?> get props => [id, email, displayName];
}