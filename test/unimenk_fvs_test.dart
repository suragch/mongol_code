import 'package:test/test.dart';
import 'package:mongol_code/mongol_code.dart';

void main() {
  group('Unicode -> Menksoft: all combinations of Unicode+FVS', () {
    group('A', () {
      test('aIsol', () async {
        final unicode = '\u1820';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aIsol);
        expect(result, expected);
      });

      test('aIsolFvs1', () async {
        final unicode = '\u1820\u180B';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aIsolFvs1);
        expect(result, expected);
      });

      test('aIsolFvs2', () async {
        final unicode = '\u1820\u180C';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aIsolFvs2);
        expect(result, expected);
      });

      test('aIsolFvs3', () async {
        final unicode = '\u1820\u180D';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aIsol);
        expect(result, expected);
      });

      test('aIsolFvs4', () async {
        final unicode = '\u1820\u180F';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aIsol);
        expect(result, expected);
      });

      test('aInit', () async {
        final unicode = '\u1820\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aInit);
        expect(result, expected);
      });

      test('aInitFvs1', () async {
        final unicode = '\u1820\u180B\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aInitFvs1);
        expect(result, expected);
      });

      test('aInitFvs2', () async {
        final unicode = '\u1820\u180C\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aInit);
        expect(result, expected);
      });

      test('aInitFvs3', () async {
        final unicode = '\u1820\u180D\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aInit);
        expect(result, expected);
      });

      test('aInitFvs3', () async {
        final unicode = '\u1820\u180F\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aInit);
        expect(result, expected);
      });

      test('aMedi', () async {
        final unicode = '\u180A\u1820\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aMedi);
        expect(result, expected);
      });

      test('aMediFvs1', () async {
        final unicode = '\u180A\u1820\u180B\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aMediFvs1);
        expect(result, expected);
      });

      test('aMediFvs2', () async {
        final unicode = '\u180A\u1820\u180C\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aMedi);
        expect(result, expected);
      });

      test('aMediFvs3', () async {
        final unicode = '\u180A\u1820\u180D\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aMedi);
        expect(result, expected);
      });

      test('aMediFvs4', () async {
        final unicode = '\u180A\u1820\u180F\u180A';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aMedi);
        expect(result, expected);
      });

      test('aFina', () async {
        final unicode = '\u180A\u1820';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aFina);
        expect(result, expected);
      });

      test('aFinaFvs1', () async {
        final unicode = '\u180A\u1820\u180B';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aFinaFvs1);
        expect(result, expected);
      });

      test('aFinaFvs2', () async {
        final unicode = '\u180A\u1820\u180C';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aFina);
        expect(result, expected);
      });

      test('aFinaFvs3', () async {
        final unicode = '\u180A\u1820\u180D';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aFina);
        expect(result, expected);
      });

      test('aFinaFvs4', () async {
        final unicode = '\u180A\u1820\u180F';
        final result = convertUnicodeToMenksoft(unicode);
        final expected = String.fromCharCode(Menksoft.aFina);
        expect(result, expected);
      });
    });
  });

  group('E', () {
    test('eIsol', () async {
      final unicode = '\u1821';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eIsol);
      expect(result, expected);
    });

    test('eIsolFvs1', () async {
      final unicode = '\u1821\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eIsolFvs1);
      expect(result, expected);
    });

    test('eIsolFvs2', () async {
      final unicode = '\u1821\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eIsol);
      expect(result, expected);
    });

    test('eIsolFvs3', () async {
      final unicode = '\u1821\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eIsol);
      expect(result, expected);
    });

    test('eIsolFvs4', () async {
      final unicode = '\u1821\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eIsol);
      expect(result, expected);
    });

    test('eInit', () async {
      final unicode = '\u1821\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eInit);
      expect(result, expected);
    });

    test('eInitFvs1', () async {
      final unicode = '\u1821\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eInitFvs1);
      expect(result, expected);
    });

    test('eInitFvs2', () async {
      final unicode = '\u1821\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eInit);
      expect(result, expected);
    });

    test('eInitFvs3', () async {
      final unicode = '\u1821\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eInit);
      expect(result, expected);
    });

    test('eInitFvs3', () async {
      final unicode = '\u1821\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eInit);
      expect(result, expected);
    });

    test('eMedi', () async {
      final unicode = '\u180A\u1821\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eMedi);
      expect(result, expected);
    });

    test('eMediFvs1', () async {
      final unicode = '\u180A\u1821\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eMedi);
      expect(result, expected);
    });

    test('eMediFvs2', () async {
      final unicode = '\u180A\u1821\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eMedi);
      expect(result, expected);
    });

    test('eMediFvs3', () async {
      final unicode = '\u180A\u1821\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eMedi);
      expect(result, expected);
    });

    test('eMediFvs4', () async {
      final unicode = '\u180A\u1821\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eMedi);
      expect(result, expected);
    });

    test('eFina', () async {
      final unicode = '\u180A\u1821';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eFina);
      expect(result, expected);
    });

    test('eFinaFvs1', () async {
      final unicode = '\u180A\u1821\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eFinaFvs1);
      expect(result, expected);
    });

    test('eFinaFvs2', () async {
      final unicode = '\u180A\u1821\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eFina);
      expect(result, expected);
    });

    test('eFinaFvs3', () async {
      final unicode = '\u180A\u1821\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eFina);
      expect(result, expected);
    });

    test('eFinaFvs4', () async {
      final unicode = '\u180A\u1821\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eFina);
      expect(result, expected);
    });
  });

  group('I', () {
    test('iIsol', () async {
      final unicode = '\u1822';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iIsol);
      expect(result, expected);
    });

    test('iIsolFvs1', () async {
      final unicode = '\u1822\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iIsolFvs1);
      expect(result, expected);
    });

    test('iIsolFvs2', () async {
      final unicode = '\u1822\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iIsol);
      expect(result, expected);
    });

    test('iIsolFvs3', () async {
      final unicode = '\u1822\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iIsol);
      expect(result, expected);
    });

    test('iIsolFvs4', () async {
      final unicode = '\u1822\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iIsol);
      expect(result, expected);
    });

    test('iInit', () async {
      final unicode = '\u1822\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iInit);
      expect(result, expected);
    });

    test('iInitFvs1', () async {
      final unicode = '\u1822\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iInitFvs1);
      expect(result, expected);
    });

    test('iInitFvs2', () async {
      final unicode = '\u1822\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iInit);
      expect(result, expected);
    });

    test('iInitFvs3', () async {
      final unicode = '\u1822\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iInit);
      expect(result, expected);
    });

    test('iInitFvs3', () async {
      final unicode = '\u1822\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iInit);
      expect(result, expected);
    });

    test('iMedi', () async {
      final unicode = '\u180A\u1822\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iMedi);
      expect(result, expected);
    });

    test('iMediFvs1', () async {
      final unicode = '\u180A\u1822\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iMediFvs1);
      expect(result, expected);
    });

    test('iMediFvs2', () async {
      final unicode = '\u180A\u1822\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iMediFvs2);
      expect(result, expected);
    });

    test('iMediFvs3', () async {
      final unicode = '\u180A\u1822\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iMedi);
      expect(result, expected);
    });

    test('iMediFvs4', () async {
      final unicode = '\u180A\u1822\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iMedi);
      expect(result, expected);
    });

    test('iFina', () async {
      final unicode = '\u180A\u1822';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iFina);
      expect(result, expected);
    });

    test('iFinaFvs1', () async {
      final unicode = '\u180A\u1822\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iFina);
      expect(result, expected);
    });

    test('iFinaFvs2', () async {
      final unicode = '\u180A\u1822\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iFina);
      expect(result, expected);
    });

    test('iFinaFvs3', () async {
      final unicode = '\u180A\u1822\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iFina);
      expect(result, expected);
    });

    test('iFinaFvs4', () async {
      final unicode = '\u180A\u1822\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.iFina);
      expect(result, expected);
    });
  });

  group('O', () {
    test('oIsol', () async {
      final unicode = '\u1823';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oIsol);
      expect(result, expected);
    });

    test('oIsolFvs1', () async {
      final unicode = '\u1823\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oIsol);
      expect(result, expected);
    });

    test('oIsolFvs2', () async {
      final unicode = '\u1823\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oIsol);
      expect(result, expected);
    });

    test('oIsolFvs3', () async {
      final unicode = '\u1823\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oIsol);
      expect(result, expected);
    });

    test('oIsolFvs4', () async {
      final unicode = '\u1823\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oIsol);
      expect(result, expected);
    });

    test('oInit', () async {
      final unicode = '\u1823\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oInit);
      expect(result, expected);
    });

    test('oInitFvs1', () async {
      final unicode = '\u1823\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oInit);
      expect(result, expected);
    });

    test('oInitFvs2', () async {
      final unicode = '\u1823\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oInit);
      expect(result, expected);
    });

    test('oInitFvs3', () async {
      final unicode = '\u1823\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oInit);
      expect(result, expected);
    });

    test('oInitFvs3', () async {
      final unicode = '\u1823\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oInit);
      expect(result, expected);
    });

    test('oMedi', () async {
      final unicode = '\u180A\u1823\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oMedi);
      expect(result, expected);
    });

    test('oMediFvs1', () async {
      final unicode = '\u180A\u1823\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oMediFvs1);
      expect(result, expected);
    });

    test('oMediFvs2', () async {
      final unicode = '\u180A\u1823\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oMedi);
      expect(result, expected);
    });

    test('oMediFvs3', () async {
      final unicode = '\u180A\u1823\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oMedi);
      expect(result, expected);
    });

    test('oMediFvs4', () async {
      final unicode = '\u180A\u1823\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oMedi);
      expect(result, expected);
    });

    test('oFina', () async {
      final unicode = '\u180A\u1823';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oFina);
      expect(result, expected);
    });

    test('oFinaFvs1', () async {
      final unicode = '\u180A\u1823\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oFinaFvs1);
      expect(result, expected);
    });

    test('oFinaFvs2', () async {
      final unicode = '\u180A\u1823\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oFina);
      expect(result, expected);
    });

    test('oFinaFvs3', () async {
      final unicode = '\u180A\u1823\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oFina);
      expect(result, expected);
    });

    test('oFinaFvs4', () async {
      final unicode = '\u180A\u1823\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oFina);
      expect(result, expected);
    });
  });

  group('U', () {
    test('uIsol', () async {
      final unicode = '\u1824';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uIsol);
      expect(result, expected);
    });

    test('uIsolFvs1', () async {
      final unicode = '\u1824\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uIsolFvs1);
      expect(result, expected);
    });

    test('uIsolFvs2', () async {
      final unicode = '\u1824\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uIsol);
      expect(result, expected);
    });

    test('uIsolFvs3', () async {
      final unicode = '\u1824\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uIsol);
      expect(result, expected);
    });

    test('uIsolFvs4', () async {
      final unicode = '\u1824\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uIsol);
      expect(result, expected);
    });

    test('uInit', () async {
      final unicode = '\u1824\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uInit);
      expect(result, expected);
    });

    test('uInitFvs1', () async {
      final unicode = '\u1824\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uInitFvs1);
      expect(result, expected);
    });

    test('uInitFvs2', () async {
      final unicode = '\u1824\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uInit);
      expect(result, expected);
    });

    test('uInitFvs3', () async {
      final unicode = '\u1824\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uInit);
      expect(result, expected);
    });

    test('uInitFvs3', () async {
      final unicode = '\u1824\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uInit);
      expect(result, expected);
    });

    test('uMedi', () async {
      final unicode = '\u180A\u1824\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uMedi);
      expect(result, expected);
    });

    test('uMediFvs1', () async {
      final unicode = '\u180A\u1824\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uMediFvs1);
      expect(result, expected);
    });

    test('uMediFvs2', () async {
      final unicode = '\u180A\u1824\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uMedi);
      expect(result, expected);
    });

    test('uMediFvs3', () async {
      final unicode = '\u180A\u1824\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uMedi);
      expect(result, expected);
    });

    test('uMediFvs4', () async {
      final unicode = '\u180A\u1824\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uMedi);
      expect(result, expected);
    });

    test('uFina', () async {
      final unicode = '\u180A\u1824';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uFina);
      expect(result, expected);
    });

    test('uFinaFvs1', () async {
      final unicode = '\u180A\u1824\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uFinaFvs1);
      expect(result, expected);
    });

    test('uFinaFvs2', () async {
      final unicode = '\u180A\u1824\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uFina);
      expect(result, expected);
    });

    test('uFinaFvs3', () async {
      final unicode = '\u180A\u1824\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uFina);
      expect(result, expected);
    });

    test('uFinaFvs4', () async {
      final unicode = '\u180A\u1824\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.uFina);
      expect(result, expected);
    });
  });

  group('OE', () {
    test('oeIsol', () async {
      final unicode = '\u1825';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeIsol);
      expect(result, expected);
    });

    test('oeIsolFvs1', () async {
      final unicode = '\u1825\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeIsolFvs1);
      expect(result, expected);
    });

    test('oeIsolFvs2', () async {
      final unicode = '\u1825\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeIsol);
      expect(result, expected);
    });

    test('oeIsolFvs3', () async {
      final unicode = '\u1825\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeIsol);
      expect(result, expected);
    });

    test('oeIsolFvs4', () async {
      final unicode = '\u1825\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeIsol);
      expect(result, expected);
    });

    test('oeInit', () async {
      final unicode = '\u1825\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeInit);
      expect(result, expected);
    });

    test('oeInitFvs1', () async {
      final unicode = '\u1825\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeInit);
      expect(result, expected);
    });

    test('oeInitFvs2', () async {
      final unicode = '\u1825\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeInit);
      expect(result, expected);
    });

    test('oeInitFvs3', () async {
      final unicode = '\u1825\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeInit);
      expect(result, expected);
    });

    test('oeInitFvs3', () async {
      final unicode = '\u1825\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeInit);
      expect(result, expected);
    });

    test('oeMedi', () async {
      final unicode = '\u180A\u1825\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeMedi);
      expect(result, expected);
    });

    test('oeMediFvs1', () async {
      final unicode = '\u180A\u1825\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeMediFvs1);
      expect(result, expected);
    });

    test('oeMediFvs2', () async {
      final unicode = '\u180A\u1825\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeMediFvs2);
      expect(result, expected);
    });

    test('oeMediFvs3', () async {
      final unicode = '\u180A\u1825\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeMedi);
      expect(result, expected);
    });

    test('oeMediFvs4', () async {
      final unicode = '\u180A\u1825\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeMedi);
      expect(result, expected);
    });

    test('oeFina', () async {
      final unicode = '\u180A\u1825';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeFina);
      expect(result, expected);
    });

    test('oeFinaFvs1', () async {
      final unicode = '\u180A\u1825\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeFinaFvs1);
      expect(result, expected);
    });

    test('oeFinaFvs2', () async {
      final unicode = '\u180A\u1825\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeFinaFvs2);
      expect(result, expected);
    });

    test('oeFinaFvs3', () async {
      final unicode = '\u180A\u1825\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeFina);
      expect(result, expected);
    });

    test('oeFinaFvs4', () async {
      final unicode = '\u180A\u1825\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.oeFina);
      expect(result, expected);
    });
  });

  group('UE', () {
    test('ueIsol', () async {
      final unicode = '\u1826';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueIsol);
      expect(result, expected);
    });

    test('ueIsolFvs1', () async {
      final unicode = '\u1826\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueIsolFvs1);
      expect(result, expected);
    });

    test('ueIsolFvs2', () async {
      final unicode = '\u1826\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueIsolFvs2);
      expect(result, expected);
    });

    test('ueIsolFvs3', () async {
      final unicode = '\u1826\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueIsol);
      expect(result, expected);
    });

    test('ueIsolFvs4', () async {
      final unicode = '\u1826\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueIsol);
      expect(result, expected);
    });

    test('ueInit', () async {
      final unicode = '\u1826\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueInit);
      expect(result, expected);
    });

    test('ueInitFvs1', () async {
      final unicode = '\u1826\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueInitFvs1);
      expect(result, expected);
    });

    test('ueInitFvs2', () async {
      final unicode = '\u1826\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueInit);
      expect(result, expected);
    });

    test('ueInitFvs3', () async {
      final unicode = '\u1826\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueInit);
      expect(result, expected);
    });

    test('ueInitFvs3', () async {
      final unicode = '\u1826\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueInit);
      expect(result, expected);
    });

    test('ueMedi', () async {
      final unicode = '\u180A\u1826\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueMedi);
      expect(result, expected);
    });

    test('ueMediFvs1', () async {
      final unicode = '\u180A\u1826\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueMediFvs1);
      expect(result, expected);
    });

    test('ueMediFvs2', () async {
      final unicode = '\u180A\u1826\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueMediFvs2);
      expect(result, expected);
    });

    test('ueMediFvs3', () async {
      final unicode = '\u180A\u1826\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueMedi);
      expect(result, expected);
    });

    test('ueMediFvs4', () async {
      final unicode = '\u180A\u1826\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueMedi);
      expect(result, expected);
    });

    test('ueFina', () async {
      final unicode = '\u180A\u1826';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueFina);
      expect(result, expected);
    });

    test('ueFinaFvs1', () async {
      final unicode = '\u180A\u1826\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueFinaFvs1);
      expect(result, expected);
    });

    test('ueFinaFvs2', () async {
      final unicode = '\u180A\u1826\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueFinaFvs2);
      expect(result, expected);
    });

    test('ueFinaFvs3', () async {
      final unicode = '\u180A\u1826\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueFina);
      expect(result, expected);
    });

    test('ueFinaFvs4', () async {
      final unicode = '\u180A\u1826\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.ueFina);
      expect(result, expected);
    });
  });

  group('EE', () {
    test('eeIsol', () async {
      final unicode = '\u1827';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeIsol);
      expect(result, expected);
    });

    test('eeIsolFvs1', () async {
      final unicode = '\u1827\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeIsol);
      expect(result, expected);
    });

    test('eeIsolFvs2', () async {
      final unicode = '\u1827\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeIsol);
      expect(result, expected);
    });

    test('eeIsolFvs3', () async {
      final unicode = '\u1827\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeIsol);
      expect(result, expected);
    });

    test('eeIsolFvs4', () async {
      final unicode = '\u1827\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeIsol);
      expect(result, expected);
    });

    test('eeInit', () async {
      final unicode = '\u1827\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeInit);
      expect(result, expected);
    });

    test('eeInitFvs1', () async {
      final unicode = '\u1827\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeInit);
      expect(result, expected);
    });

    test('eeInitFvs2', () async {
      final unicode = '\u1827\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeInit);
      expect(result, expected);
    });

    test('eeInitFvs3', () async {
      final unicode = '\u1827\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeInit);
      expect(result, expected);
    });

    test('eeInitFvs3', () async {
      final unicode = '\u1827\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeInit);
      expect(result, expected);
    });

    test('eeMedi', () async {
      final unicode = '\u180A\u1827\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeMedi);
      expect(result, expected);
    });

    test('eeMediFvs1', () async {
      final unicode = '\u180A\u1827\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeMedi);
      expect(result, expected);
    });

    test('eeMediFvs2', () async {
      final unicode = '\u180A\u1827\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeMedi);
      expect(result, expected);
    });

    test('eeMediFvs3', () async {
      final unicode = '\u180A\u1827\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeMedi);
      expect(result, expected);
    });

    test('eeMediFvs4', () async {
      final unicode = '\u180A\u1827\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeMedi);
      expect(result, expected);
    });

    test('eeFina', () async {
      final unicode = '\u180A\u1827';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeFina);
      expect(result, expected);
    });

    test('eeFinaFvs1', () async {
      final unicode = '\u180A\u1827\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeFina);
      expect(result, expected);
    });

    test('eeFinaFvs2', () async {
      final unicode = '\u180A\u1827\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeFina);
      expect(result, expected);
    });

    test('eeFinaFvs3', () async {
      final unicode = '\u180A\u1827\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeFina);
      expect(result, expected);
    });

    test('eeFinaFvs4', () async {
      final unicode = '\u180A\u1827\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.eeFina);
      expect(result, expected);
    });
  });

  group('NA', () {
    test('naIsol', () async {
      final unicode = '\u1828';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naIsol);
      expect(result, expected);
    });

    test('naIsolFvs1', () async {
      final unicode = '\u1828\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naIsolFvs1);
      expect(result, expected);
    });

    test('naIsolFvs2', () async {
      final unicode = '\u1828\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naIsol);
      expect(result, expected);
    });

    test('naIsolFvs3', () async {
      final unicode = '\u1828\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naIsol);
      expect(result, expected);
    });

    test('naIsolFvs4', () async {
      final unicode = '\u1828\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naIsol);
      expect(result, expected);
    });

    test('naInit', () async {
      final unicode = '\u1828\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naInitStem);
      expect(result, expected);
    });

    test('naInitFvs1', () async {
      final unicode = '\u1828\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naInitFvs1Stem);
      expect(result, expected);
    });

    test('naInitFvs2', () async {
      final unicode = '\u1828\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naInitStem);
      expect(result, expected);
    });

    test('naInitFvs3', () async {
      final unicode = '\u1828\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naInitStem);
      expect(result, expected);
    });

    test('naInitFvs3', () async {
      final unicode = '\u1828\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naInitStem);
      expect(result, expected);
    });

    test('naMedi', () async {
      final unicode = '\u180A\u1828\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naMediStem);
      expect(result, expected);
    });

    test('naMediFvs1', () async {
      final unicode = '\u180A\u1828\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naMediFvs1Stem);
      expect(result, expected);
    });

    test('naMediFvs2', () async {
      final unicode = '\u180A\u1828\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naMediStem);
      expect(result, expected);
    });

    test('naMediFvs3', () async {
      final unicode = '\u180A\u1828\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naMediStem);
      expect(result, expected);
    });

    test('naMediFvs4', () async {
      final unicode = '\u180A\u1828\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naMediStem);
      expect(result, expected);
    });

    test('naFina', () async {
      final unicode = '\u180A\u1828';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naFina);
      expect(result, expected);
    });

    test('naFinaFvs1', () async {
      final unicode = '\u180A\u1828\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naFinaFvs1);
      expect(result, expected);
    });

    test('naFinaFvs2', () async {
      final unicode = '\u180A\u1828\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naFina);
      expect(result, expected);
    });

    test('naFinaFvs3', () async {
      final unicode = '\u180A\u1828\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naFina);
      expect(result, expected);
    });

    test('naFinaFvs4', () async {
      final unicode = '\u180A\u1828\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.naFina);
      expect(result, expected);
    });
  });

  group('ANG', () {
    test('angIsol', () async {
      final unicode = '\u1829';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angIsol);
      expect(result, expected);
    });

    test('angIsolFvs1', () async {
      final unicode = '\u1829\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angIsol);
      expect(result, expected);
    });

    test('angIsolFvs2', () async {
      final unicode = '\u1829\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angIsol);
      expect(result, expected);
    });

    test('angIsolFvs3', () async {
      final unicode = '\u1829\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angIsol);
      expect(result, expected);
    });

    test('angIsolFvs4', () async {
      final unicode = '\u1829\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angIsol);
      expect(result, expected);
    });

    test('angInit', () async {
      final unicode = '\u1829\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angInitStem);
      expect(result, expected);
    });

    test('angInitFvs1', () async {
      final unicode = '\u1829\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angInitStem);
      expect(result, expected);
    });

    test('angInitFvs2', () async {
      final unicode = '\u1829\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angInitStem);
      expect(result, expected);
    });

    test('angInitFvs3', () async {
      final unicode = '\u1829\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angInitStem);
      expect(result, expected);
    });

    test('angInitFvs3', () async {
      final unicode = '\u1829\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angInitStem);
      expect(result, expected);
    });

    test('angMedi', () async {
      final unicode = '\u180A\u1829\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angMediStem);
      expect(result, expected);
    });

    test('angMediFvs1', () async {
      final unicode = '\u180A\u1829\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angMediStem);
      expect(result, expected);
    });

    test('angMediFvs2', () async {
      final unicode = '\u180A\u1829\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angMediStem);
      expect(result, expected);
    });

    test('angMediFvs3', () async {
      final unicode = '\u180A\u1829\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angMediStem);
      expect(result, expected);
    });

    test('angMediFvs4', () async {
      final unicode = '\u180A\u1829\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angMediStem);
      expect(result, expected);
    });

    test('angFina', () async {
      final unicode = '\u180A\u1829';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angFina);
      expect(result, expected);
    });

    test('angFinaFvs1', () async {
      final unicode = '\u180A\u1829\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angFina);
      expect(result, expected);
    });

    test('angFinaFvs2', () async {
      final unicode = '\u180A\u1829\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angFina);
      expect(result, expected);
    });

    test('angFinaFvs3', () async {
      final unicode = '\u180A\u1829\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angFina);
      expect(result, expected);
    });

    test('angFinaFvs4', () async {
      final unicode = '\u180A\u1829\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.angFina);
      expect(result, expected);
    });
  });

  group('BA', () {
    test('baIsol', () async {
      final unicode = '\u182A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baIsol);
      expect(result, expected);
    });

    test('baIsolFvs1', () async {
      final unicode = '\u182A\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baIsol);
      expect(result, expected);
    });

    test('baIsolFvs2', () async {
      final unicode = '\u182A\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baIsol);
      expect(result, expected);
    });

    test('baIsolFvs3', () async {
      final unicode = '\u182A\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baIsol);
      expect(result, expected);
    });

    test('baIsolFvs4', () async {
      final unicode = '\u182A\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baIsol);
      expect(result, expected);
    });

    test('baInit', () async {
      final unicode = '\u182A\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baInitStem);
      expect(result, expected);
    });

    test('baInitFvs1', () async {
      final unicode = '\u182A\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baInitStem);
      expect(result, expected);
    });

    test('baInitFvs2', () async {
      final unicode = '\u182A\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baInitStem);
      expect(result, expected);
    });

    test('baInitFvs3', () async {
      final unicode = '\u182A\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baInitStem);
      expect(result, expected);
    });

    test('baInitFvs3', () async {
      final unicode = '\u182A\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baInitStem);
      expect(result, expected);
    });

    test('baMedi', () async {
      final unicode = '\u180A\u182A\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baMediStem);
      expect(result, expected);
    });

    test('baMediFvs1', () async {
      final unicode = '\u180A\u182A\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baMediStem);
      expect(result, expected);
    });

    test('baMediFvs2', () async {
      final unicode = '\u180A\u182A\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baMediStem);
      expect(result, expected);
    });

    test('baMediFvs3', () async {
      final unicode = '\u180A\u182A\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baMediStem);
      expect(result, expected);
    });

    test('baMediFvs4', () async {
      final unicode = '\u180A\u182A\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baMediStem);
      expect(result, expected);
    });

    test('baFina', () async {
      final unicode = '\u180A\u182A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baFina);
      expect(result, expected);
    });

    test('baFinaFvs1', () async {
      final unicode = '\u180A\u182A\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baFinaFvs1);
      expect(result, expected);
    });

    test('baFinaFvs2', () async {
      final unicode = '\u180A\u182A\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baFina);
      expect(result, expected);
    });

    test('baFinaFvs3', () async {
      final unicode = '\u180A\u182A\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baFina);
      expect(result, expected);
    });

    test('baFinaFvs4', () async {
      final unicode = '\u180A\u182A\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.baFina);
      expect(result, expected);
    });
  });

  group('PA', () {
    test('paIsol', () async {
      final unicode = '\u182B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paIsol);
      expect(result, expected);
    });

    test('paIsolFvs1', () async {
      final unicode = '\u182B\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paIsol);
      expect(result, expected);
    });

    test('paIsolFvs2', () async {
      final unicode = '\u182B\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paIsol);
      expect(result, expected);
    });

    test('paIsolFvs3', () async {
      final unicode = '\u182B\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paIsol);
      expect(result, expected);
    });

    test('paIsolFvs4', () async {
      final unicode = '\u182B\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paIsol);
      expect(result, expected);
    });

    test('paInit', () async {
      final unicode = '\u182B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paInitStem);
      expect(result, expected);
    });

    test('paInitFvs1', () async {
      final unicode = '\u182B\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paInitStem);
      expect(result, expected);
    });

    test('paInitFvs2', () async {
      final unicode = '\u182B\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paInitStem);
      expect(result, expected);
    });

    test('paInitFvs3', () async {
      final unicode = '\u182B\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paInitStem);
      expect(result, expected);
    });

    test('paInitFvs3', () async {
      final unicode = '\u182B\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paInitStem);
      expect(result, expected);
    });

    test('paMedi', () async {
      final unicode = '\u180A\u182B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paMediStem);
      expect(result, expected);
    });

    test('paMediFvs1', () async {
      final unicode = '\u180A\u182B\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paMediStem);
      expect(result, expected);
    });

    test('paMediFvs2', () async {
      final unicode = '\u180A\u182B\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paMediStem);
      expect(result, expected);
    });

    test('paMediFvs3', () async {
      final unicode = '\u180A\u182B\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paMediStem);
      expect(result, expected);
    });

    test('paMediFvs4', () async {
      final unicode = '\u180A\u182B\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paMediStem);
      expect(result, expected);
    });

    test('paFina', () async {
      final unicode = '\u180A\u182B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paFina);
      expect(result, expected);
    });

    test('paFinaFvs1', () async {
      final unicode = '\u180A\u182B\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paFina);
      expect(result, expected);
    });

    test('paFinaFvs2', () async {
      final unicode = '\u180A\u182B\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paFina);
      expect(result, expected);
    });

    test('paFinaFvs3', () async {
      final unicode = '\u180A\u182B\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paFina);
      expect(result, expected);
    });

    test('paFinaFvs4', () async {
      final unicode = '\u180A\u182B\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.paFina);
      expect(result, expected);
    });
  });

  group('QA', () {
    test('qaIsol', () async {
      final unicode = '\u182C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaIsol);
      expect(result, expected);
    });

    test('qaIsolFvs1', () async {
      final unicode = '\u182C\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaIsolFvs1);
      expect(result, expected);
    });

    test('qaIsolFvs2', () async {
      final unicode = '\u182C\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaIsolFvs2);
      expect(result, expected);
    });

    test('qaIsolFvs3', () async {
      final unicode = '\u182C\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaIsol);
      expect(result, expected);
    });

    test('qaIsolFvs4', () async {
      final unicode = '\u182C\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaIsolFvs4);
      expect(result, expected);
    });

    test('qaInit', () async {
      final unicode = '\u182C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaInitStem);
      expect(result, expected);
    });

    test('qaInitFvs1', () async {
      final unicode = '\u182C\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaInitFvs1Stem);
      expect(result, expected);
    });

    test('qaInitFvs2', () async {
      final unicode = '\u182C\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaInitFvs2);
      expect(result, expected);
    });

    test('qaInitFvs3', () async {
      final unicode = '\u182C\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaInitStem);
      expect(result, expected);
    });

    test('qaInitFvs3', () async {
      final unicode = '\u182C\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaInitFvs4);
      expect(result, expected);
    });

    test('qaMedi', () async {
      final unicode = '\u180A\u182C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaMediStem);
      expect(result, expected);
    });

    test('qaMediFvs1', () async {
      final unicode = '\u180A\u182C\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaMediFvs1);
      expect(result, expected);
    });

    test('qaMediFvs2', () async {
      final unicode = '\u180A\u182C\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaMediFvs2);
      expect(result, expected);
    });

    test('qaMediFvs3', () async {
      final unicode = '\u180A\u182C\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaMediStem);
      expect(result, expected);
    });

    test('qaMediFvs4', () async {
      final unicode = '\u180A\u182C\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaMediFvs4);
      expect(result, expected);
    });

    test('qaFina', () async {
      final unicode = '\u180A\u182C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaFina);
      expect(result, expected);
    });

    test('qaFinaFvs1', () async {
      final unicode = '\u180A\u182C\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaFinaFvs1);
      expect(result, expected);
    });

    test('qaFinaFvs2', () async {
      final unicode = '\u180A\u182C\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaFina);
      expect(result, expected);
    });

    test('qaFinaFvs3', () async {
      final unicode = '\u180A\u182C\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaFina);
      expect(result, expected);
    });

    test('qaFinaFvs4', () async {
      final unicode = '\u180A\u182C\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.qaFina);
      expect(result, expected);
    });
  });

  group('GA', () {
    test('gaIsol', () async {
      final unicode = '\u182D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaIsol);
      expect(result, expected);
    });

    test('gaIsolFvs1', () async {
      final unicode = '\u182D\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaIsolFvs1);
      expect(result, expected);
    });

    test('gaIsolFvs2', () async {
      final unicode = '\u182D\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaIsolFvs2);
      expect(result, expected);
    });

    test('gaIsolFvs3', () async {
      final unicode = '\u182D\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaIsol);
      expect(result, expected);
    });

    test('gaIsolFvs4', () async {
      final unicode = '\u182D\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaIsolFvs4);
      expect(result, expected);
    });

    test('gaInit', () async {
      final unicode = '\u182D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaInitStem);
      expect(result, expected);
    });

    test('gaInitFvs1', () async {
      final unicode = '\u182D\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaInitFvs1Stem);
      expect(result, expected);
    });

    test('gaInitFvs2', () async {
      final unicode = '\u182D\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaInitFvs2);
      expect(result, expected);
    });

    test('gaInitFvs3', () async {
      final unicode = '\u182D\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaInitStem);
      expect(result, expected);
    });

    test('gaInitFvs3', () async {
      final unicode = '\u182D\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaInitFvs4);
      expect(result, expected);
    });

    test('gaMedi', () async {
      final unicode = '\u180A\u182D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaMediFvs2Stem);
      expect(result, expected);
    });

    test('gaMediFvs1', () async {
      final unicode = '\u180A\u182D\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaMediFvs1Stem);
      expect(result, expected);
    });

    test('gaMediFvs2', () async {
      final unicode = '\u180A\u182D\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaMediFvs2Stem);
      expect(result, expected);
    });

    test('gaMediFvs3', () async {
      final unicode = '\u180A\u182D\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaMedi);
      expect(result, expected);
    });

    test('gaMediFvs4', () async {
      final unicode = '\u180A\u182D\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaMediFvs4);
      expect(result, expected);
    });

    test('gaFina', () async {
      final unicode = '\u180A\u182D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaFina);
      expect(result, expected);
    });

    test('gaFinaFvs1', () async {
      final unicode = '\u180A\u182D\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaFinaFvs1);
      expect(result, expected);
    });

    test('gaFinaFvs2', () async {
      final unicode = '\u180A\u182D\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaFinaFvs2);
      expect(result, expected);
    });

    test('gaFinaFvs3', () async {
      final unicode = '\u180A\u182D\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaFinaFvs3);
      expect(result, expected);
    });

    test('gaFinaFvs4', () async {
      final unicode = '\u180A\u182D\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.gaFina);
      expect(result, expected);
    });
  });

  group('MA', () {
    test('maIsol', () async {
      final unicode = '\u182E';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maIsol);
      expect(result, expected);
    });

    test('maIsolFvs1', () async {
      final unicode = '\u182E\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maIsol);
      expect(result, expected);
    });

    test('maIsolFvs2', () async {
      final unicode = '\u182E\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maIsol);
      expect(result, expected);
    });

    test('maIsolFvs3', () async {
      final unicode = '\u182E\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maIsol);
      expect(result, expected);
    });

    test('maIsolFvs4', () async {
      final unicode = '\u182E\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maIsol);
      expect(result, expected);
    });

    test('maInit', () async {
      final unicode = '\u182E\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maInitStemLong);
      expect(result, expected);
    });

    test('maInitFvs1', () async {
      final unicode = '\u182E\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maInitStemLong);
      expect(result, expected);
    });

    test('maInitFvs2', () async {
      final unicode = '\u182E\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maInitStemLong);
      expect(result, expected);
    });

    test('maInitFvs3', () async {
      final unicode = '\u182E\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maInitStemLong);
      expect(result, expected);
    });

    test('maInitFvs3', () async {
      final unicode = '\u182E\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maInitStemLong);
      expect(result, expected);
    });

    test('maMedi', () async {
      final unicode = '\u180A\u182E\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maMediStemLong);
      expect(result, expected);
    });

    test('maMediFvs1', () async {
      final unicode = '\u180A\u182E\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maMediStemLong);
      expect(result, expected);
    });

    test('maMediFvs2', () async {
      final unicode = '\u180A\u182E\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maMediStemLong);
      expect(result, expected);
    });

    test('maMediFvs3', () async {
      final unicode = '\u180A\u182E\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maMediStemLong);
      expect(result, expected);
    });

    test('maMediFvs4', () async {
      final unicode = '\u180A\u182E\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maMediStemLong);
      expect(result, expected);
    });

    test('maFina', () async {
      final unicode = '\u180A\u182E';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maFina);
      expect(result, expected);
    });

    test('maFinaFvs1', () async {
      final unicode = '\u180A\u182E\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maFina);
      expect(result, expected);
    });

    test('maFinaFvs2', () async {
      final unicode = '\u180A\u182E\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maFina);
      expect(result, expected);
    });

    test('maFinaFvs3', () async {
      final unicode = '\u180A\u182E\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maFina);
      expect(result, expected);
    });

    test('maFinaFvs4', () async {
      final unicode = '\u180A\u182E\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.maFina);
      expect(result, expected);
    });
  });

  group('LA', () {
    test('laIsol', () async {
      final unicode = '\u182F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laIsol);
      expect(result, expected);
    });

    test('laIsolFvs1', () async {
      final unicode = '\u182F\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laIsol);
      expect(result, expected);
    });

    test('laIsolFvs2', () async {
      final unicode = '\u182F\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laIsol);
      expect(result, expected);
    });

    test('laIsolFvs3', () async {
      final unicode = '\u182F\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laIsol);
      expect(result, expected);
    });

    test('laIsolFvs4', () async {
      final unicode = '\u182F\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laIsol);
      expect(result, expected);
    });

    test('laInit', () async {
      final unicode = '\u182F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laInitStemLong);
      expect(result, expected);
    });

    test('laInitFvs1', () async {
      final unicode = '\u182F\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laInitStemLong);
      expect(result, expected);
    });

    test('laInitFvs2', () async {
      final unicode = '\u182F\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laInitStemLong);
      expect(result, expected);
    });

    test('laInitFvs3', () async {
      final unicode = '\u182F\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laInitStemLong);
      expect(result, expected);
    });

    test('laInitFvs3', () async {
      final unicode = '\u182F\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laInitStemLong);
      expect(result, expected);
    });

    test('laMedi', () async {
      final unicode = '\u180A\u182F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laMediStemLong);
      expect(result, expected);
    });

    test('laMediFvs1', () async {
      final unicode = '\u180A\u182F\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laMediStemLong);
      expect(result, expected);
    });

    test('laMediFvs2', () async {
      final unicode = '\u180A\u182F\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laMediStemLong);
      expect(result, expected);
    });

    test('laMediFvs3', () async {
      final unicode = '\u180A\u182F\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laMediStemLong);
      expect(result, expected);
    });

    test('laMediFvs4', () async {
      final unicode = '\u180A\u182F\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laMediStemLong);
      expect(result, expected);
    });

    test('laFina', () async {
      final unicode = '\u180A\u182F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laFina);
      expect(result, expected);
    });

    test('laFinaFvs1', () async {
      final unicode = '\u180A\u182F\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laFina);
      expect(result, expected);
    });

    test('laFinaFvs2', () async {
      final unicode = '\u180A\u182F\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laFina);
      expect(result, expected);
    });

    test('laFinaFvs3', () async {
      final unicode = '\u180A\u182F\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laFina);
      expect(result, expected);
    });

    test('laFinaFvs4', () async {
      final unicode = '\u180A\u182F\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.laFina);
      expect(result, expected);
    });
  });

  group('SA', () {
    test('saIsol', () async {
      final unicode = '\u1830';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saIsol);
      expect(result, expected);
    });

    test('saIsolFvs1', () async {
      final unicode = '\u1830\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saIsol);
      expect(result, expected);
    });

    test('saIsolFvs2', () async {
      final unicode = '\u1830\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saIsol);
      expect(result, expected);
    });

    test('saIsolFvs3', () async {
      final unicode = '\u1830\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saIsol);
      expect(result, expected);
    });

    test('saIsolFvs4', () async {
      final unicode = '\u1830\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saIsol);
      expect(result, expected);
    });

    test('saInit', () async {
      final unicode = '\u1830\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saInitStem);
      expect(result, expected);
    });

    test('saInitFvs1', () async {
      final unicode = '\u1830\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saInitStem);
      expect(result, expected);
    });

    test('saInitFvs2', () async {
      final unicode = '\u1830\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saInitStem);
      expect(result, expected);
    });

    test('saInitFvs3', () async {
      final unicode = '\u1830\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saInitStem);
      expect(result, expected);
    });

    test('saInitFvs3', () async {
      final unicode = '\u1830\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saInitStem);
      expect(result, expected);
    });

    test('saMedi', () async {
      final unicode = '\u180A\u1830\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saMediStem);
      expect(result, expected);
    });

    test('saMediFvs1', () async {
      final unicode = '\u180A\u1830\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saMediStem);
      expect(result, expected);
    });

    test('saMediFvs2', () async {
      final unicode = '\u180A\u1830\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saMediStem);
      expect(result, expected);
    });

    test('saMediFvs3', () async {
      final unicode = '\u180A\u1830\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saMediStem);
      expect(result, expected);
    });

    test('saMediFvs4', () async {
      final unicode = '\u180A\u1830\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saMediStem);
      expect(result, expected);
    });

    test('saFina', () async {
      final unicode = '\u180A\u1830';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saFina);
      expect(result, expected);
    });

    test('saFinaFvs1', () async {
      final unicode = '\u180A\u1830\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saFinaFvs1);
      expect(result, expected);
    });

    test('saFinaFvs2', () async {
      final unicode = '\u180A\u1830\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saFina);
      expect(result, expected);
    });

    test('saFinaFvs3', () async {
      final unicode = '\u180A\u1830\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saFina);
      expect(result, expected);
    });

    test('saFinaFvs4', () async {
      final unicode = '\u180A\u1830\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.saFina);
      expect(result, expected);
    });
  });

  group('SHA', () {
    test('shaIsol', () async {
      final unicode = '\u1831';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaIsol);
      expect(result, expected);
    });

    test('shaIsolFvs1', () async {
      final unicode = '\u1831\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaIsolFvs1);
      expect(result, expected);
    });

    test('shaIsolFvs2', () async {
      final unicode = '\u1831\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaIsol);
      expect(result, expected);
    });

    test('shaIsolFvs3', () async {
      final unicode = '\u1831\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaIsol);
      expect(result, expected);
    });

    test('shaIsolFvs4', () async {
      final unicode = '\u1831\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaIsol);
      expect(result, expected);
    });

    test('shaInit', () async {
      final unicode = '\u1831\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaInitStem);
      expect(result, expected);
    });

    test('shaInitFvs1', () async {
      final unicode = '\u1831\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaInitFvs1Stem);
      expect(result, expected);
    });

    test('shaInitFvs2', () async {
      final unicode = '\u1831\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaInitStem);
      expect(result, expected);
    });

    test('shaInitFvs3', () async {
      final unicode = '\u1831\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaInitStem);
      expect(result, expected);
    });

    test('shaInitFvs3', () async {
      final unicode = '\u1831\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaInitStem);
      expect(result, expected);
    });

    test('shaMedi', () async {
      final unicode = '\u180A\u1831\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaMediStem);
      expect(result, expected);
    });

    test('shaMediFvs1', () async {
      final unicode = '\u180A\u1831\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaMediFvs1Stem);
      expect(result, expected);
    });

    test('shaMediFvs2', () async {
      final unicode = '\u180A\u1831\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaMediStem);
      expect(result, expected);
    });

    test('shaMediFvs3', () async {
      final unicode = '\u180A\u1831\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaMediStem);
      expect(result, expected);
    });

    test('shaMediFvs4', () async {
      final unicode = '\u180A\u1831\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaMediStem);
      expect(result, expected);
    });

    test('shaFina', () async {
      final unicode = '\u180A\u1831';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaFina);
      expect(result, expected);
    });

    test('shaFinaFvs1', () async {
      final unicode = '\u180A\u1831\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaFina);
      expect(result, expected);
    });

    test('shaFinaFvs2', () async {
      final unicode = '\u180A\u1831\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaFina);
      expect(result, expected);
    });

    test('shaFinaFvs3', () async {
      final unicode = '\u180A\u1831\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaFina);
      expect(result, expected);
    });

    test('shaFinaFvs4', () async {
      final unicode = '\u180A\u1831\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.shaFina);
      expect(result, expected);
    });
  });

  group('TA', () {
    test('taIsol', () async {
      final unicode = '\u1832';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taIsol);
      expect(result, expected);
    });

    test('taIsolFvs1', () async {
      final unicode = '\u1832\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taIsol);
      expect(result, expected);
    });

    test('taIsolFvs2', () async {
      final unicode = '\u1832\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taIsol);
      expect(result, expected);
    });

    test('taIsolFvs3', () async {
      final unicode = '\u1832\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taIsol);
      expect(result, expected);
    });

    test('taIsolFvs4', () async {
      final unicode = '\u1832\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taIsol);
      expect(result, expected);
    });

    test('taInit', () async {
      final unicode = '\u1832\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taInitStem);
      expect(result, expected);
    });

    test('taInitFvs1', () async {
      final unicode = '\u1832\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taInitStem);
      expect(result, expected);
    });

    test('taInitFvs2', () async {
      final unicode = '\u1832\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taInitStem);
      expect(result, expected);
    });

    test('taInitFvs3', () async {
      final unicode = '\u1832\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taInitStem);
      expect(result, expected);
    });

    test('taInitFvs3', () async {
      final unicode = '\u1832\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taInitStem);
      expect(result, expected);
    });

    test('taMedi', () async {
      final unicode = '\u180A\u1832\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taMedi);
      expect(result, expected);
    });

    test('taMediFvs1', () async {
      final unicode = '\u180A\u1832\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taMediFvs1Stem);
      expect(result, expected);
    });

    test('taMediFvs2', () async {
      final unicode = '\u180A\u1832\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taMedi);
      expect(result, expected);
    });

    test('taMediFvs3', () async {
      final unicode = '\u180A\u1832\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taMedi);
      expect(result, expected);
    });

    test('taMediFvs4', () async {
      final unicode = '\u180A\u1832\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taMedi);
      expect(result, expected);
    });

    test('taFina', () async {
      final unicode = '\u180A\u1832';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taFina);
      expect(result, expected);
    });

    test('taFinaFvs1', () async {
      final unicode = '\u180A\u1832\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taFina);
      expect(result, expected);
    });

    test('taFinaFvs2', () async {
      final unicode = '\u180A\u1832\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taFina);
      expect(result, expected);
    });

    test('taFinaFvs3', () async {
      final unicode = '\u180A\u1832\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taFina);
      expect(result, expected);
    });

    test('taFinaFvs4', () async {
      final unicode = '\u180A\u1832\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.taFina);
      expect(result, expected);
    });
  });

  group('DA', () {
    test('daIsol', () async {
      final unicode = '\u1833';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daIsol);
      expect(result, expected);
    });

    test('daIsolFvs1', () async {
      final unicode = '\u1833\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daIsolFvs1);
      expect(result, expected);
    });

    test('daIsolFvs2', () async {
      final unicode = '\u1833\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daIsol);
      expect(result, expected);
    });

    test('daIsolFvs3', () async {
      final unicode = '\u1833\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daIsol);
      expect(result, expected);
    });

    test('daIsolFvs4', () async {
      final unicode = '\u1833\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daIsol);
      expect(result, expected);
    });

    test('daInit', () async {
      final unicode = '\u1833\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daInitStem);
      expect(result, expected);
    });

    test('daInitFvs1', () async {
      final unicode = '\u1833\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daInitFvs1);
      expect(result, expected);
    });

    test('daInitFvs2', () async {
      final unicode = '\u1833\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daInitStem);
      expect(result, expected);
    });

    test('daInitFvs3', () async {
      final unicode = '\u1833\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daInitStem);
      expect(result, expected);
    });

    test('daInitFvs3', () async {
      final unicode = '\u1833\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daInitStem);
      expect(result, expected);
    });

    test('daMedi', () async {
      final unicode = '\u180A\u1833\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daMedi);
      expect(result, expected);
    });

    test('daMediFvs1', () async {
      final unicode = '\u180A\u1833\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daMediFvs1);
      expect(result, expected);
    });

    test('daMediFvs2', () async {
      final unicode = '\u180A\u1833\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daMedi);
      expect(result, expected);
    });

    test('daMediFvs3', () async {
      final unicode = '\u180A\u1833\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daMedi);
      expect(result, expected);
    });

    test('daMediFvs4', () async {
      final unicode = '\u180A\u1833\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daMedi);
      expect(result, expected);
    });

    test('daFina', () async {
      final unicode = '\u180A\u1833';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daFina);
      expect(result, expected);
    });

    test('daFinaFvs1', () async {
      final unicode = '\u180A\u1833\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daFinaFvs1);
      expect(result, expected);
    });

    test('daFinaFvs2', () async {
      final unicode = '\u180A\u1833\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daFina);
      expect(result, expected);
    });

    test('daFinaFvs3', () async {
      final unicode = '\u180A\u1833\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daFina);
      expect(result, expected);
    });

    test('daFinaFvs4', () async {
      final unicode = '\u180A\u1833\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.daFina);
      expect(result, expected);
    });
  });

  group('CHA', () {
    test('chaIsol', () async {
      final unicode = '\u1834';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaIsol);
      expect(result, expected);
    });

    test('chaIsolFvs1', () async {
      final unicode = '\u1834\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaIsol);
      expect(result, expected);
    });

    test('chaIsolFvs2', () async {
      final unicode = '\u1834\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaIsol);
      expect(result, expected);
    });

    test('chaIsolFvs3', () async {
      final unicode = '\u1834\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaIsol);
      expect(result, expected);
    });

    test('chaIsolFvs4', () async {
      final unicode = '\u1834\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaIsol);
      expect(result, expected);
    });

    test('chaInit', () async {
      final unicode = '\u1834\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaInit);
      expect(result, expected);
    });

    test('chaInitFvs1', () async {
      final unicode = '\u1834\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaInit);
      expect(result, expected);
    });

    test('chaInitFvs2', () async {
      final unicode = '\u1834\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaInit);
      expect(result, expected);
    });

    test('chaInitFvs3', () async {
      final unicode = '\u1834\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaInit);
      expect(result, expected);
    });

    test('chaInitFvs3', () async {
      final unicode = '\u1834\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaInit);
      expect(result, expected);
    });

    test('chaMedi', () async {
      final unicode = '\u180A\u1834\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaMedi);
      expect(result, expected);
    });

    test('chaMediFvs1', () async {
      final unicode = '\u180A\u1834\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaMedi);
      expect(result, expected);
    });

    test('chaMediFvs2', () async {
      final unicode = '\u180A\u1834\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaMedi);
      expect(result, expected);
    });

    test('chaMediFvs3', () async {
      final unicode = '\u180A\u1834\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaMedi);
      expect(result, expected);
    });

    test('chaMediFvs4', () async {
      final unicode = '\u180A\u1834\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaMedi);
      expect(result, expected);
    });

    test('chaFina', () async {
      final unicode = '\u180A\u1834';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaFina);
      expect(result, expected);
    });

    test('chaFinaFvs1', () async {
      final unicode = '\u180A\u1834\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaFina);
      expect(result, expected);
    });

    test('chaFinaFvs2', () async {
      final unicode = '\u180A\u1834\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaFina);
      expect(result, expected);
    });

    test('chaFinaFvs3', () async {
      final unicode = '\u180A\u1834\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaFina);
      expect(result, expected);
    });

    test('chaFinaFvs4', () async {
      final unicode = '\u180A\u1834\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chaFina);
      expect(result, expected);
    });
  });

  group('JA', () {
    test('jaIsol', () async {
      final unicode = '\u1835';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaIsol);
      expect(result, expected);
    });

    test('jaIsolFvs1', () async {
      final unicode = '\u1835\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaIsolFvs1);
      expect(result, expected);
    });

    test('jaIsolFvs2', () async {
      final unicode = '\u1835\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaIsol);
      expect(result, expected);
    });

    test('jaIsolFvs3', () async {
      final unicode = '\u1835\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaIsol);
      expect(result, expected);
    });

    test('jaIsolFvs4', () async {
      final unicode = '\u1835\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaIsol);
      expect(result, expected);
    });

    test('jaInit', () async {
      final unicode = '\u1835\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaInitStem);
      expect(result, expected);
    });

    test('jaInitFvs1', () async {
      final unicode = '\u1835\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaInitStem);
      expect(result, expected);
    });

    test('jaInitFvs2', () async {
      final unicode = '\u1835\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaInitStem);
      expect(result, expected);
    });

    test('jaInitFvs3', () async {
      final unicode = '\u1835\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaInitStem);
      expect(result, expected);
    });

    test('jaInitFvs3', () async {
      final unicode = '\u1835\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaInitStem);
      expect(result, expected);
    });

    test('jaMedi', () async {
      final unicode = '\u180A\u1835\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaMedi);
      expect(result, expected);
    });

    test('jaMediFvs1', () async {
      final unicode = '\u180A\u1835\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaMedi);
      expect(result, expected);
    });

    test('jaMediFvs2', () async {
      final unicode = '\u180A\u1835\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaMedi);
      expect(result, expected);
    });

    test('jaMediFvs3', () async {
      final unicode = '\u180A\u1835\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaMedi);
      expect(result, expected);
    });

    test('jaMediFvs4', () async {
      final unicode = '\u180A\u1835\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaMedi);
      expect(result, expected);
    });

    test('jaFina', () async {
      final unicode = '\u180A\u1835';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaFina);
      expect(result, expected);
    });

    test('jaFinaFvs1', () async {
      final unicode = '\u180A\u1835\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaFinaFvs1);
      expect(result, expected);
    });

    test('jaFinaFvs2', () async {
      final unicode = '\u180A\u1835\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaFina);
      expect(result, expected);
    });

    test('jaFinaFvs3', () async {
      final unicode = '\u180A\u1835\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaFina);
      expect(result, expected);
    });

    test('jaFinaFvs4', () async {
      final unicode = '\u180A\u1835\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.jaFina);
      expect(result, expected);
    });
  });

  group('YA', () {
    test('yaIsol', () async {
      final unicode = '\u1836';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaIsol);
      expect(result, expected);
    });

    test('yaIsolFvs1', () async {
      final unicode = '\u1836\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaIsolFvs1);
      expect(result, expected);
    });

    test('yaIsolFvs2', () async {
      final unicode = '\u1836\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaIsol);
      expect(result, expected);
    });

    test('yaIsolFvs3', () async {
      final unicode = '\u1836\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaIsol);
      expect(result, expected);
    });

    test('yaIsolFvs4', () async {
      final unicode = '\u1836\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaIsol);
      expect(result, expected);
    });

    test('yaInit', () async {
      final unicode = '\u1836\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaInit);
      expect(result, expected);
    });

    test('yaInitFvs1', () async {
      final unicode = '\u1836\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaInitFvs1);
      expect(result, expected);
    });

    test('yaInitFvs2', () async {
      final unicode = '\u1836\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaInit);
      expect(result, expected);
    });

    test('yaInitFvs3', () async {
      final unicode = '\u1836\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaInit);
      expect(result, expected);
    });

    test('yaInitFvs3', () async {
      final unicode = '\u1836\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaInit);
      expect(result, expected);
    });

    test('yaMedi', () async {
      final unicode = '\u180A\u1836\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaMedi);
      expect(result, expected);
    });

    test('yaMediFvs1', () async {
      final unicode = '\u180A\u1836\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaMediFvs1);
      expect(result, expected);
    });

    test('yaMediFvs2', () async {
      final unicode = '\u180A\u1836\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaMediFvs2);
      expect(result, expected);
    });

    test('yaMediFvs3', () async {
      final unicode = '\u180A\u1836\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaMedi);
      expect(result, expected);
    });

    test('yaMediFvs4', () async {
      final unicode = '\u180A\u1836\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaMedi);
      expect(result, expected);
    });

    test('yaFina', () async {
      final unicode = '\u180A\u1836';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaFina);
      expect(result, expected);
    });

    test('yaFinaFvs1', () async {
      final unicode = '\u180A\u1836\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaFina);
      expect(result, expected);
    });

    test('yaFinaFvs2', () async {
      final unicode = '\u180A\u1836\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaFina);
      expect(result, expected);
    });

    test('yaFinaFvs3', () async {
      final unicode = '\u180A\u1836\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaFina);
      expect(result, expected);
    });

    test('yaFinaFvs4', () async {
      final unicode = '\u180A\u1836\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.yaFina);
      expect(result, expected);
    });
  });

  group('RA', () {
    test('raIsol', () async {
      final unicode = '\u1837';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raIsol);
      expect(result, expected);
    });

    test('raIsolFvs1', () async {
      final unicode = '\u1837\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raIsol);
      expect(result, expected);
    });

    test('raIsolFvs2', () async {
      final unicode = '\u1837\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raIsol);
      expect(result, expected);
    });

    test('raIsolFvs3', () async {
      final unicode = '\u1837\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raIsol);
      expect(result, expected);
    });

    test('raIsolFvs4', () async {
      final unicode = '\u1837\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raIsol);
      expect(result, expected);
    });

    test('raInit', () async {
      final unicode = '\u1837\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raInitStem);
      expect(result, expected);
    });

    test('raInitFvs1', () async {
      final unicode = '\u1837\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raInitStem);
      expect(result, expected);
    });

    test('raInitFvs2', () async {
      final unicode = '\u1837\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raInitStem);
      expect(result, expected);
    });

    test('raInitFvs3', () async {
      final unicode = '\u1837\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raInitStem);
      expect(result, expected);
    });

    test('raInitFvs3', () async {
      final unicode = '\u1837\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raInitStem);
      expect(result, expected);
    });

    test('raMedi', () async {
      final unicode = '\u180A\u1837\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raMediStem);
      expect(result, expected);
    });

    test('raMediFvs1', () async {
      final unicode = '\u180A\u1837\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raMediStem);
      expect(result, expected);
    });

    test('raMediFvs2', () async {
      final unicode = '\u180A\u1837\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raMediStem);
      expect(result, expected);
    });

    test('raMediFvs3', () async {
      final unicode = '\u180A\u1837\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raMediStem);
      expect(result, expected);
    });

    test('raMediFvs4', () async {
      final unicode = '\u180A\u1837\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raMediStem);
      expect(result, expected);
    });

    test('raFina', () async {
      final unicode = '\u180A\u1837';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raFina);
      expect(result, expected);
    });

    test('raFinaFvs1', () async {
      final unicode = '\u180A\u1837\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raFina);
      expect(result, expected);
    });

    test('raFinaFvs2', () async {
      final unicode = '\u180A\u1837\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raFina);
      expect(result, expected);
    });

    test('raFinaFvs3', () async {
      final unicode = '\u180A\u1837\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raFina);
      expect(result, expected);
    });

    test('raFinaFvs4', () async {
      final unicode = '\u180A\u1837\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.raFina);
      expect(result, expected);
    });
  });

  group('WA', () {
    test('waIsol', () async {
      final unicode = '\u1838';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waIsol);
      expect(result, expected);
    });

    test('waIsolFvs1', () async {
      final unicode = '\u1838\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waIsol);
      expect(result, expected);
    });

    test('waIsolFvs2', () async {
      final unicode = '\u1838\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waIsol);
      expect(result, expected);
    });

    test('waIsolFvs3', () async {
      final unicode = '\u1838\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waIsol);
      expect(result, expected);
    });

    test('waIsolFvs4', () async {
      final unicode = '\u1838\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waIsol);
      expect(result, expected);
    });

    test('waInit', () async {
      final unicode = '\u1838\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waInit);
      expect(result, expected);
    });

    test('waInitFvs1', () async {
      final unicode = '\u1838\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waInit);
      expect(result, expected);
    });

    test('waInitFvs2', () async {
      final unicode = '\u1838\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waInit);
      expect(result, expected);
    });

    test('waInitFvs3', () async {
      final unicode = '\u1838\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waInit);
      expect(result, expected);
    });

    test('waInitFvs3', () async {
      final unicode = '\u1838\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waInit);
      expect(result, expected);
    });

    test('waMedi', () async {
      final unicode = '\u180A\u1838\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waMedi);
      expect(result, expected);
    });

    test('waMediFvs1', () async {
      final unicode = '\u180A\u1838\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waMediFvs1);
      expect(result, expected);
    });

    test('waMediFvs2', () async {
      final unicode = '\u180A\u1838\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waMedi);
      expect(result, expected);
    });

    test('waMediFvs3', () async {
      final unicode = '\u180A\u1838\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waMedi);
      expect(result, expected);
    });

    test('waMediFvs4', () async {
      final unicode = '\u180A\u1838\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waMedi);
      expect(result, expected);
    });

    test('waFina', () async {
      final unicode = '\u180A\u1838';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waFina);
      expect(result, expected);
    });

    test('waFinaFvs1', () async {
      final unicode = '\u180A\u1838\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waFinaFvs1);
      expect(result, expected);
    });

    test('waFinaFvs2', () async {
      final unicode = '\u180A\u1838\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waFina);
      expect(result, expected);
    });

    test('waFinaFvs3', () async {
      final unicode = '\u180A\u1838\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waFina);
      expect(result, expected);
    });

    test('waFinaFvs4', () async {
      final unicode = '\u180A\u1838\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.waFina);
      expect(result, expected);
    });
  });

  group('FA', () {
    test('faIsol', () async {
      final unicode = '\u1839';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faIsol);
      expect(result, expected);
    });

    test('faIsolFvs1', () async {
      final unicode = '\u1839\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faIsol);
      expect(result, expected);
    });

    test('faIsolFvs2', () async {
      final unicode = '\u1839\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faIsol);
      expect(result, expected);
    });

    test('faIsolFvs3', () async {
      final unicode = '\u1839\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faIsol);
      expect(result, expected);
    });

    test('faIsolFvs4', () async {
      final unicode = '\u1839\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faIsol);
      expect(result, expected);
    });

    test('faInit', () async {
      final unicode = '\u1839\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faInitStem);
      expect(result, expected);
    });

    test('faInitFvs1', () async {
      final unicode = '\u1839\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faInitStem);
      expect(result, expected);
    });

    test('faInitFvs2', () async {
      final unicode = '\u1839\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faInitStem);
      expect(result, expected);
    });

    test('faInitFvs3', () async {
      final unicode = '\u1839\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faInitStem);
      expect(result, expected);
    });

    test('faInitFvs3', () async {
      final unicode = '\u1839\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faInitStem);
      expect(result, expected);
    });

    test('faMedi', () async {
      final unicode = '\u180A\u1839\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faMediStem);
      expect(result, expected);
    });

    test('faMediFvs1', () async {
      final unicode = '\u180A\u1839\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faMediStem);
      expect(result, expected);
    });

    test('faMediFvs2', () async {
      final unicode = '\u180A\u1839\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faMediStem);
      expect(result, expected);
    });

    test('faMediFvs3', () async {
      final unicode = '\u180A\u1839\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faMediStem);
      expect(result, expected);
    });

    test('faMediFvs4', () async {
      final unicode = '\u180A\u1839\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faMediStem);
      expect(result, expected);
    });

    test('faFina', () async {
      final unicode = '\u180A\u1839';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faFina);
      expect(result, expected);
    });

    test('faFinaFvs1', () async {
      final unicode = '\u180A\u1839\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faFina);
      expect(result, expected);
    });

    test('faFinaFvs2', () async {
      final unicode = '\u180A\u1839\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faFina);
      expect(result, expected);
    });

    test('faFinaFvs3', () async {
      final unicode = '\u180A\u1839\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faFina);
      expect(result, expected);
    });

    test('faFinaFvs4', () async {
      final unicode = '\u180A\u1839\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.faFina);
      expect(result, expected);
    });
  });

  group('KA', () {
    test('kaIsol', () async {
      final unicode = '\u183A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaIsol);
      expect(result, expected);
    });

    test('kaIsolFvs1', () async {
      final unicode = '\u183A\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaIsol);
      expect(result, expected);
    });

    test('kaIsolFvs2', () async {
      final unicode = '\u183A\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaIsol);
      expect(result, expected);
    });

    test('kaIsolFvs3', () async {
      final unicode = '\u183A\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaIsol);
      expect(result, expected);
    });

    test('kaIsolFvs4', () async {
      final unicode = '\u183A\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaIsol);
      expect(result, expected);
    });

    test('kaInit', () async {
      final unicode = '\u183A\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaInit);
      expect(result, expected);
    });

    test('kaInitFvs1', () async {
      final unicode = '\u183A\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaInit);
      expect(result, expected);
    });

    test('kaInitFvs2', () async {
      final unicode = '\u183A\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaInit);
      expect(result, expected);
    });

    test('kaInitFvs3', () async {
      final unicode = '\u183A\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaInit);
      expect(result, expected);
    });

    test('kaInitFvs3', () async {
      final unicode = '\u183A\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaInit);
      expect(result, expected);
    });

    test('kaMedi', () async {
      final unicode = '\u180A\u183A\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaMediStem);
      expect(result, expected);
    });

    test('kaMediFvs1', () async {
      final unicode = '\u180A\u183A\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaMediStem);
      expect(result, expected);
    });

    test('kaMediFvs2', () async {
      final unicode = '\u180A\u183A\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaMediStem);
      expect(result, expected);
    });

    test('kaMediFvs3', () async {
      final unicode = '\u180A\u183A\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaMediStem);
      expect(result, expected);
    });

    test('kaMediFvs4', () async {
      final unicode = '\u180A\u183A\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaMediStem);
      expect(result, expected);
    });

    test('kaFina', () async {
      final unicode = '\u180A\u183A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaFina);
      expect(result, expected);
    });

    test('kaFinaFvs1', () async {
      final unicode = '\u180A\u183A\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaFina);
      expect(result, expected);
    });

    test('kaFinaFvs2', () async {
      final unicode = '\u180A\u183A\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaFina);
      expect(result, expected);
    });

    test('kaFinaFvs3', () async {
      final unicode = '\u180A\u183A\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaFina);
      expect(result, expected);
    });

    test('kaFinaFvs4', () async {
      final unicode = '\u180A\u183A\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.kaFina);
      expect(result, expected);
    });
  });

  group('KHA', () {
    test('khaIsol', () async {
      final unicode = '\u183B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaIsol);
      expect(result, expected);
    });

    test('khaIsolFvs1', () async {
      final unicode = '\u183B\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaIsol);
      expect(result, expected);
    });

    test('khaIsolFvs2', () async {
      final unicode = '\u183B\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaIsol);
      expect(result, expected);
    });

    test('khaIsolFvs3', () async {
      final unicode = '\u183B\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaIsol);
      expect(result, expected);
    });

    test('khaIsolFvs4', () async {
      final unicode = '\u183B\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaIsol);
      expect(result, expected);
    });

    test('khaInit', () async {
      final unicode = '\u183B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.initKha);
      expect(result, expected);
    });

    test('khaInitFvs1', () async {
      final unicode = '\u183B\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.initKha);
      expect(result, expected);
    });

    test('khaInitFvs2', () async {
      final unicode = '\u183B\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.initKha);
      expect(result, expected);
    });

    test('khaInitFvs3', () async {
      final unicode = '\u183B\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.initKha);
      expect(result, expected);
    });

    test('khaInitFvs3', () async {
      final unicode = '\u183B\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.initKha);
      expect(result, expected);
    });

    test('khaMedi', () async {
      final unicode = '\u180A\u183B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaMediStem);
      expect(result, expected);
    });

    test('khaMediFvs1', () async {
      final unicode = '\u180A\u183B\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaMediStem);
      expect(result, expected);
    });

    test('khaMediFvs2', () async {
      final unicode = '\u180A\u183B\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaMediStem);
      expect(result, expected);
    });

    test('khaMediFvs3', () async {
      final unicode = '\u180A\u183B\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaMediStem);
      expect(result, expected);
    });

    test('khaMediFvs4', () async {
      final unicode = '\u180A\u183B\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaMediStem);
      expect(result, expected);
    });

    test('khaFina', () async {
      final unicode = '\u180A\u183B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaFina);
      expect(result, expected);
    });

    test('khaFinaFvs1', () async {
      final unicode = '\u180A\u183B\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaFina);
      expect(result, expected);
    });

    test('khaFinaFvs2', () async {
      final unicode = '\u180A\u183B\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaFina);
      expect(result, expected);
    });

    test('khaFinaFvs3', () async {
      final unicode = '\u180A\u183B\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaFina);
      expect(result, expected);
    });

    test('khaFinaFvs4', () async {
      final unicode = '\u180A\u183B\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.khaFina);
      expect(result, expected);
    });
  });

  group('TSA', () {
    test('tsaIsol', () async {
      final unicode = '\u183C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaIsol);
      expect(result, expected);
    });

    test('tsaIsolFvs1', () async {
      final unicode = '\u183C\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaIsol);
      expect(result, expected);
    });

    test('tsaIsolFvs2', () async {
      final unicode = '\u183C\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaIsol);
      expect(result, expected);
    });

    test('tsaIsolFvs3', () async {
      final unicode = '\u183C\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaIsol);
      expect(result, expected);
    });

    test('tsaIsolFvs4', () async {
      final unicode = '\u183C\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaIsol);
      expect(result, expected);
    });

    test('tsaInit', () async {
      final unicode = '\u183C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaInit);
      expect(result, expected);
    });

    test('tsaInitFvs1', () async {
      final unicode = '\u183C\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaInit);
      expect(result, expected);
    });

    test('tsaInitFvs2', () async {
      final unicode = '\u183C\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaInit);
      expect(result, expected);
    });

    test('tsaInitFvs3', () async {
      final unicode = '\u183C\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaInit);
      expect(result, expected);
    });

    test('tsaInitFvs3', () async {
      final unicode = '\u183C\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaInit);
      expect(result, expected);
    });

    test('tsaMedi', () async {
      final unicode = '\u180A\u183C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaMedi);
      expect(result, expected);
    });

    test('tsaMediFvs1', () async {
      final unicode = '\u180A\u183C\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaMedi);
      expect(result, expected);
    });

    test('tsaMediFvs2', () async {
      final unicode = '\u180A\u183C\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaMedi);
      expect(result, expected);
    });

    test('tsaMediFvs3', () async {
      final unicode = '\u180A\u183C\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaMedi);
      expect(result, expected);
    });

    test('tsaMediFvs4', () async {
      final unicode = '\u180A\u183C\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaMedi);
      expect(result, expected);
    });

    test('tsaFina', () async {
      final unicode = '\u180A\u183C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaFina);
      expect(result, expected);
    });

    test('tsaFinaFvs1', () async {
      final unicode = '\u180A\u183C\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaFina);
      expect(result, expected);
    });

    test('tsaFinaFvs2', () async {
      final unicode = '\u180A\u183C\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaFina);
      expect(result, expected);
    });

    test('tsaFinaFvs3', () async {
      final unicode = '\u180A\u183C\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaFina);
      expect(result, expected);
    });

    test('tsaFinaFvs4', () async {
      final unicode = '\u180A\u183C\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.tsaFina);
      expect(result, expected);
    });
  });

  group('ZA', () {
    test('zaIsol', () async {
      final unicode = '\u183D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaIsol);
      expect(result, expected);
    });

    test('zaIsolFvs1', () async {
      final unicode = '\u183D\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaIsol);
      expect(result, expected);
    });

    test('zaIsolFvs2', () async {
      final unicode = '\u183D\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaIsol);
      expect(result, expected);
    });

    test('zaIsolFvs3', () async {
      final unicode = '\u183D\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaIsol);
      expect(result, expected);
    });

    test('zaIsolFvs4', () async {
      final unicode = '\u183D\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaIsol);
      expect(result, expected);
    });

    test('zaInit', () async {
      final unicode = '\u183D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaInit);
      expect(result, expected);
    });

    test('zaInitFvs1', () async {
      final unicode = '\u183D\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaInit);
      expect(result, expected);
    });

    test('zaInitFvs2', () async {
      final unicode = '\u183D\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaInit);
      expect(result, expected);
    });

    test('zaInitFvs3', () async {
      final unicode = '\u183D\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaInit);
      expect(result, expected);
    });

    test('zaInitFvs3', () async {
      final unicode = '\u183D\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaInit);
      expect(result, expected);
    });

    test('zaMedi', () async {
      final unicode = '\u180A\u183D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaMedi);
      expect(result, expected);
    });

    test('zaMediFvs1', () async {
      final unicode = '\u180A\u183D\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaMedi);
      expect(result, expected);
    });

    test('zaMediFvs2', () async {
      final unicode = '\u180A\u183D\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaMedi);
      expect(result, expected);
    });

    test('zaMediFvs3', () async {
      final unicode = '\u180A\u183D\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaMedi);
      expect(result, expected);
    });

    test('zaMediFvs4', () async {
      final unicode = '\u180A\u183D\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaMedi);
      expect(result, expected);
    });

    test('zaFina', () async {
      final unicode = '\u180A\u183D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaFina);
      expect(result, expected);
    });

    test('zaFinaFvs1', () async {
      final unicode = '\u180A\u183D\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaFina);
      expect(result, expected);
    });

    test('zaFinaFvs2', () async {
      final unicode = '\u180A\u183D\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaFina);
      expect(result, expected);
    });

    test('zaFinaFvs3', () async {
      final unicode = '\u180A\u183D\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaFina);
      expect(result, expected);
    });

    test('zaFinaFvs4', () async {
      final unicode = '\u180A\u183D\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zaFina);
      expect(result, expected);
    });
  });

  group('HAA', () {
    test('haaIsol', () async {
      final unicode = '\u183E';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaIsol);
      expect(result, expected);
    });

    test('haaIsolFvs1', () async {
      final unicode = '\u183E\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaIsol);
      expect(result, expected);
    });

    test('haaIsolFvs2', () async {
      final unicode = '\u183E\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaIsol);
      expect(result, expected);
    });

    test('haaIsolFvs3', () async {
      final unicode = '\u183E\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaIsol);
      expect(result, expected);
    });

    test('haaIsolFvs4', () async {
      final unicode = '\u183E\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaIsol);
      expect(result, expected);
    });

    test('haaInit', () async {
      final unicode = '\u183E\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaInit);
      expect(result, expected);
    });

    test('haaInitFvs1', () async {
      final unicode = '\u183E\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaInit);
      expect(result, expected);
    });

    test('haaInitFvs2', () async {
      final unicode = '\u183E\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaInit);
      expect(result, expected);
    });

    test('haaInitFvs3', () async {
      final unicode = '\u183E\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaInit);
      expect(result, expected);
    });

    test('haaInitFvs3', () async {
      final unicode = '\u183E\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaInit);
      expect(result, expected);
    });

    test('haaMedi', () async {
      final unicode = '\u180A\u183E\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaMedi);
      expect(result, expected);
    });

    test('haaMediFvs1', () async {
      final unicode = '\u180A\u183E\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaMedi);
      expect(result, expected);
    });

    test('haaMediFvs2', () async {
      final unicode = '\u180A\u183E\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaMedi);
      expect(result, expected);
    });

    test('haaMediFvs3', () async {
      final unicode = '\u180A\u183E\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaMedi);
      expect(result, expected);
    });

    test('haaMediFvs4', () async {
      final unicode = '\u180A\u183E\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaMedi);
      expect(result, expected);
    });

    test('haaFina', () async {
      final unicode = '\u180A\u183E';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaFina);
      expect(result, expected);
    });

    test('haaFinaFvs1', () async {
      final unicode = '\u180A\u183E\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaFina);
      expect(result, expected);
    });

    test('haaFinaFvs2', () async {
      final unicode = '\u180A\u183E\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaFina);
      expect(result, expected);
    });

    test('haaFinaFvs3', () async {
      final unicode = '\u180A\u183E\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaFina);
      expect(result, expected);
    });

    test('haaFinaFvs4', () async {
      final unicode = '\u180A\u183E\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.haaFina);
      expect(result, expected);
    });
  });

  group('ZRA', () {
    test('zraIsol', () async {
      final unicode = '\u183F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraIsol);
      expect(result, expected);
    });

    test('zraIsolFvs1', () async {
      final unicode = '\u183F\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraIsol);
      expect(result, expected);
    });

    test('zraIsolFvs2', () async {
      final unicode = '\u183F\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraIsol);
      expect(result, expected);
    });

    test('zraIsolFvs3', () async {
      final unicode = '\u183F\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraIsol);
      expect(result, expected);
    });

    test('zraIsolFvs4', () async {
      final unicode = '\u183F\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraIsol);
      expect(result, expected);
    });

    test('zraInit', () async {
      final unicode = '\u183F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraInit);
      expect(result, expected);
    });

    test('zraInitFvs1', () async {
      final unicode = '\u183F\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraInit);
      expect(result, expected);
    });

    test('zraInitFvs2', () async {
      final unicode = '\u183F\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraInit);
      expect(result, expected);
    });

    test('zraInitFvs3', () async {
      final unicode = '\u183F\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraInit);
      expect(result, expected);
    });

    test('zraInitFvs3', () async {
      final unicode = '\u183F\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraInit);
      expect(result, expected);
    });

    test('zraMedi', () async {
      final unicode = '\u180A\u183F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraMedi);
      expect(result, expected);
    });

    test('zraMediFvs1', () async {
      final unicode = '\u180A\u183F\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraMedi);
      expect(result, expected);
    });

    test('zraMediFvs2', () async {
      final unicode = '\u180A\u183F\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraMedi);
      expect(result, expected);
    });

    test('zraMediFvs3', () async {
      final unicode = '\u180A\u183F\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraMedi);
      expect(result, expected);
    });

    test('zraMediFvs4', () async {
      final unicode = '\u180A\u183F\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraMedi);
      expect(result, expected);
    });

    test('zraFina', () async {
      final unicode = '\u180A\u183F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraFina);
      expect(result, expected);
    });

    test('zraFinaFvs1', () async {
      final unicode = '\u180A\u183F\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraFina);
      expect(result, expected);
    });

    test('zraFinaFvs2', () async {
      final unicode = '\u180A\u183F\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraFina);
      expect(result, expected);
    });

    test('zraFinaFvs3', () async {
      final unicode = '\u180A\u183F\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraFina);
      expect(result, expected);
    });

    test('zraFinaFvs4', () async {
      final unicode = '\u180A\u183F\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zraFina);
      expect(result, expected);
    });
  });

  group('LHA', () {
    test('lhaIsol', () async {
      final unicode = '\u1840';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaIsol);
      expect(result, expected);
    });

    test('lhaIsolFvs1', () async {
      final unicode = '\u1840\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaIsol);
      expect(result, expected);
    });

    test('lhaIsolFvs2', () async {
      final unicode = '\u1840\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaIsol);
      expect(result, expected);
    });

    test('lhaIsolFvs3', () async {
      final unicode = '\u1840\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaIsol);
      expect(result, expected);
    });

    test('lhaIsolFvs4', () async {
      final unicode = '\u1840\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaIsol);
      expect(result, expected);
    });

    test('lhaInit', () async {
      final unicode = '\u1840\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaInit);
      expect(result, expected);
    });

    test('lhaInitFvs1', () async {
      final unicode = '\u1840\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaInit);
      expect(result, expected);
    });

    test('lhaInitFvs2', () async {
      final unicode = '\u1840\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaInit);
      expect(result, expected);
    });

    test('lhaInitFvs3', () async {
      final unicode = '\u1840\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaInit);
      expect(result, expected);
    });

    test('lhaInitFvs3', () async {
      final unicode = '\u1840\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaInit);
      expect(result, expected);
    });

    test('lhaMedi', () async {
      final unicode = '\u180A\u1840\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaMedi);
      expect(result, expected);
    });

    test('lhaMediFvs1', () async {
      final unicode = '\u180A\u1840\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaMedi);
      expect(result, expected);
    });

    test('lhaMediFvs2', () async {
      final unicode = '\u180A\u1840\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaMedi);
      expect(result, expected);
    });

    test('lhaMediFvs3', () async {
      final unicode = '\u180A\u1840\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaMedi);
      expect(result, expected);
    });

    test('lhaMediFvs4', () async {
      final unicode = '\u180A\u1840\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaMedi);
      expect(result, expected);
    });

    test('lhaFina', () async {
      final unicode = '\u180A\u1840';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaFina);
      expect(result, expected);
    });

    test('lhaFinaFvs1', () async {
      final unicode = '\u180A\u1840\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaFina);
      expect(result, expected);
    });

    test('lhaFinaFvs2', () async {
      final unicode = '\u180A\u1840\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaFina);
      expect(result, expected);
    });

    test('lhaFinaFvs3', () async {
      final unicode = '\u180A\u1840\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaFina);
      expect(result, expected);
    });

    test('lhaFinaFvs4', () async {
      final unicode = '\u180A\u1840\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.lhaFina);
      expect(result, expected);
    });
  });

  group('ZHI', () {
    test('zhiIsol', () async {
      final unicode = '\u1841';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiIsol);
      expect(result, expected);
    });

    test('zhiIsolFvs1', () async {
      final unicode = '\u1841\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiIsol);
      expect(result, expected);
    });

    test('zhiIsolFvs2', () async {
      final unicode = '\u1841\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiIsol);
      expect(result, expected);
    });

    test('zhiIsolFvs3', () async {
      final unicode = '\u1841\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiIsol);
      expect(result, expected);
    });

    test('zhiIsolFvs4', () async {
      final unicode = '\u1841\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiIsol);
      expect(result, expected);
    });

    test('zhiInit', () async {
      final unicode = '\u1841\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiInit);
      expect(result, expected);
    });

    test('zhiInitFvs1', () async {
      final unicode = '\u1841\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiInit);
      expect(result, expected);
    });

    test('zhiInitFvs2', () async {
      final unicode = '\u1841\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiInit);
      expect(result, expected);
    });

    test('zhiInitFvs3', () async {
      final unicode = '\u1841\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiInit);
      expect(result, expected);
    });

    test('zhiInitFvs3', () async {
      final unicode = '\u1841\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiInit);
      expect(result, expected);
    });

    test('zhiMedi', () async {
      final unicode = '\u180A\u1841\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiMedi);
      expect(result, expected);
    });

    test('zhiMediFvs1', () async {
      final unicode = '\u180A\u1841\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiMedi);
      expect(result, expected);
    });

    test('zhiMediFvs2', () async {
      final unicode = '\u180A\u1841\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiMedi);
      expect(result, expected);
    });

    test('zhiMediFvs3', () async {
      final unicode = '\u180A\u1841\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiMedi);
      expect(result, expected);
    });

    test('zhiMediFvs4', () async {
      final unicode = '\u180A\u1841\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiMedi);
      expect(result, expected);
    });

    test('zhiFina', () async {
      final unicode = '\u180A\u1841';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiFina);
      expect(result, expected);
    });

    test('zhiFinaFvs1', () async {
      final unicode = '\u180A\u1841\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiFina);
      expect(result, expected);
    });

    test('zhiFinaFvs2', () async {
      final unicode = '\u180A\u1841\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiFina);
      expect(result, expected);
    });

    test('zhiFinaFvs3', () async {
      final unicode = '\u180A\u1841\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiFina);
      expect(result, expected);
    });

    test('zhiFinaFvs4', () async {
      final unicode = '\u180A\u1841\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.zhiFina);
      expect(result, expected);
    });
  });

  group('CHI', () {
    test('chiIsol', () async {
      final unicode = '\u1842';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiIsol);
      expect(result, expected);
    });

    test('chiIsolFvs1', () async {
      final unicode = '\u1842\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiIsol);
      expect(result, expected);
    });

    test('chiIsolFvs2', () async {
      final unicode = '\u1842\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiIsol);
      expect(result, expected);
    });

    test('chiIsolFvs3', () async {
      final unicode = '\u1842\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiIsol);
      expect(result, expected);
    });

    test('chiIsolFvs4', () async {
      final unicode = '\u1842\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiIsol);
      expect(result, expected);
    });

    test('chiInit', () async {
      final unicode = '\u1842\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiInit);
      expect(result, expected);
    });

    test('chiInitFvs1', () async {
      final unicode = '\u1842\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiInit);
      expect(result, expected);
    });

    test('chiInitFvs2', () async {
      final unicode = '\u1842\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiInit);
      expect(result, expected);
    });

    test('chiInitFvs3', () async {
      final unicode = '\u1842\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiInit);
      expect(result, expected);
    });

    test('chiInitFvs3', () async {
      final unicode = '\u1842\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiInit);
      expect(result, expected);
    });

    test('chiMedi', () async {
      final unicode = '\u180A\u1842\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiMedi);
      expect(result, expected);
    });

    test('chiMediFvs1', () async {
      final unicode = '\u180A\u1842\u180B\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiMedi);
      expect(result, expected);
    });

    test('chiMediFvs2', () async {
      final unicode = '\u180A\u1842\u180C\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiMedi);
      expect(result, expected);
    });

    test('chiMediFvs3', () async {
      final unicode = '\u180A\u1842\u180D\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiMedi);
      expect(result, expected);
    });

    test('chiMediFvs4', () async {
      final unicode = '\u180A\u1842\u180F\u180A';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiMedi);
      expect(result, expected);
    });

    test('chiFina', () async {
      final unicode = '\u180A\u1842';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiFina);
      expect(result, expected);
    });

    test('chiFinaFvs1', () async {
      final unicode = '\u180A\u1842\u180B';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiFina);
      expect(result, expected);
    });

    test('chiFinaFvs2', () async {
      final unicode = '\u180A\u1842\u180C';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiFina);
      expect(result, expected);
    });

    test('chiFinaFvs3', () async {
      final unicode = '\u180A\u1842\u180D';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiFina);
      expect(result, expected);
    });

    test('chiFinaFvs4', () async {
      final unicode = '\u180A\u1842\u180F';
      final result = convertUnicodeToMenksoft(unicode);
      final expected = String.fromCharCode(Menksoft.chiFina);
      expect(result, expected);
    });
  });
}
