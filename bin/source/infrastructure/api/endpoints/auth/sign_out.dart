import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'sign_out.g.dart';

class SignOut {
  @Route.get('/')
  Future<Response> _signOut(Request request) async => Response.ok('Hello World');

  Router get router => _$SignOutRouter(this);
}
