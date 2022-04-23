import '../../lib/taiwan_check.dart';
main(){
  print('True:' + TaiwanCheck().idNumber('A123456789').toString());
  print('False:' + TaiwanCheck().idNumber('T110106230').toString());
}