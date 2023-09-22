import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'current_user_endpoints.g.dart';

class CurrentUserEndpoints {
  @Route.get('/')
  Future<Response> _currentUser(Request request) async {
    /// request => validator
    ///   true => ok
    ///   false => error
    /// request => preprocessor
    ///   prepare data
    /// data => command => presenter
    return Response.ok('Get Current User');
  }

  Router get router => _$CurrentUserEndpointsRouter(this);
}
