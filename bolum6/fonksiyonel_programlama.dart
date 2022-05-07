import 'dart:math';

void main(List<String> args) {
  var topla = (int a, int b) {
    return a + b;
  };
  var kareAl = (int s) => pow(s, 2);

  var toplam = topla(2, 3);

  print(toplam);

  List<String> liste = ["Haruncan", "Atalı", "Trabzonspor"];
  liste.forEach((element) {
    print("${element}");
  });

  print("*******");

  liste.forEach(Goster1);
}

void Goster1(String val) {
  print(val);
}
