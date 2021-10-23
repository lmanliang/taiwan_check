library tiawna_check;

class TaiwanCheck {
  List si(String number) {
    List<int> sum = [];
    for (int i = 0; number.length > i; i++) {
      //print(number.codeUnitAt(i));
      sum.add(number.codeUnitAt(i));
    }
    return sum;
  }

  String carNumber(String carNumber) {
    carNumber = carNumber.toUpperCase();
    RegExp carCheck = RegExp("^[A-Z]{3}-[A-Z0-9]{4}\$");
    if (!carCheck.hasMatch(carNumber)) {
      return '非民國106年新版車牌';
    }
    List carSort = [];
    List sum;
    List carType = [

      ["自用小客(貨)車A", si('AJF'), si('DZZ')],
      ["自用小客(貨)車B", si('FAA'), si('GZZ')],
      ["自用小客(貨)車C", si('UAA'), si('VZZ')],
      ["身心障礙者專用車A", si('WAC'), si('WDZ')],
      ["身心障礙者專用車B", si('WEE'), si('WEZ')],
      ["租賃小(貨)客車A", si('RAQ'), si('RDZ')],
      ["租賃小(貨)客車B", si('RFA'), si('RZZ')],
      ["租賃小(貨)客車C", si('REN'), si('REZ')],
      ["自用大貨車A", si('KEA'), si('KHZ')],
      ["自用大貨車B", si('KSA'), si('KSZ')],
      ["自用大客車C", si('KJA'), si('KJZ')],
      ["營業大客車A", si('KKA'), si('KKZ')],
      ["營業大貨車B", si('KLA'), si('KMZ')],
      ["營業大貨車C", si('KRA'), si('KRZ')],
      ["營業貨櫃曳引車A", si('KNA'), si('KNZ')],
      ["營業小貨車A", si('KPA'), si('KPZ')],
      ["營業小貨車B", si('KTA'), si('KTZ')],
      ["營業小客車C", si('TAA'), si('TZZ')],
      ["遊覽車A", si('KAA'), si('TZZ')],
      ["交通車A", si('KQA'), si('KQD')],
      ["普通重型機車A", si('MAY'), si('PZZ')],
      ["普通重型機車B", si('JAA'), si('JZZ')],
      ["普通重型機車C", si('XAA'), si('ZZZ')],
      ["普通重型機車D", si('WFA'), si('WZZ')],
      ["普通重型機車E", si('QNA'), si('QZZ')],
      ["普通重型機車F", si('LNA'), si('LZZ')],
      ["普通重型機車G", si('HEA'), si('HZZ')],
      ["普通重型機車H", si('KUA'), si('KZZ')],
      ["普通重型機車I", si('KQE'), si('KQZ')],
      ["普通重型機車J", si('SFA'), si('SZZ')],
      ["輕型機車", si('QAL'), si('QMZ')],
      ["小型輕型機車", si('SAC'), si('SEZ')],
      ["大型重型機車", si('LAD'), si('LFZ')],
      ["500CC以上大型重型機車", si('LGA'), si('LMZ')],
      ["自用拖車", si('HAA'), si('HAZ')],
      ["營業拖車", si('HBA'), si('HDZ')],
      ["電動租賃小客車", si('REA'), si('REM'), 5556, 9999],
      ["電動身心障礙者專用車", si('WEA'), si('WEE'), 1819, 9999],
      ["電動自用小型車", si('EBA'), si('EAK')],
      ["電動大客車", si('EAL'), si('EAL')],
      ["電動普通重型機車", si('EMD'), si('EVZ')],
      ["電動輕型機車", si('EWA'), si('EZM')],
      ["電動小型輕型機車", si('EZN'), si('EZZ')],
      ["電動大型輕型機車", si('EMB'), si('EMC')],
      ["電動550CC以上大型重型機車", si('EMA'), si('EMA')],
    ];
    for (int i = 0; carType.length > i; i++) {
      if (carSort.length == 0) {
        carSort.add(carType[i]);
      }
    }
    //print(carNumber.split('-')[0]);
    sum = si(carNumber.split('-')[0]);
    print(carNumber.compareTo('ZZZ'));
    for (int i = 0; carType.length > i; i++) {
          if (_diffNumber(sum[2], carType[i][1][2], carType[i][2][2]) == true) {
            print('pass3');
            print(carType[i][0]);
            /*
            if (i == 37 && int.parse(carNumber.split('-')[1]) <= carType[i][3] && int.parse(carNumber.split('-')[1]) >= carType[i][3]) {
              return '查無此車牌歸屬';
            }
            if (i == 38 && int.parse(carNumber.split('-')[1]) <= carType[i][3] && int.parse(carNumber.split('-')[1]) >= carType[i][3]) {
              return '查無此車牌歸屬';
            }

             */
            //print(sum[0].toString() +':'+ carType[i][1][1].toString() +':'+ carType[i][1][2].toString());

            //return carType[i][0];
          }
      }
    return '查無此車牌歸屬';
  }

  bool _diffNumber(int o, int minNumber, int maxNumber) {
    if (o >= minNumber && o <= maxNumber) {
      return true;
    } else {
      return false;
    }
  }

  bool idNumber(String idnumber) {
    idnumber = idnumber.toUpperCase();
    int idcode = 0;
    switch (idnumber[0]) {
      case 'A':
        idcode = 10;
        break;
      case 'B':
        idcode = 11;
        break;
      case 'C':
        idcode = 12;
        break;
      case 'D':
        idcode = 13;
        break;
      case 'E':
        idcode = 14;
        break;
      case 'F':
        idcode = 15;
        break;
      case 'G':
        idcode = 16;
        break;
      case 'H':
        idcode = 17;
        break;
      case 'I':
        idcode = 34;
        break;
      case 'J':
        idcode = 18;
        break;
      case 'K':
        idcode = 19;
        break;
      case 'L':
        idcode = 20;
        break;
      case 'M':
        idcode = 21;
        break;
      case 'N':
        idcode = 22;
        break;
      case 'O':
        idcode = 35;
        break;
      case 'P':
        idcode = 23;
        break;
      case 'Q':
        idcode = 24;
        break;
      case 'R':
        idcode = 25;
        break;
      case 'S':
        idcode = 26;
        break;
      case 'T':
        idcode = 27;
        break;
      case 'U':
        idcode = 28;
        break;
      case 'V':
        idcode = 29;
        break;
      case 'W':
        idcode = 32;
        break;
      case 'X':
        idcode = 30;
        break;
      case 'Y':
        idcode = 31;
        break;
      case 'Z':
        idcode = 33;
        break;
      default:
        idcode = 0;
    }

    if (idnumber.length != 10) {
      return false;
    }
    var reg = RegExp(r'^[A-Z][0-9]{9}$');
    if (!reg.hasMatch(idnumber)) {
      return false;
    }
    var idcheck = (int.parse(idcode.toString()[0]) * 1) +
        (int.parse(idcode.toString()[1]) * 9) +
        (int.parse(idnumber[1]) * 8) +
        (int.parse(idnumber[2]) * 7) +
        (int.parse(idnumber[3]) * 6) +
        (int.parse(idnumber[4]) * 5) +
        (int.parse(idnumber[5]) * 4) +
        (int.parse(idnumber[6]) * 3) +
        (int.parse(idnumber[7]) * 2) +
        (int.parse(idnumber[8]) * 1);
    if (10 - (idcheck % 10) == int.parse(idnumber[9])) {
      return true;
    } else {
      return false;
    }
  }
}
