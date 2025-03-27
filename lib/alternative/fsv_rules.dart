import 'package:mongol_code/alternative/models.dart';

import '../mongol_code.dart';

/// Select the correct glyph for the given position and FSV
///
/// An FSV value of 0 means that there is no FSV and the default glyph should be used.
///
/// A return value of null means the FSV is not defined for this character
/// at this position.
int? applyFsvRule({required int unicodeChar, required int fsv, required Position position, Shape shape = Shape.STEM}) {
  assert(fsv >= 0 && fsv <= 4);

  switch (unicodeChar) {
    case Unicode.A:
      return _applyA(fsv, position, shape);
    case Unicode.E:
      return _applyE(fsv, position, shape);
    case Unicode.I:
      return _applyI(fsv, position, shape);
    case Unicode.O:
      return _applyO(fsv, position, shape);
    case Unicode.U:
      return _applyU(fsv, position, shape);
    case Unicode.OE:
      return _applyOE(fsv, position, shape);
    case Unicode.UE:
      return _applyUE(fsv, position, shape);
    case Unicode.EE:
      return _applyEE(fsv, position);
    case Unicode.NA:
      return _applyNA(fsv, position, shape);
    default:
      return null;
  }
}

int? _applyA(int fsv, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_A;
      if (fsv == 1) return Menksoft.ISOL_A_FVS1;
      if (fsv == 2) return Menksoft.ISOL_A_FVS2;
      if (fsv == 3) return Menksoft.ISOL_A;
      return null;
    case Position.init:
      if (fsv == 0) return Menksoft.INIT_A;
      if (fsv == 1) return Menksoft.INIT_A_FVS1;
      if (fsv == 2) return Menksoft.INIT_A;
      return null;
    case Position.medi:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.MEDI_A_BP : Menksoft.MEDI_A;
      if (fsv == 1) return Menksoft.MEDI_A_FVS1;
      return null;
    case Position.fina:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.FINA_A_BP : Menksoft.FINA_A;
      if (fsv == 1) return Menksoft.FINA_A_FVS1;
      if (fsv == 2) return shape == Shape.ROUND ? Menksoft.FINA_A_BP : Menksoft.FINA_A;
      return null;
  }
}

int? _applyE(int fsv, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_E;
      if (fsv == 1) return Menksoft.ISOL_E_FVS1;
      if (fsv == 2) return Menksoft.ISOL_E;
      return null;
    case Position.init:
      if (fsv == 0) return Menksoft.INIT_E;
      if (fsv == 1) return Menksoft.INIT_E_FVS1;
      return null;
    case Position.medi:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.MEDI_E_BP : Menksoft.MEDI_E;
      return null;
    case Position.fina:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.FINA_E_BP : Menksoft.FINA_E;
      if (fsv == 1) return Menksoft.FINA_E_FVS1;
      if (fsv == 2) return shape == Shape.ROUND ? Menksoft.FINA_E_BP : Menksoft.FINA_E;
      return null;
  }
}

int? _applyI(int fsv, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_I;
      if (fsv == 1) return Menksoft.ISOL_I_FVS1;
      if (fsv == 2) return null; // No glyph for dotted isolate I
      if (fsv == 3) return Menksoft.ISOL_I;
      return null;
    case Position.init:
      if (fsv == 0) return Menksoft.INIT_I;
      if (fsv == 1) return Menksoft.INIT_I_FVS1;
      if (fsv == 2) return Menksoft.INIT_I;
      return null;
    case Position.medi:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.MEDI_I_BP : Menksoft.MEDI_I;
      if (fsv == 1) return Menksoft.MEDI_I_FVS1;
      if (fsv == 2) return Menksoft.MEDI_I_FVS2;
      if (fsv == 3) return shape == Shape.ROUND ? Menksoft.MEDI_I_BP : Menksoft.MEDI_I;
      return null;
    case Position.fina:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.FINA_I_BP : Menksoft.FINA_I;
      return null;
  }
}

int? _applyO(int fsv, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_O;
      return null;
    case Position.init:
      if (fsv == 0) return Menksoft.INIT_O;
      return null;
    case Position.medi:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.MEDI_O_BP : Menksoft.MEDI_O;
      if (fsv == 1) return Menksoft.MEDI_O_FVS1;
      return null;
    case Position.fina:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.FINA_O_BP : Menksoft.FINA_O;
      if (fsv == 1) Menksoft.FINA_O_FVS1;
      if (fsv == 2) return shape == Shape.ROUND ? Menksoft.FINA_O_BP : Menksoft.FINA_O;
      return null;
  }
}

int? _applyU(int fsv, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_U;
      if (fsv == 1) return Menksoft.ISOL_U_FVS1;
      if (fsv == 2) return null; // No glyph for dotted isolate U
      if (fsv == 3) return Menksoft.ISOL_U;
      return null;
    case Position.init:
      if (fsv == 0) return Menksoft.INIT_U;
      if (fsv == 1) return Menksoft.INIT_U_FVS1;
      if (fsv == 2) return Menksoft.INIT_U;
      return null;
    case Position.medi:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.MEDI_U_BP : Menksoft.MEDI_U;
      if (fsv == 1) return Menksoft.MEDI_U_FVS1;
      return null;
    case Position.fina:
      if (fsv == 0) return Menksoft.FINA_U;
      if (fsv == 1) return shape == Shape.ROUND ? Menksoft.FINA_U_FVS1_BP : Menksoft.FINA_U_FVS1;
      if (fsv == 2) return Menksoft.FINA_U;
      return null;
  }
}

int? _applyOE(int fsv, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_OE;
      if (fsv == 1) return Menksoft.ISOL_OE_FVS1;
      return null;
    case Position.init:
      if (fsv == 0) return Menksoft.INIT_OE;
      return null;
    case Position.medi:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.MEDI_OE_BP : Menksoft.MEDI_OE;
      if (fsv == 1) return shape == Shape.ROUND ? Menksoft.MEDI_OE_FVS1_BP : Menksoft.MEDI_OE_FVS1;
      if (fsv == 2) return Menksoft.MEDI_OE_FVS2;
      if (fsv == 3) return shape == Shape.ROUND ? Menksoft.MEDI_OE_BP : Menksoft.MEDI_OE;
      return null;
    case Position.fina:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.FINA_OE_BP : Menksoft.FINA_OE;
      if (fsv == 1) return shape == Shape.ROUND ? Menksoft.FINA_OE_FVS1_BP : Menksoft.FINA_OE_FVS1;
      if (fsv == 2) return shape == Shape.ROUND ? Menksoft.FINA_OE_FVS2_BP : Menksoft.FINA_OE_FVS2;
      if (fsv == 3) return shape == Shape.ROUND ? Menksoft.FINA_OE_BP : Menksoft.FINA_OE;
      return null;
  }
}

int? _applyUE(int fsv, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_UE;
      if (fsv == 1) return Menksoft.ISOL_UE_FVS1;
      if (fsv == 2) return Menksoft.ISOL_UE_FVS2;
      if (fsv == 3) return null; // No glyph for dotted isolate UE
      return null;
    case Position.init:
      if (fsv == 0) return Menksoft.INIT_UE;
      if (fsv == 1) return Menksoft.INIT_UE_FVS1;
      if (fsv == 2) return Menksoft.INIT_UE;
      return null;
    case Position.medi:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.MEDI_UE_BP : Menksoft.MEDI_UE;
      if (fsv == 1) return shape == Shape.ROUND ? Menksoft.MEDI_UE_FVS1_BP : Menksoft.MEDI_UE_FVS1;
      if (fsv == 2) return Menksoft.MEDI_UE_FVS2;
      if (fsv == 3) return shape == Shape.ROUND ? Menksoft.MEDI_UE_BP : Menksoft.MEDI_UE;
      return null;
    case Position.fina:
      if (fsv == 0) return shape == Shape.ROUND ? Menksoft.FINA_UE_BP : Menksoft.FINA_UE;
      if (fsv == 1) return shape == Shape.ROUND ? Menksoft.FINA_UE_FVS1_BP : Menksoft.FINA_UE_FVS1;
      if (fsv == 2) return shape == Shape.ROUND ? Menksoft.FINA_UE_FVS2_BP : Menksoft.FINA_UE_FVS2;
      if (fsv == 3) return shape == Shape.ROUND ? Menksoft.FINA_UE_BP : Menksoft.FINA_UE;
      return null;
  }
}

int? _applyEE(int fsv, Position position) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_EE;
      return null;
    case Position.init:
      if (fsv == 0) return Menksoft.INIT_EE;
      return null;
    case Position.medi:
      if (fsv == 0) return Menksoft.MEDI_EE;
      return null;
    case Position.fina:
      if (fsv == 0) return Menksoft.FINA_EE;
      return null;
  }
}

int? _applyNA(int fsv, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fsv == 0) return Menksoft.ISOL_NA;
      if (fsv == 1) return Menksoft.ISOL_NA_FVS1;
      return null;
    case Position.init:
      if (fsv == 0) return shape == Shape.TOOTH ? Menksoft.INIT_NA_TOOTH : Menksoft.INIT_NA_STEM;
      if (fsv == 1) return shape == Shape.TOOTH ? Menksoft.INIT_NA_FVS1_TOOTH : Menksoft.INIT_NA_FVS1_STEM;
      return null;
    case Position.medi:
      if (fsv == 0) return shape == Shape.TOOTH ? Menksoft.MEDI_NA_TOOTH : Menksoft.MEDI_NA_STEM;
      if (fsv == 1) return shape == Shape.TOOTH ? Menksoft.MEDI_NA_FVS1_TOOTH : Menksoft.MEDI_NA_FVS1_STEM;
      if (fsv == 2) return shape == Shape.TOOTH ? Menksoft.MEDI_NA_TOOTH : Menksoft.MEDI_NA_STEM;
      return null;
    case Position.fina:
      if (fsv == 0) return Menksoft.FINA_NA;
      if (fsv == 1) return Menksoft.FINA_NA_FVS1;
      if (fsv == 2) return Menksoft.FINA_NA;
      return null;
  }
}
