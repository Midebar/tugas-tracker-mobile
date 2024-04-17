// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tugas_tracker/menu.dart';

void main() {
  testWidgets('SnackBar control test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    const String helloSnackBar = 'Kamu telah menekan tombol Tambah Item';
    const Key tapTarget = Key('Lihat Item');
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text(helloSnackBar),
                duration: Duration(seconds: 2),
              ));
            },
            behavior: HitTestBehavior.opaque,
            child: Container(
              padding: const EdgeInsets.all(
                  16.0), // Set the padding to add whitespace around the Container
              height: 100.0,
              width: 100.0,
              key: tapTarget,
            ),
          );
        }),
      ),
    ));
    expect(find.text(helloSnackBar), findsNothing);
    await tester.tap(find.byKey(tapTarget));
    expect(find.text(helloSnackBar), findsNothing);
    await tester.pump(); // schedule animation
    expect(find.text(helloSnackBar), findsOneWidget);
  });
}
