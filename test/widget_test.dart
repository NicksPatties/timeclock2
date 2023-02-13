import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:timeclock2/main.dart';

void main() {
  testWidgets('Word favoriting smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the word has not been favorited
    expect(find.byIcon(Icons.favorite_border), findsOneWidget);

    // Tap the add favorites button
    await tester.tap(find.byIcon(Icons.favorite_border));
    await tester.pump();

    // Verify the word has been added to favorites
    expect(find.byIcon(Icons.favorite_border), findsNothing);
    // There are two widgets that have the favorite icon now, including the side menu
    expect(find.byIcon(Icons.favorite), findsWidgets);
  });
}

