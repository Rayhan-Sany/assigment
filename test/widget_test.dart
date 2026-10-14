import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:assigment/app/app.dart';

void main() {
  testWidgets('Profile page elements smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify Name, Role, Bio
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(
      find.text(
        'Passionate about creating user-friendly and engaing digital experiences.',
      ),
      findsOneWidget,
    );

    // Verify Contact Info
    expect(find.text('john.doe@example.com'), findsOneWidget);
    expect(find.text('+123 456 7890'), findsOneWidget);
    expect(find.byIcon(Icons.email), findsOneWidget);
    expect(find.byIcon(Icons.phone), findsOneWidget);

    // Verify Action Buttons
    expect(find.text('Follow'), findsOneWidget);
    expect(find.text('Message'), findsOneWidget);

    // Verify Interests Section
    expect(find.text('Interests'), findsOneWidget);
    expect(find.text('Travel'), findsOneWidget);
    expect(
      find.text('Exploring new places around the world'),
      findsOneWidget,
    );
    expect(find.text('Photography'), findsOneWidget);
    expect(
      find.text('Capturing moments through the lens'),
      findsOneWidget,
    );

    // Verify Interest Card Buttons
    expect(find.text('View More'), findsNWidgets(2));
  });
}
