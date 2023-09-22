// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_router.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$AuthRouterRouter(AuthRouter service) {
  final router = Router();
  router.mount(
    r'/sign-in/',
    service._signIn.call,
  );
  router.mount(
    r'/sign-out/',
    service._signOut.call,
  );
  return router;
}
