import '../../../application/commands/users/user_commands.dart';
import '../../../application/queries/users/user_queries.dart';

class UserRepository {
  final UserCommands commands;
  final UserQueries queries;

  const UserRepository(
    this.commands,
    this.queries,
  );
}
