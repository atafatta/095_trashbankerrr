import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trashbanker/home.dart';
import 'package:trashbanker/login.dart';

void main() {
  testWidgets('Login page widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Verify that the initial UI is as expected.

    // Replace these test cases with your specific widget tests.

    // Example: Verify the presence of certain widgets
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Example: Simulate a user tapping the login button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Example: Verify that the AlertDialog appears when login fails
    //expect(find.text('Login Gagal'), findsNothing); // Before tapping login
    // Simulate a failed login
    // Assuming the initial username and password are 'atafatta'
    await tester.enterText(find.byType(TextField).first, 'wrongUsername');
    await tester.enterText(find.byType(TextField).last, 'wrongPassword');
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    //expect(find.text('Login Gagal'), findsOneWidget);

    // Example: Verify navigation to HomePage on successful login
    await tester.enterText(find.byType(TextField).first, 'atafatta');
    await tester.enterText(find.byType(TextField).last, 'atafatta');
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle(); // Wait for navigation to complete
    expect(find.byType(HomePage), findsOneWidget);
  });
}
