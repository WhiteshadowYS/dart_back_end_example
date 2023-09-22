// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_endpoints.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$UserEndpointsRouter(UserEndpoints service) {
  final router = Router();
  router.add(
    'GET',
    r'/<userId|[0-9]+>/',
    service._getUserById,
  );
  router.add(
    'PUT',
    r'/<userId|[0-9]+>/',
    service._updateUserById,
  );
  router.add(
    'POST',
    r'/create/',
    service._createUserById,
  );
  return router;
}
