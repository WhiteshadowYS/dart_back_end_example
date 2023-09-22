import '../../../../resources/base/base_quary.dart';
import '../../../domain/users/entities/user.dart';

/// We should use this quary to get user from database
class GetUserQuary implements BaseQuary<User> {
  @override
  Future<User> execute() async => User(0, 'fullName', 'test@gmail.com');
}
