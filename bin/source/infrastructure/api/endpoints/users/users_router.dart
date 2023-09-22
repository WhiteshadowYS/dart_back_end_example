import 'package:shelf_router/shelf_router.dart';

import 'current_user_endpoints.dart';
import 'user_endpoints.dart';

part 'users_router.g.dart';

class UsersRouter {
  @Route.mount('/current/')
  Router get _current => CurrentUserEndpoints().router;

  @Route.mount('/user/')
  Router get _user => UserEndpoints().router;

  Router get router => _$UsersRouterRouter(this);
}
