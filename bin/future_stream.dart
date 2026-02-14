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
