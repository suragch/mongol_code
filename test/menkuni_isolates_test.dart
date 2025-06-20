import 'package:mongol_code/mongol_code.dart';
import 'package:test/test.dart';

void main() {
  group('Menksoft -> Unicode: all isolate values', () {
    test('isolateE234', () async {
      final menksoft = '\uE234';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.birga);
      expect(result, expected);
    });

    test('isolateE235', () async {
      final menksoft = '\uE235';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.ellipsis);
      expect(result, expected);
    });

    test('isolateE236', () async {
      final menksoft = '\uE236';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.comma);
      expect(result, expected);
    });

    test('isolateE237', () async {
      final menksoft = '\uE237';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.fullStop);
      expect(result, expected);
    });

    test('isolateE238', () async {
      final menksoft = '\uE238';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.colon);
      expect(result, expected);
    });

    test('isolateE239', () async {
      final menksoft = '\uE239';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.fourDots);
      expect(result, expected);
    });

    test('isolateE23A', () async {
      final menksoft = '\uE23A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.todoSoftHyphen);
      expect(result, expected);
    });

    test('isolateE23B', () async {
      final menksoft = '\uE23B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.sibeSyllableBoundaryMarker);
      expect(result, expected);
    });

    test('isolateE23C', () async {
      final menksoft = '\uE23C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.manchuComma);
      expect(result, expected);
    });

    test('isolateE23D', () async {
      final menksoft = '\uE23D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.manchuFullStop);
      expect(result, expected);
    });

    test('isolateE23E', () async {
      final menksoft = '\uE23E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u180A';
      expect(result, expected);
    });

    test('isolateE23F', () async {
      final menksoft = '\uE23F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1800\u180B'; //BIRGA_WITH_ORNAMENT
      expect(result, expected);
    });

    test('isolateE240', () async {
      final menksoft = '\uE240';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1800\u180C'; // ROTATED_BIRGA
      expect(result, expected);
    });

    test('isolateE241', () async {
      final menksoft = '\uE241';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1800\u180D'; // DOUBLE_BIRGA_WITH_ORNAMENT
      expect(result, expected);
    });

    test('isolateE242', () async {
      final menksoft = '\uE242';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = '\u1800\u180F'; // TRIPLE_BIRGA_WITH_ORNAMENT
      expect(result, expected);
    });

    test('isolateE243', () async {
      final menksoft = '\uE243';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.middleDot);
      expect(result, expected);
    });

    test('isolateE244', () async {
      final menksoft = '\uE244';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitZero);
      expect(result, expected);
    });

    test('isolateE245', () async {
      final menksoft = '\uE245';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitOne);
      expect(result, expected);
    });

    test('isolateE246', () async {
      final menksoft = '\uE246';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitTwo);
      expect(result, expected);
    });

    test('isolateE247', () async {
      final menksoft = '\uE247';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitThree);
      expect(result, expected);
    });

    test('isolateE248', () async {
      final menksoft = '\uE248';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitFour);
      expect(result, expected);
    });

    test('isolateE249', () async {
      final menksoft = '\uE249';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitFive);
      expect(result, expected);
    });

    test('isolateE24A', () async {
      final menksoft = '\uE24A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitSix);
      expect(result, expected);
    });

    test('isolateE24B', () async {
      final menksoft = '\uE24B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitSeven);
      expect(result, expected);
    });

    test('isolateE24C', () async {
      final menksoft = '\uE24C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitEight);
      expect(result, expected);
    });

    test('isolateE24D', () async {
      final menksoft = '\uE24D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.digitNine);
      expect(result, expected);
    });

    test('isolateE24E', () async {
      final menksoft = '\uE24E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.questionExclamation);
      expect(result, expected);
    });

    test('isolateE24F', () async {
      final menksoft = '\uE24F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.exclamationQuestion);
      expect(result, expected);
    });

    test('isolateE250', () async {
      final menksoft = '\uE250';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.fullwidthExclamation);
      expect(result, expected);
    });

    test('isolateE251', () async {
      final menksoft = '\uE251';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.fullwidthQuestion);
      expect(result, expected);
    });

    test('isolateE252', () async {
      final menksoft = '\uE252';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.fullwidthSemicolon);
      expect(result, expected);
    });

    test('isolateE253', () async {
      final menksoft = '\uE253';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.fullwidthLeftParenthesis);
      expect(result, expected);
    });

    test('isolateE254', () async {
      final menksoft = '\uE254';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.fullwidthRightParenthesis);
      expect(result, expected);
    });

    test('isolateE255', () async {
      final menksoft = '\uE255';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.leftAngleBracket);
      expect(result, expected);
    });

    test('isolateE256', () async {
      final menksoft = '\uE256';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.rightAngleBracket);
      expect(result, expected);
    });

    test('isolateE257', () async {
      final menksoft = '\uE257';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(
        Mongol.verticalLeftTortoiseShellBracket,
      );
      expect(result, expected);
    });

    test('isolateE258', () async {
      final menksoft = '\uE258';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(
        Mongol.verticalRightTortoiseShellBracket,
      );
      expect(result, expected);
    });

    test('isolateE259', () async {
      final menksoft = '\uE259';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.leftDoubleAngleBracket);
      expect(result, expected);
    });

    test('isolateE25A', () async {
      final menksoft = '\uE25A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.rightDoubleAngleBracket);
      expect(result, expected);
    });

    test('isolateE25B', () async {
      final menksoft = '\uE25B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(
        Mongol.verticalLeftWhiteCornerBracket,
      );
      expect(result, expected);
    });

    test('isolateE25C', () async {
      final menksoft = '\uE25C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(
        Mongol.verticalRightWhiteCornerBracket,
      );
      expect(result, expected);
    });

    test('isolateE25D', () async {
      final menksoft = '\uE25D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.verticalComma);
      expect(result, expected);
    });

    test('isolateE25E', () async {
      final menksoft = '\uE25E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.punctuationX);
      expect(result, expected);
    });

    test('isolateE25F', () async {
      final menksoft = '\uE25F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.referenceMark);
      expect(result, expected);
    });

    test('isolateE260', () async {
      final menksoft = '\uE260';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.verticalEnDash);
      expect(result, expected);
    });

    test('isolateE261', () async {
      final menksoft = '\uE261';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCode(Mongol.verticalEmDash);
      expect(result, expected);
    });

    test('isolateE262', () async {
      final menksoft = '\uE262';
      final result = convertMenksoftToUnicode(menksoft);
      // This is a guess.
      final expected = String.fromCharCode(Mongol.space);
      expect(result, expected);
    });

    test('isolateE263', () async {
      final menksoft = '\uE263';
      final result = convertMenksoftToUnicode(menksoft);
      // If this character were at the beginning of a word,
      // then it should be returned as an MVS, but as an
      // isolate a space is best.
      final expected = String.fromCharCode(Mongol.space); // NNBS deprecated
      expect(result, expected);
    });

    test('isolateE264', () async {
      final menksoft = '\uE264';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.a]);
      expect(result, expected);
    });

    test('isolateE265', () async {
      final menksoft = '\uE265';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.a, Mongol.fvs1]);
      expect(result, expected);
    });

    test('isolateE266', () async {
      final menksoft = '\uE266';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.a, Mongol.nirugu]);
      expect(result, expected);
    });

    test('isolateE267', () async {
      final menksoft = '\uE267';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.a,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE268', () async {
      final menksoft = '\uE268';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.a]);
      expect(result, expected);
    });

    test('isolateE269', () async {
      final menksoft = '\uE269';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.a,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE26A', () async {
      final menksoft = '\uE26A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.a, Mongol.fvs2]);
      expect(result, expected);
    });

    test('isolateE26B', () async {
      final menksoft = '\uE26B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.a,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE26C', () async {
      final menksoft = '\uE26C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.a,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE26D', () async {
      final menksoft = '\uE26D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.a,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE26E', () async {
      final menksoft = '\uE26E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.a,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE26F', () async {
      final menksoft = '\uE26F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.a,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE270', () async {
      final menksoft = '\uE270';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.e]);
      expect(result, expected);
    });

    test('isolateE271', () async {
      final menksoft = '\uE271';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.e, Mongol.nirugu]);
      expect(result, expected);
    });

    test('isolateE272', () async {
      final menksoft = '\uE272';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.e,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE273', () async {
      final menksoft = '\uE273';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.e]);
      expect(result, expected);
    });

    test('isolateE274', () async {
      final menksoft = '\uE274';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.e, Mongol.fvs1]);
      expect(result, expected);
    });

    test('isolateE275', () async {
      final menksoft = '\uE275';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.e,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE276', () async {
      final menksoft = '\uE276';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.e,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE277', () async {
      final menksoft = '\uE277';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.e,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE278', () async {
      final menksoft = '\uE278';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.e,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE279', () async {
      final menksoft = '\uE279';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.i]);
      expect(result, expected);
    });

    test('isolateE27A', () async {
      final menksoft = '\uE27A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.i, Mongol.nirugu]);
      expect(result, expected);
    });

    test('isolateE27B', () async {
      final menksoft = '\uE27B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.i]);
      expect(result, expected);
    });

    test('isolateE27C', () async {
      final menksoft = '\uE27C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.i]);
      expect(result, expected);
    });

    test('isolateE27D', () async {
      final menksoft = '\uE27D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.i,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE27E', () async {
      final menksoft = '\uE27E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.i,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE27F', () async {
      final menksoft = '\uE27F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.i,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE280', () async {
      final menksoft = '\uE280';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.i,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE281', () async {
      final menksoft = '\uE281';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.i,
        Mongol.fvs2,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE282', () async {
      final menksoft = '\uE282';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.i, Mongol.fvs1]);
      expect(result, expected);
    });

    test('isolateE283', () async {
      final menksoft = '\uE283';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.o]);
      expect(result, expected);
    });

    test('isolateE284', () async {
      final menksoft = '\uE284';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.o, Mongol.nirugu]);
      expect(result, expected);
    });

    test('isolateE285', () async {
      final menksoft = '\uE285';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.o]);
      expect(result, expected);
    });

    test('isolateE286', () async {
      final menksoft = '\uE286';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.o,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE287', () async {
      final menksoft = '\uE287';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.o,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE288', () async {
      final menksoft = '\uE288';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.o,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE289', () async {
      final menksoft = '\uE289';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.o,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE28A', () async {
      final menksoft = '\uE28A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.o,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE28B', () async {
      final menksoft = '\uE28B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.u]);
      expect(result, expected);
    });

    test('isolateE28C', () async {
      final menksoft = '\uE28C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.u, Mongol.nirugu]);
      expect(result, expected);
    });

    test('isolateE28D', () async {
      final menksoft = '\uE28D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.u]);
      expect(result, expected);
    });

    test('isolateE28E', () async {
      final menksoft = '\uE28E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.u,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE28F', () async {
      final menksoft = '\uE28F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.u,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE290', () async {
      final menksoft = '\uE290';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.u,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE291', () async {
      final menksoft = '\uE291';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.u,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE292', () async {
      final menksoft = '\uE292';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.u,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE293', () async {
      final menksoft = '\uE293';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.oe]);
      expect(result, expected);
    });

    test('isolateE294', () async {
      final menksoft = '\uE294';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.oe, Mongol.fvs1]);
      expect(result, expected);
    });

    test('isolateE295', () async {
      final menksoft = '\uE295';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.oe, Mongol.nirugu]);
      expect(result, expected);
    });

    test('isolateE296', () async {
      final menksoft = '\uE296';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.oe]);
      expect(result, expected);
    });

    test('isolateE297', () async {
      final menksoft = '\uE297';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE298', () async {
      final menksoft = '\uE298';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE299', () async {
      final menksoft = '\uE299';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.fvs2,
      ]);
      expect(result, expected);
    });

    test('isolateE29A', () async {
      final menksoft = '\uE29A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.fvs2,
      ]);
      expect(result, expected);
    });

    test('isolateE29B', () async {
      final menksoft = '\uE29B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.fvs2,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE29C', () async {
      final menksoft = '\uE29C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE29D', () async {
      final menksoft = '\uE29D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE29E', () async {
      final menksoft = '\uE29E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE29F', () async {
      final menksoft = '\uE29F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.oe,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2A0', () async {
      final menksoft = '\uE2A0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ue]);
      expect(result, expected);
    });

    test('isolateE2A1', () async {
      final menksoft = '\uE2A1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ue, Mongol.fvs1]);
      expect(result, expected);
    });

    test('isolateE2A2', () async {
      final menksoft = '\uE2A2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ue, Mongol.nirugu]);
      expect(result, expected);
    });

    test('isolateE2A3', () async {
      final menksoft = '\uE2A3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ue]);
      expect(result, expected);
    });

    test('isolateE2A4', () async {
      final menksoft = '\uE2A4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE2A5', () async {
      final menksoft = '\uE2A5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE2A6', () async {
      final menksoft = '\uE2A6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.fvs2,
      ]);
      expect(result, expected);
    });

    test('isolateE2A7', () async {
      final menksoft = '\uE2A7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.fvs2,
      ]);
      expect(result, expected);
    });

    test('isolateE2A8', () async {
      final menksoft = '\uE2A8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.fvs2,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2A9', () async {
      final menksoft = '\uE2A9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2AA', () async {
      final menksoft = '\uE2AA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2AB', () async {
      final menksoft = '\uE2AB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2AC', () async {
      final menksoft = '\uE2AC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ue,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2AD', () async {
      final menksoft = '\uE2AD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ee]);
      expect(result, expected);
    });

    test('isolateE2AE', () async {
      final menksoft = '\uE2AE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ee, Mongol.nirugu]);
      expect(result, expected);
    });

    test('isolateE2AF', () async {
      final menksoft = '\uE2AF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ee]);
      expect(result, expected);
    });

    test('isolateE2B0', () async {
      final menksoft = '\uE2B0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ee,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2B1', () async {
      final menksoft = '\uE2B1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.na]);
      expect(result, expected);
    });

    test('isolateE2B2', () async {
      final menksoft = '\uE2B2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.na,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2B3', () async {
      final menksoft = '\uE2B3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.na]);
      expect(result, expected);
    });

    test('isolateE2B4', () async {
      final menksoft = '\uE2B4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.na,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2B5', () async {
      final menksoft = '\uE2B5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.na]);
      expect(result, expected);
    });

    test('isolateE2B6', () async {
      final menksoft = '\uE2B6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.na,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE2B7', () async {
      final menksoft = '\uE2B7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.na,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2B8', () async {
      final menksoft = '\uE2B8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.na,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2B9', () async {
      final menksoft = '\uE2B9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.na,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2BA', () async {
      final menksoft = '\uE2BA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.na,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2BB', () async {
      final menksoft = '\uE2BB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ang]);
      expect(result, expected);
    });

    test('isolateE2BC', () async {
      final menksoft = '\uE2BC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ang]);
      expect(result, expected);
    });

    test('isolateE2BD', () async {
      final menksoft = '\uE2BD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ang]);
      expect(result, expected);
    });

    test('isolateE2BE', () async {
      final menksoft = '\uE2BE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ang]);
      expect(result, expected);
    });

    test('isolateE2BF', () async {
      final menksoft = '\uE2BF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.na,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2C0', () async {
      final menksoft = '\uE2C0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.na,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2C1', () async {
      final menksoft = '\uE2C1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ba]);
      expect(result, expected);
    });

    test('isolateE2C2', () async {
      final menksoft = '\uE2C2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ba]);
      expect(result, expected);
    });

    test('isolateE2C3', () async {
      final menksoft = '\uE2C3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ba]);
      expect(result, expected);
    });

    test('isolateE2C4', () async {
      final menksoft = '\uE2C4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ba,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE2C5', () async {
      final menksoft = '\uE2C5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ba]);
      expect(result, expected);
    });

    test('isolateE2C6', () async {
      final menksoft = '\uE2C6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ba]);
      expect(result, expected);
    });

    test('isolateE2C7', () async {
      final menksoft = '\uE2C7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ba]);
      expect(result, expected);
    });

    test('isolateE2C8', () async {
      final menksoft = '\uE2C8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.pa]);
      expect(result, expected);
    });

    test('isolateE2C9', () async {
      final menksoft = '\uE2C9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.pa]);
      expect(result, expected);
    });

    test('isolateE2CA', () async {
      final menksoft = '\uE2CA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.pa]);
      expect(result, expected);
    });

    test('isolateE2CB', () async {
      final menksoft = '\uE2CB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.pa]);
      expect(result, expected);
    });

    test('isolateE2CC', () async {
      final menksoft = '\uE2CC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.pa]);
      expect(result, expected);
    });

    test('isolateE2CD', () async {
      final menksoft = '\uE2CD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.pa]);
      expect(result, expected);
    });

    test('isolateE2CE', () async {
      final menksoft = '\uE2CE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa]);
      expect(result, expected);
    });

    test('isolateE2CF', () async {
      final menksoft = '\uE2CF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ga]);
      expect(result, expected);
    });

    test('isolateE2D0', () async {
      final menksoft = '\uE2D0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs2]);
      expect(result, expected);
    });

    test('isolateE2D1', () async {
      final menksoft = '\uE2D1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs4]);
      expect(result, expected);
    });

    test('isolateE2D2', () async {
      final menksoft = '\uE2D2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa]);
      expect(result, expected);
    });

    test('isolateE2D3', () async {
      final menksoft = '\uE2D3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ga]);
      expect(result, expected);
    });

    test('isolateE2D4', () async {
      final menksoft = '\uE2D4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs2]);
      expect(result, expected);
    });

    test('isolateE2D5', () async {
      final menksoft = '\uE2D5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs4]);
      expect(result, expected);
    });

    test('isolateE2D6', () async {
      final menksoft = '\uE2D6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.qa]);
      expect(result, expected);
    });

    test('isolateE2D7', () async {
      final menksoft = '\uE2D7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.fvs3,
      ]);
      expect(result, expected);
    });

    test('isolateE2D8', () async {
      final menksoft = '\uE2D8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.qa,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2D9', () async {
      final menksoft = '\uE2D9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2DA', () async {
      final menksoft = '\uE2DA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs2]);
      expect(result, expected);
    });

    test('isolateE2DB', () async {
      final menksoft = '\uE2DB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs4]);
      expect(result, expected);
    });

    test('isolateE2DC', () async {
      final menksoft = '\uE2DC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.qa,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2DD', () async {
      final menksoft = '\uE2DD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs2]);
      expect(result, expected);
    });

    test('isolateE2DE', () async {
      final menksoft = '\uE2DE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs4]);
      expect(result, expected);
    });

    test('isolateE2DF', () async {
      final menksoft = '\uE2DF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs2]);
      expect(result, expected);
    });

    test('isolateE2E0', () async {
      final menksoft = '\uE2E0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa, Mongol.fvs4]);
      expect(result, expected);
    });

    test('isolateE2E1', () async {
      final menksoft = '\uE2E1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ga]);
      expect(result, expected);
    });

    test('isolateE2E2', () async {
      final menksoft = '\uE2E2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa]);
      expect(result, expected);
    });

    test('isolateE2E3', () async {
      final menksoft = '\uE2E3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.ga,
      ]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2E4', () async {
      final menksoft = '\uE2E4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ga]);
      expect(result, expected);
    });

    test('isolateE2E5', () async {
      final menksoft = '\uE2E5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.qa]);
      expect(result, expected);
    });

    test('isolateE2E6', () async {
      final menksoft = '\uE2E6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.ga,
      ]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2E7', () async {
      final menksoft = '\uE2E7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE2E8', () async {
      final menksoft = '\uE2E8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ga]);
      expect(result, expected);
    });

    test('isolateE2E9', () async {
      final menksoft = '\uE2E9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.fvs3,
      ]);
      expect(result, expected);
    });

    test('isolateE2EA', () async {
      final menksoft = '\uE2EA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2EB', () async {
      final menksoft = '\uE2EB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.ga,
      ]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2EC', () async {
      final menksoft = '\uE2EC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2ED', () async {
      final menksoft = '\uE2ED';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.ga,
      ]); // Menksoft form is not possible to make in Unicode?
      expect(result, expected);
    });

    test('isolateE2EE', () async {
      final menksoft = '\uE2EE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2EF', () async {
      final menksoft = '\uE2EF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.fvs2,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2F0', () async {
      final menksoft = '\uE2F0';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ga,
        Mongol.fvs2,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2F1', () async {
      final menksoft = '\uE2F1';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ma]);
      expect(result, expected);
    });

    test('isolateE2F2', () async {
      final menksoft = '\uE2F2';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ma]);
      expect(result, expected);
    });

    test('isolateE2F3', () async {
      final menksoft = '\uE2F3';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ma]);
      expect(result, expected);
    });

    test('isolateE2F4', () async {
      final menksoft = '\uE2F4';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ma,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2F5', () async {
      final menksoft = '\uE2F5';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ma,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2F6', () async {
      final menksoft = '\uE2F6';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ma,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2F7', () async {
      final menksoft = '\uE2F7';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.la]);
      expect(result, expected);
    });

    test('isolateE2F8', () async {
      final menksoft = '\uE2F8';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.la]);
      expect(result, expected);
    });

    test('isolateE2F9', () async {
      final menksoft = '\uE2F9';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.la]);
      expect(result, expected);
    });

    test('isolateE2FA', () async {
      final menksoft = '\uE2FA';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.la,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2FB', () async {
      final menksoft = '\uE2FB';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.la,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2FC', () async {
      final menksoft = '\uE2FC';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.la,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE2FD', () async {
      final menksoft = '\uE2FD';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.sa]);
      expect(result, expected);
    });

    test('isolateE2FE', () async {
      final menksoft = '\uE2FE';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.sa]);
      expect(result, expected);
    });

    test('isolateE2FF', () async {
      final menksoft = '\uE2FF';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.sa]);
      expect(result, expected);
    });

    test('isolateE300', () async {
      final menksoft = '\uE300';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.sa,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE301', () async {
      final menksoft = '\uE301';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.sa,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE302', () async {
      final menksoft = '\uE302';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.sa,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE303', () async {
      final menksoft = '\uE303';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.sha]);
      expect(result, expected);
    });

    test('isolateE304', () async {
      final menksoft = '\uE304';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.sha]);
      expect(result, expected);
    });

    test('isolateE305', () async {
      final menksoft = '\uE305';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.sha]);
      expect(result, expected);
    });

    test('isolateE306', () async {
      final menksoft = '\uE306';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.sha,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE307', () async {
      final menksoft = '\uE307';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.sha,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE308', () async {
      final menksoft = '\uE308';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ta]);
      expect(result, expected);
    });

    test('isolateE309', () async {
      final menksoft = '\uE309';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ta]);
      expect(result, expected);
    });

    test('isolateE30A', () async {
      final menksoft = '\uE30A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ta]);
      expect(result, expected);
    });

    test('isolateE30B', () async {
      final menksoft = '\uE30B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ta,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE30C', () async {
      final menksoft = '\uE30C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ta,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE30D', () async {
      final menksoft = '\uE30D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ta,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE30E', () async {
      final menksoft = '\uE30E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ta]);
      expect(result, expected);
    });

    test('isolateE30F', () async {
      final menksoft = '\uE30F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ta]);
      expect(result, expected);
    });

    test('isolateE310', () async {
      final menksoft = '\uE310';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.da]);
      expect(result, expected);
    });

    test('isolateE311', () async {
      final menksoft = '\uE311';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.da]);
      expect(result, expected);
    });

    test('isolateE312', () async {
      final menksoft = '\uE312';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.da,
        Mongol.fvs1,
      ]);
      expect(result, expected);
    });

    test('isolateE313', () async {
      final menksoft = '\uE313';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.da,
        Mongol.fvs1,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE314', () async {
      final menksoft = '\uE314';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.da,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE315', () async {
      final menksoft = '\uE315';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.cha]);
      expect(result, expected);
    });

    test('isolateE316', () async {
      final menksoft = '\uE316';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.cha]);
      expect(result, expected);
    });

    test('isolateE317', () async {
      final menksoft = '\uE317';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.cha]);
      expect(result, expected);
    });

    test('isolateE318', () async {
      final menksoft = '\uE318';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ja]);
      expect(result, expected);
    });

    test('isolateE319', () async {
      final menksoft = '\uE319';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ja]);
      expect(result, expected);
    });

    test('isolateE31A', () async {
      final menksoft = '\uE31A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ja]);
      expect(result, expected);
    });

    test('isolateE31B', () async {
      final menksoft = '\uE31B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ja]);
      expect(result, expected);
    });

    test('isolateE31C', () async {
      final menksoft = '\uE31C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.i]);
      expect(result, expected);
    });

    test('isolateE31D', () async {
      final menksoft = '\uE31D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.ja,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE31E', () async {
      final menksoft = '\uE31E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ya]);
      expect(result, expected);
    });

    test('isolateE31F', () async {
      final menksoft = '\uE31F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ya]);
      expect(result, expected);
    });

    test('isolateE320', () async {
      final menksoft = '\uE320';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ya]);
      expect(result, expected);
    });

    test('isolateE321', () async {
      final menksoft = '\uE321';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ya, Mongol.fvs1]);
      expect(result, expected);
    });

    test('isolateE322', () async {
      final menksoft = '\uE322';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ra]);
      expect(result, expected);
    });

    test('isolateE323', () async {
      final menksoft = '\uE323';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ra]);
      expect(result, expected);
    });

    test('isolateE324', () async {
      final menksoft = '\uE324';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ra]);
      expect(result, expected);
    });

    test('isolateE325', () async {
      final menksoft = '\uE325';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ra]);
      expect(result, expected);
    });

    test('isolateE326', () async {
      final menksoft = '\uE326';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ra]);
      expect(result, expected);
    });

    test('isolateE327', () async {
      final menksoft = '\uE327';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ra]);
      expect(result, expected);
    });

    test('isolateE328', () async {
      final menksoft = '\uE328';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ra]);
      expect(result, expected);
    });

    test('isolateE329', () async {
      final menksoft = '\uE329';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.wa]);
      expect(result, expected);
    });

    test('isolateE32A', () async {
      final menksoft = '\uE32A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.wa]);
      expect(result, expected);
    });

    test('isolateE32B', () async {
      final menksoft = '\uE32B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.u]);
      expect(result, expected);
    });

    test('isolateE32C', () async {
      final menksoft = '\uE32C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.wa]);
      expect(result, expected);
    });

    test('isolateE32D', () async {
      final menksoft = '\uE32D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.fa]);
      expect(result, expected);
    });

    test('isolateE32E', () async {
      final menksoft = '\uE32E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.fa]);
      expect(result, expected);
    });

    test('isolateE32F', () async {
      final menksoft = '\uE32F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.fa]);
      expect(result, expected);
    });

    test('isolateE330', () async {
      final menksoft = '\uE330';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.fa]);
      expect(result, expected);
    });

    test('isolateE331', () async {
      final menksoft = '\uE331';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.fa]);
      expect(result, expected);
    });

    test('isolateE332', () async {
      final menksoft = '\uE332';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.fa]);
      expect(result, expected);
    });

    test('isolateE333', () async {
      final menksoft = '\uE333';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ka]);
      expect(result, expected);
    });

    test('isolateE334', () async {
      final menksoft = '\uE334';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ka]);
      expect(result, expected);
    });

    test('isolateE335', () async {
      final menksoft = '\uE335';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.ka]);
      expect(result, expected);
    });

    test('isolateE336', () async {
      final menksoft = '\uE336';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ka]);
      expect(result, expected);
    });

    test('isolateE337', () async {
      final menksoft = '\uE337';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ka]);
      expect(result, expected);
    });

    test('isolateE338', () async {
      final menksoft = '\uE338';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.ka]);
      expect(result, expected);
    });

    test('isolateE339', () async {
      final menksoft = '\uE339';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.kha]);
      expect(result, expected);
    });

    test('isolateE33A', () async {
      final menksoft = '\uE33A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.kha]);
      expect(result, expected);
    });

    test('isolateE33B', () async {
      final menksoft = '\uE33B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.kha]);
      expect(result, expected);
    });

    test('isolateE33C', () async {
      final menksoft = '\uE33C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.kha]);
      expect(result, expected);
    });

    test('isolateE33D', () async {
      final menksoft = '\uE33D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.kha]);
      expect(result, expected);
    });

    test('isolateE33E', () async {
      final menksoft = '\uE33E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.kha]);
      expect(result, expected);
    });

    test('isolateE33F', () async {
      final menksoft = '\uE33F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.tsa]);
      expect(result, expected);
    });

    test('isolateE340', () async {
      final menksoft = '\uE340';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.tsa]);
      expect(result, expected);
    });

    test('isolateE341', () async {
      final menksoft = '\uE341';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.tsa]);
      expect(result, expected);
    });

    test('isolateE342', () async {
      final menksoft = '\uE342';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.za]);
      expect(result, expected);
    });

    test('isolateE343', () async {
      final menksoft = '\uE343';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.za]);
      expect(result, expected);
    });

    test('isolateE344', () async {
      final menksoft = '\uE344';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.za]);
      expect(result, expected);
    });

    test('isolateE345', () async {
      final menksoft = '\uE345';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.haa]);
      expect(result, expected);
    });

    test('isolateE346', () async {
      final menksoft = '\uE346';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.haa]);
      expect(result, expected);
    });

    test('isolateE347', () async {
      final menksoft = '\uE347';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([
        Mongol.nirugu,
        Mongol.haa,
        Mongol.nirugu,
      ]);
      expect(result, expected);
    });

    test('isolateE348', () async {
      final menksoft = '\uE348';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.zra]);
      expect(result, expected);
    });

    test('isolateE349', () async {
      final menksoft = '\uE349';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.zra]);
      expect(result, expected);
    });

    test('isolateE34A', () async {
      final menksoft = '\uE34A';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.zra]);
      expect(result, expected);
    });

    test('isolateE34B', () async {
      final menksoft = '\uE34B';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.lha]);
      expect(result, expected);
    });

    test('isolateE34C', () async {
      final menksoft = '\uE34C';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.lha]);
      expect(result, expected);
    });

    test('isolateE34D', () async {
      final menksoft = '\uE34D';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.nirugu, Mongol.lha]);
      expect(result, expected);
    });

    test('isolateE34E', () async {
      final menksoft = '\uE34E';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.zhi]);
      expect(result, expected);
    });

    test('isolateE34F', () async {
      final menksoft = '\uE34F';
      final result = convertMenksoftToUnicode(menksoft);
      final expected = String.fromCharCodes([Mongol.chi]);
      expect(result, expected);
    });
  });
}
