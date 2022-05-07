void main(List<String> args) {
  late int a; // null için kızma

  a = 10;

  print(ikiSayiyiTopla(a: 1, b: 2));
}

int ikiSayiyiTopla({required int a, required int b}) {
  return a + b;
}
