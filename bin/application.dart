import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_hotreload/shelf_hotreload.dart';

import 'config/router.dart';

void main(List<String> args) async {
  /// ORM
  /// Specification
  ///
  withHotreload(() async {
    final pipeline = Pipeline().addMiddleware(logRequests());
    final handler = pipeline.addHandler(MainRouter().router);

    final ip = InternetAddress.anyIPv4;
    final port = int.parse('8000');
    final server = await serve(handler, ip, port);
    return server;
  });
}
