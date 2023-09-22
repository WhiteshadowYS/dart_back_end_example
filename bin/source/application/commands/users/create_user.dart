import '../../../../resources/base/base_command.dart';
import '../../../domain/users/entities/user.dart';

/// We should use this command to create user in database
class CreateUserCommand implements BaseCommand<User> {
  final User _user;
  const CreateUserCommand(this._user);

  @override
  Future<User> execute() async => _user;
}
