import 'package:shelf_router/shelf_router.dart';

import '../source/infrastructure/api/endpoints/auth/auth_router.dart';
import '../source/infrastructure/api/endpoints/users/users_router.dart';

part 'router.g.dart';

class MainRouter {
  @Route.mount('/auth/')
  Router get _authRouter => AuthRouter().router;

  @Route.mount('/users/')
  Router get _usersRouter => UsersRouter().router;

  Router get router => _$MainRouterRouter(this);
}
