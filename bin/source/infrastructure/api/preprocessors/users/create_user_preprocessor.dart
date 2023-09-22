import 'package:shelf/shelf.dart';

import '../../../../../resources/base/base_preprocessor.dart';
import '../../../../domain/users/entities/user.dart';

class CreateUserPreprocessor implements BasePreprocessor<User?> {
  final Request request;

  const CreateUserPreprocessor(
    this.request,
  );

  @override
  Future<User?> execute() async {
    try {
      return null;
      // return User('fullName', 'test@gmail.com');
    } catch (e) {
      return null;
    }
  }
}
