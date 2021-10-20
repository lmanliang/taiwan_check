import 'package:flutter_test/flutter_test.dart';

import 'package:tiawna_id_check/tiawna_id_check.dart';

void main() {
  test('Taiwan id check', () {
    final idCheck = TaiwanId();
    expect(idCheck.check('A197336627'), true);
    expect(idCheck.check('Asdklfjaas'), false);
    expect(idCheck.check('lkasdfl'), false);
  });
}
