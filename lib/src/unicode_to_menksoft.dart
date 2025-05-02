// String unicodeToMenksoft(String unicode) {
//   final output = StringBuffer();
//   final words = unicode.split(' ').iterator;

//   return output.toString();
// }

// class TextRuns extends Iterable<String> {
//   TextRuns(this.text);
//   final String text;

//   @override
//   Iterator<String> get iterator => TextRunIterator(text);
// }

// class TextRunIterator implements Iterator<String> {
//   TextRunIterator(this.text);
//   final String text;

//   int _startIndex = 0;
//   int _endIndex = 0;

//   String? _currentTextRun;

//   @override
//   String get current => _currentTextRun as String;

//   @override
//   bool moveNext() {
//     _startIndex = _endIndex;
//     if (_startIndex == text.length) {
//       _currentTextRun = null;
//       return false;
//     }
//     final next = text.indexOf(breakChar, _startIndex);
//     _endIndex = (next != -1) ? next + 1 : text.length;
//     _currentTextRun = text.substring(_startIndex, _endIndex);
//     return true;
//   }

//   final breakChar = RegExp(' ');
// }
