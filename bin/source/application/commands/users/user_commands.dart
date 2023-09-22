import 'create_user.dart';
import 'update_user.dart';

class UserCommands {
  final CreateUserCommand create;
  final UpdateUserCommand update;

  const UserCommands(
    this.create,
    this.update,
  );
}
