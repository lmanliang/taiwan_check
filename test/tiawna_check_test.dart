import 'package:flutter_test/flutter_test.dart';
import '../lib/tiawna_check.dart';

void main() {
  test('Taiwan id check', () {
    final taiwan = TaiwanCheck();
    expect(taiwan.idNumber('A197336627'), true);
    expect(taiwan.idNumber('Asdklfjaas'), false);
    expect(taiwan.idNumber('lkasdfl'), false);
  });
}
