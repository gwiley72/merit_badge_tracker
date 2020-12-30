import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:merit_badge_tracker/screens/home_page.dart';

void main() {
  group('The Home Screen', () {
    testWidgets('should show the app bar', (WidgetTester tester) async {
      Key key = new Key('home-page-screen');
      final String title = 'App Bar Home';

      await tester.pumpWidget(MaterialApp(
        home: HomePage(key: key, title: title),
      ));

      expect(find.byType(AppBar), findsOneWidget);
    });
  });
}
