import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:urfioley/main.dart';

void main() {
  testWidgets('Test initial widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SkinCareApp());

    // Verify that the splash screen is displayed.
    expect(find.text('Splash Screen'), findsOneWidget);
    expect(find.text('Login'), findsNothing);

    // Wait for the splash screen to disappear.
    await tester.pump(Duration(seconds: 2));

    // Verify that the login page is displayed.
    expect(find.text('Splash Screen'), findsNothing);
    expect(find.text('Login'), findsOneWidget);
  });

  testWidgets('Test login and navigation', (WidgetTester tester) async {
    await tester.pumpWidget(SkinCareApp());

    // Wait for the splash screen to disappear.
    await tester.pump(Duration(seconds: 2));

    // Verify that the login page is displayed.
    expect(find.text('Login'), findsOneWidget);

    // Tap the "Login" button and trigger a frame.
    await tester.tap(find.widgetWithText(ElevatedButton, 'Login'));
    await tester.pump();

    // Verify that we are on the home page.
    expect(find.text('Login'), findsNothing);
    expect(find.text('Welcome to SkinCare Shop!'), findsOneWidget);

    // Tap the "Logout" button and trigger a frame.
    await tester.tap(find.byIcon(Icons.exit_to_app));
    await tester.pump();

    // Verify that we are back on the login page.
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Welcome to SkinCare Shop!'), findsNothing);
  });
}
