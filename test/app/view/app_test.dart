import 'package:flutter_test/flutter_test.dart';
import 'package:the_animator/modules/app/app.dart';
import 'package:the_animator/modules/home/views/home_screen.dart';

void main() {
  group('App', () {
    testWidgets('renders HomeScreen', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
