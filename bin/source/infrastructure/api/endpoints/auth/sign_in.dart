import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'sign_in.g.dart';

class SignIn {
  @Route.get('/')
  Future<Response> _signIn(Request request) async => Response.ok('Hello World');

  Router get router => _$SignInRouter(this);
}
