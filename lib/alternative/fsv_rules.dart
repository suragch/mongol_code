import 'package:mongol_code/alternative/models.dart';

import '../mongol_code.dart';

const fvs0 = 0;
const fvs1 = Unicode.FVS1;
const fvs2 = Unicode.FVS2;
const fvs3 = Unicode.FVS3;
const fvs4 = Unicode.FVS4;

/// Select the correct glyph for the given position and fvs
///
/// An fvs value of 0 means that there is no fvs and the default glyph should be used.
///
/// Returns Menksoft code. A return value of null means the fvs is not defined
/// for this character at this position.
int? applyFvsRule({required int unicodeChar, required int fvs, required Position position, Shape shape = Shape.STEM}) {
  assert(fvs >= 0 && fvs <= 4);

  switch (unicodeChar) {
    case Unicode.A:
      return _applyA(fvs, position, shape);
    case Unicode.E:
      return _applyE(fvs, position, shape);
    case Unicode.I:
      return _applyI(fvs, position, shape);
    case Unicode.O:
      return _applyO(fvs, position, shape);
    case Unicode.U:
      return _applyU(fvs, position, shape);
    case Unicode.OE:
      return _applyOE(fvs, position, shape);
    case Unicode.UE:
      return _applyUE(fvs, position, shape);
    case Unicode.EE:
      return _applyEE(fvs, position);
    case Unicode.NA:
      return _applyNA(fvs, position, shape);
    case Unicode.ANG:
      return _applyANG(fvs, position, shape);
    case Unicode.BA:
      return _applyBA(fvs, position, shape);
    case Unicode.PA:
      return _applyPA(fvs, position, shape);
    case Unicode.QA:
      return _applyQA(fvs, position, shape);
    case Unicode.GA:
      return _applyGA(fvs, position, shape);
    case Unicode.MA:
      return _applyMA(fvs, position, shape);
    case Unicode.LA:
      return _applyLA(fvs, position, shape);
    case Unicode.SA:
      return _applySA(fvs, position, shape);
    case Unicode.SHA:
      return _applySHA(fvs, position, shape);
    case Unicode.TA:
      return _applyTA(fvs, position, shape);
    case Unicode.DA:
      return _applyDA(fvs, position, shape);
    case Unicode.CHA:
      return _applyCHA(fvs, position, shape);
    case Unicode.JA:
      return _applyJA(fvs, position, shape);
    case Unicode.YA:
      return _applyYA(fvs, position, shape);
    case Unicode.RA:
      return _applyRA(fvs, position, shape);
    case Unicode.WA:
      return _applyWA(fvs, position, shape);
    case Unicode.FA:
      return _applyFA(fvs, position, shape);
    case Unicode.KA:
      return _applyKA(fvs, position, shape);
    case Unicode.KHA:
      return _applyKHA(fvs, position, shape);
    case Unicode.TSA:
      return _applyTSA(fvs, position, shape);
    case Unicode.ZA:
      return _applyZA(fvs, position, shape);
    case Unicode.HAA:
      return _applyHAA(fvs, position, shape);
    case Unicode.ZRA:
      return _applyZRA(fvs, position, shape);
    case Unicode.LHA:
      return _applyLHA(fvs, position, shape);
    case Unicode.ZHI:
      return _applyZHI(fvs, position, shape);
    case Unicode.CHI:
      return _applyCHI(fvs, position, shape);
    default:
      return null;
  }
}

int? _applyA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_A;
      if (fvs == fvs1) return Menksoft.ISOL_A_FVS1;
      if (fvs == fvs2) return Menksoft.ISOL_A_FVS2;
      if (fvs == fvs3) return Menksoft.ISOL_A;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_A;
      if (fvs == fvs1) return Menksoft.INIT_A_FVS1;
      if (fvs == fvs2) return Menksoft.INIT_A;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.MEDI_A_BP : Menksoft.MEDI_A;
      if (fvs == fvs1) return Menksoft.MEDI_A_FVS1;
      return null;
    case Position.fina:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.FINA_A_BP : Menksoft.FINA_A;
      if (fvs == fvs1) return Menksoft.FINA_A_FVS1;
      if (fvs == fvs2) return shape == Shape.ROUND ? Menksoft.FINA_A_BP : Menksoft.FINA_A;
      return null;
  }
}

int? _applyE(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_E;
      if (fvs == fvs1) return Menksoft.ISOL_E_FVS1;
      if (fvs == fvs2) return Menksoft.ISOL_E;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_E;
      if (fvs == fvs1) return Menksoft.INIT_E_FVS1;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.MEDI_E_BP : Menksoft.MEDI_E;
      return null;
    case Position.fina:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.FINA_E_BP : Menksoft.FINA_E;
      if (fvs == fvs1) return Menksoft.FINA_E_FVS1;
      if (fvs == fvs2) return shape == Shape.ROUND ? Menksoft.FINA_E_BP : Menksoft.FINA_E;
      return null;
  }
}

int? _applyI(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_I;
      if (fvs == fvs1) return Menksoft.ISOL_I_FVS1;
      if (fvs == fvs2) return null; // No glyph for dotted isolate I
      if (fvs == fvs3) return Menksoft.ISOL_I;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_I;
      if (fvs == fvs1) return Menksoft.INIT_I_FVS1;
      if (fvs == fvs2) return Menksoft.INIT_I;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.MEDI_I_BP : Menksoft.MEDI_I;
      if (fvs == fvs1) return Menksoft.MEDI_I_FVS1;
      if (fvs == fvs2) return Menksoft.MEDI_I_FVS2;
      if (fvs == fvs3) return shape == Shape.ROUND ? Menksoft.MEDI_I_BP : Menksoft.MEDI_I;
      return null;
    case Position.fina:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.FINA_I_BP : Menksoft.FINA_I;
      return null;
  }
}

int? _applyO(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_O;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_O;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.MEDI_O_BP : Menksoft.MEDI_O;
      if (fvs == fvs1) return Menksoft.MEDI_O_FVS1;
      return null;
    case Position.fina:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.FINA_O_BP : Menksoft.FINA_O;
      if (fvs == fvs1) Menksoft.FINA_O_FVS1;
      if (fvs == fvs2) return shape == Shape.ROUND ? Menksoft.FINA_O_BP : Menksoft.FINA_O;
      return null;
  }
}

int? _applyU(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_U;
      if (fvs == fvs1) return Menksoft.ISOL_U_FVS1;
      if (fvs == fvs2) return null; // No glyph for dotted isolate U
      if (fvs == fvs3) return Menksoft.ISOL_U;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_U;
      if (fvs == fvs1) return Menksoft.INIT_U_FVS1;
      if (fvs == fvs2) return Menksoft.INIT_U;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.MEDI_U_BP : Menksoft.MEDI_U;
      if (fvs == fvs1) return Menksoft.MEDI_U_FVS1;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_U;
      if (fvs == fvs1) return shape == Shape.ROUND ? Menksoft.FINA_U_FVS1_BP : Menksoft.FINA_U_FVS1;
      if (fvs == fvs2) return Menksoft.FINA_U;
      return null;
  }
}

int? _applyOE(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_OE;
      if (fvs == fvs1) return Menksoft.ISOL_OE_FVS1;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_OE;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.MEDI_OE_BP : Menksoft.MEDI_OE;
      if (fvs == fvs1) return shape == Shape.ROUND ? Menksoft.MEDI_OE_FVS1_BP : Menksoft.MEDI_OE_FVS1;
      if (fvs == fvs2) return Menksoft.MEDI_OE_FVS2;
      if (fvs == fvs3) return shape == Shape.ROUND ? Menksoft.MEDI_OE_BP : Menksoft.MEDI_OE;
      return null;
    case Position.fina:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.FINA_OE_BP : Menksoft.FINA_OE;
      if (fvs == fvs1) return shape == Shape.ROUND ? Menksoft.FINA_OE_FVS1_BP : Menksoft.FINA_OE_FVS1;
      if (fvs == fvs2) return shape == Shape.ROUND ? Menksoft.FINA_OE_FVS2_BP : Menksoft.FINA_OE_FVS2;
      if (fvs == fvs3) return shape == Shape.ROUND ? Menksoft.FINA_OE_BP : Menksoft.FINA_OE;
      return null;
  }
}

int? _applyUE(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_UE;
      if (fvs == fvs1) return Menksoft.ISOL_UE_FVS1;
      if (fvs == fvs2) return Menksoft.ISOL_UE_FVS2;
      if (fvs == fvs3) return null; // No glyph for dotted isolate UE
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_UE;
      if (fvs == fvs1) return Menksoft.INIT_UE_FVS1;
      if (fvs == fvs2) return Menksoft.INIT_UE;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.MEDI_UE_BP : Menksoft.MEDI_UE;
      if (fvs == fvs1) return shape == Shape.ROUND ? Menksoft.MEDI_UE_FVS1_BP : Menksoft.MEDI_UE_FVS1;
      if (fvs == fvs2) return Menksoft.MEDI_UE_FVS2;
      if (fvs == fvs3) return shape == Shape.ROUND ? Menksoft.MEDI_UE_BP : Menksoft.MEDI_UE;
      return null;
    case Position.fina:
      if (fvs == fvs0) return shape == Shape.ROUND ? Menksoft.FINA_UE_BP : Menksoft.FINA_UE;
      if (fvs == fvs1) return shape == Shape.ROUND ? Menksoft.FINA_UE_FVS1_BP : Menksoft.FINA_UE_FVS1;
      if (fvs == fvs2) return shape == Shape.ROUND ? Menksoft.FINA_UE_FVS2_BP : Menksoft.FINA_UE_FVS2;
      if (fvs == fvs3) return shape == Shape.ROUND ? Menksoft.FINA_UE_BP : Menksoft.FINA_UE;
      return null;
  }
}

int? _applyEE(int fvs, Position position) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_EE;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_EE;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_EE;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_EE;
      return null;
  }
}

int? _applyNA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_NA;
      if (fvs == fvs1) return Menksoft.ISOL_NA_FVS1;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_NA_TOOTH : Menksoft.INIT_NA_STEM;
      if (fvs == fvs1) return shape == Shape.TOOTH ? Menksoft.INIT_NA_FVS1_TOOTH : Menksoft.INIT_NA_FVS1_STEM;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.MEDI_NA_TOOTH : Menksoft.MEDI_NA_STEM;
      if (fvs == fvs1) return shape == Shape.TOOTH ? Menksoft.MEDI_NA_FVS1_TOOTH : Menksoft.MEDI_NA_FVS1_STEM;
      if (fvs == fvs2) return shape == Shape.TOOTH ? Menksoft.MEDI_NA_TOOTH : Menksoft.MEDI_NA_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_NA;
      if (fvs == fvs1) return Menksoft.FINA_NA_FVS1;
      if (fvs == fvs2) return Menksoft.FINA_NA;
      return null;
  }
}

int? _applyANG(int fvs, Position position, Shape shape) {
  if (fvs != fvs0) return null;
  switch (position) {
    case Position.isol:
      return Menksoft.ISOL_ANG;
    case Position.init:
      if (shape == Shape.TOOTH) return Menksoft.INIT_ANG_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.INIT_ANG_ROUND;
      if (shape == Shape.STEM) return Menksoft.INIT_ANG_STEM;
      return null;
    case Position.medi:
      if (shape == Shape.TOOTH) return Menksoft.MEDI_ANG_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.MEDI_ANG_ROUND;
      if (shape == Shape.STEM) return Menksoft.MEDI_ANG_STEM;
      return null;
    case Position.fina:
      return Menksoft.FINA_ANG;
  }
}

int? _applyBA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_BA;
      return null;
    case Position.init:
      if (fvs != fvs0) return null;
      if (shape == Shape.TOOTH) return Menksoft.INIT_BA_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.INIT_BA_OU;
      if (shape == Shape.STEM) return Menksoft.INIT_BA_STEM;
      return null;
    case Position.medi:
      if (fvs != fvs0) return null;
      if (shape == Shape.TOOTH) return Menksoft.MEDI_BA_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.MEDI_BA_OU;
      if (shape == Shape.STEM) return Menksoft.MEDI_BA_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_BA;
      if (fvs == fvs1) return Menksoft.FINA_BA_FVS1;
      return null;
  }
}

int? _applyPA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_PA;
      return null;
    case Position.init:
      if (fvs != fvs0) return null;
      if (shape == Shape.TOOTH) return Menksoft.INIT_PA_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.INIT_PA_OU;
      if (shape == Shape.STEM) return Menksoft.INIT_PA_STEM;
      return null;
    case Position.medi:
      if (fvs != fvs0) return null;
      if (shape == Shape.TOOTH) return Menksoft.MEDI_PA_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.MEDI_PA_OU;
      if (shape == Shape.STEM) return Menksoft.MEDI_PA_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_PA;
      return null;
  }
}

int? _applyQA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_QA;
      if (fvs == fvs1) return Menksoft.ISOL_QA_FVS1;
      if (fvs == fvs2) return Menksoft.ISOL_QA_FVS2;
      if (fvs == fvs4) return Menksoft.ISOL_QA_FVS4;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_QA_TOOTH : Menksoft.INIT_QA_STEM;
      if (fvs == fvs1) return shape == Shape.TOOTH ? Menksoft.INIT_QA_FVS1_TOOTH : Menksoft.INIT_QA_FVS1_STEM;
      if (fvs == fvs2) return shape == Shape.ROUND ? Menksoft.INIT_QA_FVS2_OU : Menksoft.INIT_QA_FVS2;
      if (fvs == fvs3) return shape == Shape.TOOTH ? Menksoft.INIT_QA_TOOTH : Menksoft.INIT_QA_STEM;
      if (fvs == fvs4) return shape == Shape.ROUND ? Menksoft.INIT_QA_FVS4_OU : Menksoft.INIT_QA_FVS4;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.MEDI_QA_TOOTH : Menksoft.MEDI_QA_STEM;
      if (fvs == fvs1) return Menksoft.MEDI_QA_FVS1;
      if (fvs == fvs2) {
        if (shape == Shape.ROUND) return Menksoft.MEDI_QA_FVS2_OU;
        if (shape == Shape.CONSONANT) return Menksoft.MEDI_QA_FVS2_CONS;
        return Menksoft.MEDI_QA_FVS2;
      }
      if (fvs == fvs3) return shape == Shape.TOOTH ? Menksoft.MEDI_QA_TOOTH : Menksoft.MEDI_QA_STEM;
      if (fvs == fvs4) {
        if (shape == Shape.ROUND) return Menksoft.MEDI_QA_FVS4_OU;
        if (shape == Shape.CONSONANT) return Menksoft.MEDI_QA_FVS4_CONS;
        return Menksoft.MEDI_QA_FVS4;
      }
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_QA;
      if (fvs == fvs1) return Menksoft.FINA_QA_FVS1;
      return null;
  }
}

int? _applyGA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_GA;
      if (fvs == fvs1) return Menksoft.ISOL_GA_FVS1;
      if (fvs == fvs2) return Menksoft.ISOL_GA_FVS2;
      if (fvs == fvs4) return Menksoft.ISOL_GA_FVS4;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_GA_TOOTH : Menksoft.INIT_GA_STEM;
      if (fvs == fvs1) return shape == Shape.TOOTH ? Menksoft.INIT_GA_FVS1_TOOTH : Menksoft.INIT_GA_FVS1_STEM;
      if (fvs == fvs2) return shape == Shape.ROUND ? Menksoft.INIT_GA_FVS2_OU : Menksoft.INIT_GA_FVS2;
      if (fvs == fvs3) return shape == Shape.TOOTH ? Menksoft.INIT_GA_TOOTH : Menksoft.INIT_GA_STEM;
      if (fvs == fvs4) return shape == Shape.ROUND ? Menksoft.INIT_GA_FVS4_OU : Menksoft.INIT_GA_FVS4;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_GA;
      if (fvs == fvs1) return shape == Shape.TOOTH ? Menksoft.MEDI_GA_FVS1_TOOTH : Menksoft.MEDI_GA_FVS1_STEM;
      if (fvs == fvs2) {
        if (shape == Shape.ROUND) return Menksoft.MEDI_GA_FVS2_OU;
        if (shape == Shape.TOOTH) return Menksoft.MEDI_GA_FVS2_TOOTH;
        if (shape == Shape.STEM) return Menksoft.MEDI_GA_FVS2_STEM;
        return Menksoft.MEDI_GA_FVS2;
      }
      if (fvs == fvs3) return Menksoft.MEDI_GA;
      if (fvs == fvs4) {
        if (shape == Shape.ROUND) return Menksoft.MEDI_GA_FVS4_OU;
        if (shape == Shape.CONSONANT) return Menksoft.MEDI_GA_FVS4_CONS;
        return Menksoft.MEDI_GA_FVS4;
      }
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_GA;
      if (fvs == fvs1) return Menksoft.FINA_GA_FVS1;
      if (fvs == fvs2) return Menksoft.FINA_GA_FVS2;
      if (fvs == fvs3) return Menksoft.FINA_GA_FVS3;
      return null;
  }
}

int? _applyMA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_MA;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_MA_TOOTH : Menksoft.INIT_MA_STEM_LONG;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.MEDI_MA_TOOTH : Menksoft.MEDI_MA_STEM_LONG;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_MA;
      return null;
  }
}

int? _applyLA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_LA;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_LA_TOOTH : Menksoft.INIT_LA_STEM_LONG;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.MEDI_LA_TOOTH : Menksoft.MEDI_LA_STEM_LONG;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_LA;
      return null;
  }
}

int? _applySA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_SA;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_SA_TOOTH : Menksoft.INIT_SA_STEM;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.MEDI_SA_TOOTH : Menksoft.MEDI_SA_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_SA;
      if (fvs == fvs1) return Menksoft.FINA_SA_FVS1;
      return null;
  }
}

int? _applySHA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_SHA;
      if (fvs == fvs1) return Menksoft.ISOL_SHA_FVS1;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_SHA_TOOTH : Menksoft.INIT_SHA_STEM;
      if (fvs == fvs1) return shape == Shape.TOOTH ? Menksoft.INIT_SHA_FVS1_TOOTH : Menksoft.INIT_SHA_FVS1_STEM;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.MEDI_SHA_TOOTH : Menksoft.MEDI_SHA_STEM;
      if (fvs == fvs1) return shape == Shape.TOOTH ? Menksoft.MEDI_SHA_FVS1_TOOTH : Menksoft.MEDI_SHA_FVS1_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_SHA;
      return null;
  }
}

int? _applyTA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_TA;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_TA_TOOTH : Menksoft.INIT_TA_STEM;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_TA;
      if (fvs == fvs1) return shape == Shape.TOOTH ? Menksoft.MEDI_TA_FVS1_TOOTH : Menksoft.MEDI_TA_FVS1_STEM;
      if (fvs == fvs2) return Menksoft.MEDI_TA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_TA;
      return null;
  }
}

int? _applyDA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_DA;
      if (fvs == fvs1) return Menksoft.ISOL_DA_FVS1;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_DA_TOOTH : Menksoft.INIT_DA_STEM;
      if (fvs == fvs1) return Menksoft.INIT_DA_FVS1;
      if (fvs == fvs2) return shape == Shape.TOOTH ? Menksoft.INIT_DA_TOOTH : Menksoft.INIT_DA_STEM;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_DA;
      if (fvs == fvs1) return Menksoft.MEDI_DA_FVS1;
      if (fvs == fvs2) return Menksoft.MEDI_DA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_DA;
      if (fvs == fvs1) return Menksoft.FINA_DA_FVS1;
      return null;
  }
}

int? _applyCHA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_CHA;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_CHA;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_CHA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_CHA;
      return null;
  }
}

int? _applyJA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_JA;
      if (fvs == fvs1) return Menksoft.ISOL_JA_FVS1;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_JA_TOOTH : Menksoft.INIT_JA_STEM;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_JA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_JA;
      if (fvs == fvs1) return Menksoft.FINA_JA_FVS1;
      return null;
  }
}

int? _applyYA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_YA;
      if (fvs == fvs1) return Menksoft.ISOL_YA_FVS1;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_YA;
      if (fvs == fvs1) return Menksoft.INIT_YA_FVS1;
      if (fvs == fvs2) return Menksoft.INIT_YA;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_YA;
      if (fvs == fvs1) return Menksoft.MEDI_YA_FVS1;
      if (fvs == fvs2) return Menksoft.MEDI_YA_FVS2;
      if (fvs == fvs3) return Menksoft.MEDI_YA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_YA;
      return null;
  }
}

int? _applyRA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_RA;
      return null;
    case Position.init:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.INIT_RA_TOOTH : Menksoft.INIT_RA_STEM;
      return null;
    case Position.medi:
      if (fvs == fvs0) return shape == Shape.TOOTH ? Menksoft.MEDI_RA_TOOTH : Menksoft.MEDI_RA_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_RA;
      return null;
  }
}

int? _applyWA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_WA;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_WA;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_WA;
      if (fvs == fvs1) return Menksoft.MEDI_WA_FVS1;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_WA;
      if (fvs == fvs1) return Menksoft.FINA_WA_FVS1;
      return null;
  }
}

int? _applyFA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_FA;
      return null;
    case Position.init:
      if (fvs != fvs0) return null;
      if (shape == Shape.TOOTH) return Menksoft.INIT_FA_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.INIT_FA_OU;
      if (shape == Shape.STEM) return Menksoft.INIT_FA_STEM;
      return null;
    case Position.medi:
      if (fvs != fvs0) return null;
      if (shape == Shape.TOOTH) return Menksoft.MEDI_FA_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.MEDI_FA_OU;
      if (shape == Shape.STEM) return Menksoft.MEDI_FA_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_FA;
      return null;
  }
}

int? _applyKA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_KA;
      return null;
    case Position.init:
      if (fvs == fvs0) return (shape == Shape.ROUND) ? Menksoft.INIT_KA_OU : Menksoft.INIT_KA;
      return null;
    case Position.medi:
      if (fvs != fvs0) return null;
      if (shape == Shape.TOOTH) return Menksoft.MEDI_KA_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.MEDI_KA_OU;
      if (shape == Shape.STEM) return Menksoft.MEDI_KA_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_KA;
      return null;
  }
}

int? _applyKHA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_KHA;
      return null;
    case Position.init:
      if (fvs == fvs0) return (shape == Shape.ROUND) ? Menksoft.INIT_KHA_OU : Menksoft.INIT_KHA;
      return null;
    case Position.medi:
      if (fvs != fvs0) return null;
      if (shape == Shape.TOOTH) return Menksoft.MEDI_KHA_TOOTH;
      if (shape == Shape.ROUND) return Menksoft.MEDI_KHA_OU;
      if (shape == Shape.STEM) return Menksoft.MEDI_KHA_STEM;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_KHA;
      return null;
  }
}

int? _applyTSA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_TSA;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_TSA;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_TSA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_TSA;
      return null;
  }
}

int? _applyZA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_ZA;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_ZA;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_ZA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_ZA;
      return null;
  }
}

int? _applyHAA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_HAA;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_HAA;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_HAA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_HAA;
      return null;
  }
}

int? _applyZRA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_ZRA;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_ZRA;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_ZRA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_ZRA;
      return null;
  }
}

int? _applyLHA(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_LHA;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_LHA;
      return null;
    case Position.medi:
      if (fvs == fvs0) return (shape == Shape.ROUND) ? Menksoft.MEDI_LHA_BP : Menksoft.MEDI_LHA;
      return null;
    case Position.fina:
      if (fvs == fvs0) return (shape == Shape.ROUND) ? Menksoft.MEDI_LHA_BP : Menksoft.MEDI_LHA;
      return null;
  }
}

int? _applyZHI(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_ZHI;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_ZHI;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_ZHI;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_ZHI;
      return null;
  }
}

int? _applyCHI(int fvs, Position position, Shape shape) {
  switch (position) {
    case Position.isol:
      if (fvs == fvs0) return Menksoft.ISOL_CHI;
      return null;
    case Position.init:
      if (fvs == fvs0) return Menksoft.INIT_CHI;
      return null;
    case Position.medi:
      if (fvs == fvs0) return Menksoft.MEDI_CHI;
      return null;
    case Position.fina:
      if (fvs == fvs0) return Menksoft.FINA_CHI;
      return null;
  }
}
