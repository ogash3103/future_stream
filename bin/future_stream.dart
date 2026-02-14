Future<void> main() async {

  final value = await addTwoNumber(3, 4);
  print(value);


  print("Starting long operation…");

  await Future.delayed(Duration(seconds: 5));

  print("Long operation complete!");

}

Future<int> addTwoNumber(int a, int b) async{

  await Future.delayed(Duration(seconds: 3));

  return a + b;
}
