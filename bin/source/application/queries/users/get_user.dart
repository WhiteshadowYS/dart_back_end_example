import '../../../../resources/base/base_quary.dart';
import '../../../domain/users/entities/user.dart';

/// We should use this quary to get user from database
class GetUserQuary implements BaseQuary<User?> {
  final String userId;
  const GetUserQuary(
    this.userId,
  );
  @override
  Future<User?> execute() async {
    try {
      return User(int.parse(userId), 'fullName', 'test@gmail.com');
    } catch (e) {
      return null;
    }
  }
}
