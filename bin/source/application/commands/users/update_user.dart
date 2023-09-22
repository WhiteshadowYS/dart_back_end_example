import '../../../../resources/base/base_command.dart';
import '../../../domain/users/entities/user.dart';

/// We should use this command to update user in database
class UpdateUserCommand implements BaseCommand<User> {
  final User _user;
  const UpdateUserCommand(this._user);

  @override
  Future<User> execute() async => _user;
}
