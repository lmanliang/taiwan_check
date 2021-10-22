library tiawna_check;

class TaiwanCheck {
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
