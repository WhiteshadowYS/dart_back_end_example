import 'package:injectable/injectable.dart';
import 'package:postgres/postgres.dart';

import '../resources/database_consts.dart';

@singleton
class PostgresSQL {
  late final PostgreSQLConnection connection;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    print('<PostgresSQL> => starting...');
    connection = PostgreSQLConnection(
      DatabaseConsts.url,
      DatabaseConsts.port,
      DatabaseConsts.databaseName,
      username: DatabaseConsts.databaseUser,
      password: DatabaseConsts.databasePassword,
    );

    await connection.open();
    print('<PostgresSQL> => Connection opened');
  }
}
