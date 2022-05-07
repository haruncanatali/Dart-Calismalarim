void main(List<String> args) {
  for (int i = 0; i < 100; i++) {
    //print("Haruncan");
  }

  List isimListesi = ["Haruncan", "Samet", "Bilal", "Fatih", "Ali"];

  for (var item in isimListesi) {
    print("${item + "yihiii"}");
  }

  int counter = 0;

  while (counter < 10) {
    //print("Hello");
    counter++;
  }

  int counter2 = 0;

  do {
    print(counter2);
    counter2++;
  } while (counter2 < 5);
}
