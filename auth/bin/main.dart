import 'dart:io';

import 'package:auth/auth.dart';
import 'package:conduit/conduit.dart';

Future<void> main() async {
  final port = int.parse(Platform.environment['PORT'] ?? '5432');
  final service = Application<AppService>()..options.port = port;

  await service.start(numberOfInstances: 3, consoleLogging: true);
}
