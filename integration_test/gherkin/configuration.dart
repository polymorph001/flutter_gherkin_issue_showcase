// ignore_for_file: avoid_print

import 'package:flutter_gherkin/flutter_gherkin.dart';
// ignore: depend_on_referenced_packages
import 'package:gherkin/gherkin.dart';

import 'package:flutter_gherkin_issue_showcase/main.dart' as app;

FlutterTestConfiguration gherkinTestConfiguration =
    FlutterTestConfiguration(reporters: [
  StdoutReporter(MessageLevel.error)
    ..setWriteLineFn(print)
    ..setWriteFn(print),
  ProgressReporter()
    ..setWriteLineFn(print)
    ..setWriteFn(print),
  TestRunSummaryReporter()
    ..setWriteLineFn(print)
    ..setWriteFn(print),
  JsonReporter(
    writeReport: (_, __) => Future<void>.value(),
  ),
]);

Future<void> Function(World) appInitializationFn = (World world) async {
  return app.main();
};
