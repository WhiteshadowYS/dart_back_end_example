// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$MainRouterRouter(MainRouter service) {
  final router = Router();
  router.mount(
    r'/auth/',
    service._authRouter.call,
  );
  router.mount(
    r'/users/',
    service._usersRouter.call,
  );
  return router;
}
