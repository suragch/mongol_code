// GBT+25924-2023 Appendix D

List<int>? checkFixedSequenceMenkToUni(List<int> menksoft) {
  final word = String.fromCharCodes(menksoft);
  final unicode =
      _fixedTwoLetterWordsMenkToUni[word] ??
      _fixedSuffixesMenkToUni[word] ??
      _fixedWordsMenkToUni[word];
  if (unicode == null) return null;
  return unicode.codeUnits;
}

// MCC - Mongolian combining consonant （B, P, F, K, KH)
// NCC - Mongolian non-combining consonant (N, M, L, S, etc.)
// MCCC - Mongolian conditional combining consonant (Q, G)

const Map<String, String> _fixedTwoLetterWordsMenkToUni = {
  // Corresponding to original: 1. NCC|MCCC + A
  '\uE2B3\uE268': '\u1828\u1820', // N
  '\uE2F2\uE268': '\u182E\u1820', // M
  '\uE2F8\uE268': '\u182F\u1820', // L
  '\uE2FE\uE268': '\u1830\u1820', // S
  '\uE304\uE268': '\u1831\u1820', // SH
  '\uE309\uE268': '\u1832\u1820', // T
  '\uE315\uE268': '\u1834\u1820', // CH
  '\uE31A\uE268': '\u1835\u1820', // J
  '\uE31E\uE268': '\u1836\u1820', // Y
  '\uE322\uE268': '\u1837\u1820', // R
  '\uE329\uE268': '\u1838\u1820', // W
  '\uE33F\uE268': '\u183C\u1820', // TS
  '\uE342\uE268': '\u183D\u1820', // Z
  '\uE345\uE268': '\u183E\u1820', // H
  '\uE348\uE268': '\u183F\u1820', // ZR
  '\uE34B\uE268': '\u1840\u1820', // LH
  '\uE34E\uE268': '\u1841\u1820', // ZHI
  '\uE34F\uE268': '\u1842\u1820', // CHI
  '\uE2D2\uE268': '\u182C\u1820', // Q
  '\uE2E4\uE268': '\u182D\u1820', // G
  // Corresponding to original: 2. MCC + A
  '\uE2C1\uE26B': '\u182A\u1820', // B
  '\uE2C8\uE26B': '\u182B\u1820', // P
  '\uE32D\uE26B': '\u1839\u1820', // F
  '\uE333\uE26B': '\u183A\u1820', // K
  '\uE339\uE26B': '\u183B\u1820', // KH
  // Corresponding to original: 3. NCC + E
  '\uE2B3\uE273': '\u1828\u1821',
  '\uE2F2\uE273': '\u182E\u1821',
  '\uE2F8\uE273': '\u182F\u1821',
  '\uE2FE\uE273': '\u1830\u1821',
  '\uE304\uE273': '\u1831\u1821',
  '\uE309\uE273': '\u1832\u1821',
  '\uE315\uE273': '\u1834\u1821',
  '\uE31A\uE273': '\u1835\u1821',
  '\uE31E\uE273': '\u1836\u1821',
  '\uE322\uE273': '\u1837\u1821',
  '\uE329\uE273': '\u1838\u1821',
  '\uE33F\uE273': '\u183C\u1821',
  '\uE342\uE273': '\u183D\u1821',
  '\uE345\uE273': '\u183E\u1821',
  '\uE348\uE273': '\u183F\u1821',
  '\uE34B\uE273': '\u1840\u1821',
  '\uE34E\uE273': '\u1841\u1821',
  '\uE34F\uE273': '\u1842\u1821',

  // Corresponding to original: 4. MCC|MCCC + E
  '\uE2C1\uE275': '\u182A\u1821',
  '\uE2C8\uE275': '\u182B\u1821',
  '\uE32D\uE275': '\u1839\u1821',
  '\uE333\uE275': '\u183A\u1821',
  '\uE339\uE275': '\u183B\u1821',
  '\uE2D0\uE275': '\u182C\u1821',
  '\uE2E3\uE275': '\u182D\u1821',

  // Corresponding to original: 5. Consonant + O|U
  '\uE2B3\uE286': '\u1828\u1823', // O
  '\uE2F1\uE286': '\u182E\u1823', // O
  '\uE2F7\uE286': '\u182F\u1823', // O
  '\uE2FD\uE286': '\u1830\u1823', // O
  '\uE303\uE286': '\u1831\u1823', // O
  '\uE308\uE286': '\u1832\u1823', // O
  '\uE315\uE286': '\u1834\u1823', // O
  '\uE319\uE286': '\u1835\u1823', // O
  '\uE31E\uE286': '\u1836\u1823', // O
  '\uE323\uE286': '\u1837\u1823', // O
  '\uE329\uE286': '\u1838\u1823', // O
  '\uE33F\uE286': '\u183C\u1823', // O
  '\uE342\uE286': '\u183D\u1823', // O
  '\uE345\uE286': '\u183E\u1823', // O
  '\uE348\uE286': '\u183F\u1823', // O
  '\uE34B\uE286': '\u1840\u1823', // O
  '\uE34E\uE286': '\u1841\u1823', // O
  '\uE34F\uE286': '\u1842\u1823', // O
  '\uE2CE\uE286': '\u182C\u1823', // O
  '\uE2E1\uE286': '\u182D\u1823', // O
  '\uE2C2\uE287': '\u182A\u1823', // O
  '\uE2C9\uE287': '\u182B\u1823', // O
  '\uE32E\uE287': '\u1839\u1823', // O
  '\uE334\uE287': '\u183A\u1823', // O
  '\uE33A\uE287': '\u183B\u1823', // O
  '\uE2B3\uE28E': '\u1828\u1824', // U
  '\uE2F1\uE28E': '\u182E\u1824', // U
  '\uE2F7\uE28E': '\u182F\u1824', // U
  '\uE2FD\uE28E': '\u1830\u1824', // U
  '\uE303\uE28E': '\u1831\u1824', // U
  '\uE308\uE28E': '\u1832\u1824', // U
  '\uE315\uE28E': '\u1834\u1824', // U
  '\uE319\uE28E': '\u1835\u1824', // U
  '\uE31E\uE28E': '\u1836\u1824', // U
  '\uE323\uE28E': '\u1837\u1824', // U
  '\uE329\uE28E': '\u1838\u1824', // U
  '\uE33F\uE28E': '\u183C\u1824', // U
  '\uE342\uE28E': '\u183D\u1824', // U
  '\uE345\uE28E': '\u183E\u1824', // U
  '\uE348\uE28E': '\u183F\u1824', // U
  '\uE34B\uE28E': '\u1840\u1824', // U
  '\uE34E\uE28E': '\u1841\u1824', // U
  '\uE34F\uE28E': '\u1842\u1824', // U
  '\uE2CE\uE28E': '\u182C\u1824', // U
  '\uE2E1\uE28E': '\u182D\u1824', // U
  '\uE2C2\uE28F': '\u182A\u1824', // U
  '\uE2C9\uE28F': '\u182B\u1824', // U
  '\uE32E\uE28F': '\u1839\u1824', // U
  '\uE334\uE28F': '\u183A\u1824', // U
  '\uE33A\uE28F': '\u183B\u1824', // U
  // Corresponding to original: 6. Consonant + OE|UE
  '\uE2B3\uE297': '\u1828\u1825', // OE
  '\uE2F1\uE297': '\u182E\u1825', // OE
  '\uE2F7\uE297': '\u182F\u1825', // OE
  '\uE2FD\uE297': '\u1830\u1825', // OE
  '\uE303\uE297': '\u1831\u1825', // OE
  '\uE308\uE297': '\u1832\u1825', // OE
  '\uE315\uE297': '\u1834\u1825', // OE
  '\uE319\uE297': '\u1835\u1825', // OE
  '\uE31E\uE297': '\u1836\u1825', // OE
  '\uE323\uE297': '\u1837\u1825', // OE
  '\uE329\uE297': '\u1838\u1825', // OE
  '\uE33F\uE297': '\u183C\u1825', // OE
  '\uE342\uE297': '\u183D\u1825', // OE
  '\uE345\uE297': '\u183E\u1825', // OE
  '\uE348\uE297': '\u183F\u1825', // OE
  '\uE34B\uE297': '\u1840\u1825', // OE
  '\uE34E\uE297': '\u1841\u1825', // UE
  '\uE34F\uE297': '\u1842\u1825', // UE
  '\uE2D4\uE298': '\u182C\u1825', // OE
  '\uE2E6\uE298': '\u182D\u1825', // OE
  '\uE2C2\uE298': '\u182A\u1825', // OE
  '\uE2C9\uE298': '\u182B\u1825', // OE
  '\uE32E\uE298': '\u1839\u1825', // OE
  '\uE334\uE298': '\u183A\u1825', // OE
  '\uE33A\uE298': '\u183B\u1825', // OE
  '\uE2B3\uE2A4': '\u1828\u1826', // UE
  '\uE2F1\uE2A4': '\u182E\u1826', // UE
  '\uE2F7\uE2A4': '\u182F\u1826', // UE
  '\uE2FD\uE2A4': '\u1830\u1826', // UE
  '\uE303\uE2A4': '\u1831\u1826', // UE
  '\uE308\uE2A4': '\u1832\u1826', // UE
  '\uE315\uE2A4': '\u1834\u1826', // UE
  '\uE319\uE2A4': '\u1835\u1826', // UE
  '\uE31E\uE2A4': '\u1836\u1826', // UE
  '\uE323\uE2A4': '\u1837\u1826', // UE
  '\uE329\uE2A4': '\u1838\u1826', // UE
  '\uE33F\uE2A4': '\u183C\u1826', // UE
  '\uE342\uE2A4': '\u183D\u1826', // UE
  '\uE345\uE2A4': '\u183E\u1826', // UE
  '\uE348\uE2A4': '\u183F\u1826', // UE
  '\uE34B\uE2A4': '\u1840\u1826', // UE
  '\uE34E\uE2A4': '\u1841\u1826', // UE
  '\uE34F\uE2A4': '\u1842\u1826', // UE
  '\uE2D4\uE2A5': '\u182C\u1826', // UE
  '\uE2E6\uE2A5': '\u182D\u1826', // UE
  '\uE2C2\uE2A5': '\u182A\u1826', // UE
  '\uE2C9\uE2A5': '\u182B\u1826', // UE
  '\uE32E\uE2A5': '\u1839\u1826', // UE
  '\uE334\uE2A5': '\u183A\u1826', // UE
  '\uE33A\uE2A5': '\u183B\u1826', // UE
  // Corresponding to original: 7. DA + Vowel
  '\uE310\uE268': '\u1833\u1820',
  '\uE310\uE273': '\u1833\u1821',
  '\uE310\uE27B': '\u1833\u1822',
  '\uE310\uE286': '\u1833\u1823',
  '\uE310\uE28E': '\u1833\u1824',
  '\uE310\uE297': '\u1833\u1825',
  '\uE310\uE2A4': '\u1833\u1826',
  '\uE310\uE2AF': '\u1833\u1827',

  // Corresponding to original: 8. SHA + I
  '\uE303\uE27B': '\u1831\u1822',
};

const Map<String, String> _fixedSuffixesMenkToUni = {
  // A
  '\uE263\uE26A': '\u180E\u1820',
  // E
  '\uE263\uE274': '\u180E\u1821',
  // ACHA
  '\uE263\uE267\uE317\uE268': '\u180E\u1820\u1834\u1820',
  // ACHAGAN
  '\uE263\uE267\uE317\uE26C\uE2EA\uE26C\uE2B5':
      '\u180E\u1820\u1834\u1820\u182D\u1820\u1828',
  // I
  '\uE263\uE282': '\u180E\u1822',
  // IYAR
  '\uE263\uE280\uE321\uE26C\uE325': '\u180E\u1822\u1836\u1820\u1837',
  // IYER
  '\uE263\uE280\uE321\uE276\uE325': '\u180E\u1822\u1836\u1821\u1837',
  // IYAN
  '\uE263\uE280\uE321\uE26C\uE2B5': '\u180E\u1822\u1836\u1820\u1828',
  // IYEN
  '\uE263\uE280\uE321\uE276\uE2B5': '\u180E\u1822\u1836\u1821\u1828',
  // U
  '\uE263\uE28D': '\u180E\u1824',
  // UE
  '\uE263\uE2A3': '\u180E\u1826',
  // UN
  '\uE263\uE292\uE2B5': '\u180E\u1824\u1828',
  // UEN
  '\uE263\uE2AC\uE2B5': '\u180E\u1826\u1828',
  // UD
  '\uE263\uE292\uE311': '\u180E\u1824\u1833',
  // UED
  '\uE263\uE2AC\uE311': '\u180E\u1826\u1833',
  // CHU
  '\uE263\uE315\uE28D': '\u180E\u1834\u1824',
  // CHUE
  '\uE263\uE315\uE2A3': '\u180E\u1834\u1826',
  // TU
  '\uE263\uE309\uE28D': '\u180E\u1832\u1824',
  // TUE
  '\uE263\uE309\uE2A3': '\u180E\u1832\u1826',
  // TUER
  '\uE263\uE309\uE2AB\uE325': '\u180E\u1832\u1826\u1837',
  // TUENI
  '\uE263\uE309\uE2AB\uE2B7\uE27B': '\u180E\u1832\u1826\u1828\u1822',
  // YUEGEN
  '\uE263\uE31E\uE2AB\uE2EB\uE277\uE2B5':
      '\u180E\u1836\u1826\u182D\u1821\u1828',
  // LUEGE
  '\uE263\uE2F8\uE2AB\uE2EB\uE275': '\u180E\u182F\u1826\u182D\u1821',
  // NUEGUED
  '\uE263\uE2B3\uE2AB\uE2ED\uE2AC\uE311':
      '\u180E\u1828\u1826\u182D\u1826\u1833',
  // NUEGEN
  '\uE263\uE2B3\uE2AB\uE2EB\uE276\uE2B5':
      '\u180E\u1828\u1826\u182D\u1821\u1828',
  // YUEM
  '\uE263\uE31E\uE2AB\uE2F3': '\u180E\u1836\u1826\u182E',
  // YUEMSEN
  '\uE263\uE31E\uE2AB\uE2F5\uE301\uE276\uE2B5':
      '\u180E\u1836\u1826\u182E\u1830\u1821\u1828',
  // QU
  '\uE263\uE2D4\uE2A7': '\u180E\u182C\u1826',
  // YI
  '\uE263\uE321\uE27B': '\u180E\u1836\u1822',
  // YIN
  '\uE263\uE321\uE27E\uE2B5': '\u180E\u1836\u1822\u1828',
  // DAGAN
  '\uE263\uE310\uE26C\uE2EA\uE26C\uE2B5':
      '\u180E\u1833\u1820\u182D\u1820\u1828',
  // DEGEN
  '\uE263\uE310\uE276\uE2EB\uE277\uE2B5':
      '\u180E\u1833\u1821\u182D\u1821\u1828',
  // DU
  '\uE263\uE310\uE28D': '\u180E\u1833\u1824',
  // DUE
  '\uE263\uE310\uE2A3': '\u180E\u1833\u1826',
  // DAG
  '\uE263\uE310\uE26C\uE2E7': '\u180E\u1833\u1820\u182D',
  // DEG
  '\uE263\uE310\uE276\uE2E8': '\u180E\u1833\u1821\u182D',
  // DAQI
  '\uE263\uE310\uE26C\uE2DA\uE27C': '\u180E\u1833\u1820\u182C\u1822',
  // DEQI
  '\uE263\uE310\uE276\uE2DA\uE27C': '\u180E\u1833\u1821\u182C\u1822',
  // DUR
  '\uE263\uE310\uE291\uE325': '\u180E\u1833\u1824\u1837',
  // DUER
  '\uE263\uE310\uE2AB\uE325': '\u180E\u1833\u1826\u1837',
  // DUNI
  '\uE263\uE310\uE291\uE2B7\uE27B': '\u180E\u1833\u1824\u1828\u1822',
  // DUENI
  '\uE263\uE310\uE2AB\uE2B7\uE27B': '\u180E\u1833\u1826\u1828\u1822',
  // DUGAR
  '\uE263\uE310\uE291\uE2EC\uE26C\uE325':
      '\u180E\u1833\u1824\u182D\u1820\u1837',
  // DUEGER
  '\uE263\uE310\uE2AB\uE2EB\uE276\uE325':
      '\u180E\u1833\u1826\u182D\u1821\u1837',
  // DA
  '\uE263\uE310\uE268': '\u180E\u1833\u1820',
  // DE
  '\uE263\uE310\uE273': '\u180E\u1833\u1821',
  // UU (not a suffix but adding for backward compatibility)
  '\uE263\uE292\uE28D': '\u180E\u1824\u1824',
  // UEUE (not a suffix but adding for backward compatibility)
  '\uE263\uE2AC\uE2A3': '\u180E\u1826\u1826',
};

const Map<String, String> _fixedWordsMenkToUni = {
  // UU
  '\uE292\uE28D': '\u1824\u1824',
  // UEUE
  '\uE2AC\uE2A3': '\u1826\u1826',
  // BUEUE
  '\uE2C2\uE2AC\uE2A3': '\u182A\u1826\u1826',
};
