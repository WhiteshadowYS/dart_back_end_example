// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_router.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$UsersRouterRouter(UsersRouter service) {
  final router = Router();
  router.mount(
    r'/current/',
    service._current.call,
  );
  router.mount(
    r'/user/',
    service._user.call,
  );
  return router;
}
