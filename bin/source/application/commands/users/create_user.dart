import '../../../../config/config.dart';
import '../../../../config/database.dart';
import '../../../../resources/base/base_command.dart';
import '../../../domain/users/entities/user.dart';

/// We should use this command to create user in database
class CreateUserCommand implements BaseCommand<User?> {
  final User _user;
  const CreateUserCommand(this._user);

  @override
  Future<User?> execute() async {
    try {
      final database = getIt<PostgresSQL>();
      final response = await database.connection.query(
        '''
      INSERT INTO Users (name, email)
      VALUES (@name,@email)
''',
        substitutionValues: {
          'name': _user.name,
          'email': _user.email,
        },
      );
      print(response);
      return _user;
    } catch (e) {
      return null;
    }
  }
}
