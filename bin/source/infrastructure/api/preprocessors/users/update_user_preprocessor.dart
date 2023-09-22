import 'package:shelf/shelf.dart';

import '../../../../../resources/base/base_preprocessor.dart';
import '../../../../domain/users/entities/user.dart';

class UpdateUserPreprocessor implements BasePreprocessor<User?> {
  final String userId;
  final Request request;

  const UpdateUserPreprocessor(
    this.userId,
    this.request,
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
