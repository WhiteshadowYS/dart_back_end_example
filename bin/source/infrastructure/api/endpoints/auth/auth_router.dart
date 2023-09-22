import 'package:shelf_router/shelf_router.dart';

import 'sign_in.dart';
import 'sign_out.dart';

part 'auth_router.g.dart';

class AuthRouter {
  @Route.mount('/sign-in/')
  Router get _signIn => SignIn().router;

  @Route.mount('/sign-out/')
  Router get _signOut => SignOut().router;

  Router get router => _$AuthRouterRouter(this);
}
