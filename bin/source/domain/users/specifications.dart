import 'resources/user_status.dart';

abstract class UserSpecifications {
  static bool isUserAdmin(UserRole role) => role == UserRole.admin;
  static bool isUserSubject(UserRole role) => role == UserRole.subject;
}
