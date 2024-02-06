import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tdd/main.dart' as app;

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on custom butto', (widgetTester) async {
      app.main();
      await widgetTester.pumpAndSettle();

      //verify that memberpage has been loaded
      expect(find.text('Member'), findsOneWidget);

      //find custom button
      final textButtonFinder = find.byKey(Key('member_button'));

      //Emulate a tap on text button
      await widgetTester.tap(textButtonFinder);

      //Trigger a frame and wait until its settled
      await widgetTester.pumpAndSettle();

      //verify that a device was loaded
      expect(find.byKey(Key('member_data')), findsOneWidget);
    });
  });
}
