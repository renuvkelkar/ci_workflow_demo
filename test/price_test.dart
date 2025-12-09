import 'package:flutter_test/flutter_test.dart';
import 'package:ci_workflow_demo/price.dart';

void main() {
  test("calculateTotal multiplies correctly", () {
    expect(calculateTotal(10, 3, discount: 0.0), 30);
  });

  test("calculateTotal applies discount correctly", () {
    // 10 * 3 = 30, 10% discount = 3 → 27
    expect(calculateTotal(10, 3, discount: 0.1), 27);
  });
}
