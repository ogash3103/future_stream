Future<void> main() async {

  // final value = await addTwoNumber(3, 4);
  // print(value);
  //
  //
  // print("Starting long operation…");
  //
  // await Future.delayed(Duration(seconds: 5));
  //
  // print("Long operation complete!");

  int value = 50;

  for(final item in multiplesOf7UpTo(value)) {
    print(item);
  }

  print('=========');

  int n = 100;
  int m = 10;
  int k = 20;

  for(final item in specialMultiplesGenerator(n, m, k)) {
    print(item);
  }

  int nS = 10;
  for(final item in numberWordsUpTo(nS)) {
    print(item);
  }
}
Iterable<String> numberWordsUpTo(int n) sync* {
  for(int i = 1; i <= n; i++) {
    yield "$i => ${numberToWord(i)}";
  }
}


String numberToWord(int n) {
  switch (n) {
    case 1: return "bir";
    case 2: return "ikki";
    case 3: return "uch";
    case 4: return "to‘rt";
    case 5: return "besh";
    case 6: return "olti";
    case 7: return "yetti";
    case 8: return "sakkiz";
    case 9: return "to‘qqiz";
    case 10: return "o‘n";
    default: return "noma’lum";
  }
}


Iterable<int> multiplesOf7UpTo(int n) sync* {
  for(int i = 7; i <= n; i += 7) {
    yield i;
  }
}

Iterable<int> specialMultiplesGenerator(int n, int m, int k) sync*{
  for(int i = m; i <= n; i += m) {
    if(i % k == 0) {
      yield i ~/ k;
    } else {
      yield i;
    }
  }
}

// Future<int> addTwoNumber(int a, int b) async{
//
//   await Future.delayed(Duration(seconds: 3));
//
//   return a + b;
// }
