import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../../../application/commands/users/update_user.dart';
import '../../../../application/queries/users/get_user.dart';
import '../../preprocessors/users/create_user_preprocessor.dart';
import '../../preprocessors/users/update_user_preprocessor.dart';

part 'user_endpoints.g.dart';

class UserEndpoints {
  @Route.get('/<userId|[0-9]+>/')
  Future<Response> _getUserById(Request request, String userId) async {
    final querie = GetUserQuary(userId);
    final response = await querie.execute();
    return Response.ok(response?.toJson()); // Better to create presenter to format it
  }

  @Route.put('/<userId|[0-9]+>/')
  Future<Response> _updateUserById(Request request, String userId) async {
    final _preprocessor = UpdateUserPreprocessor(userId, request);
    final user = await _preprocessor.execute();
    if (user == null) return Response.badRequest();
    final _command = UpdateUserCommand(user);
    final result = await _command.execute();

    return Response.ok(result.toJson()); // Better to create presenter to format it
  }

  @Route.post('/create/')
  Future<Response> _createUserById(Request request) async {
    final body = await request.readAsString();
    print('body: $body');
    final _preprocessor = CreateUserPreprocessor(request);
    final user = await _preprocessor.execute();
    // if (user == null) return Response.badRequest();
    // final _command = CreateUserCommand(
    //   User(0, request.),
    // );
    // final result = await _command.execute();
    // return Response.ok(result?.toJson()); // Better to create presenter to format it
    return Response.ok('Nice');
  }

  Router get router => _$UserEndpointsRouter(this);
}
