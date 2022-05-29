import 'package:curious_cats/presentation/kitty_facts/widgets/kitty_fact_card.dart';
import 'package:curious_cats/utils/date_utils/date_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils/create_material_app.dart';
import '../../../utils/mock_data/kitty_fact_mock_data.dart';

void main() {
  final mockFact = kittyFactMockData;

  Future<void> createScreen(WidgetTester tester) {
    return createMaterialApp(
      tester,
      child: KittyFactCard(fact: mockFact),
    );
  }

  testWidgets('Card shows correct title and date', (tester) async {
    await createScreen(tester);

    expect(find.text(mockFact.text), findsOneWidget);
    expect(find.text(defaultDateFormatter.format(mockFact.createdAt.toLocal())), findsOneWidget);
  });
}
