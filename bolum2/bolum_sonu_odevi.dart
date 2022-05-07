import 'dart:io';

void main(List<String> args) {
  List<ogrenci> liste = [];
  int vize_notu, final_notu;
  for (int i = 0; i < 2; i++) {
    print("${i + 1}.öğrencinin vizesini giriniz:");
    vize_notu = int.parse(stdin.readLineSync()!.toString());
    print("${i + 1}.öğrencinin finalini giriniz:");
    final_notu = int.parse(stdin.readLineSync()!.toString());

    ogrenci o = new ogrenci(vize_notu, final_notu);
    liste.add(o);
  }

  for (int i = 0; i < liste.length; i++) {
    print("${i + 1}.öğrenicinin ortalaması : ${liste[i].ort}");
  }
}

class ogrenci {
  int? n1, n2;
  double? ort;

  ogrenci(int not1, int not2) {
    this.n1 = not1;
    this.n2 = not2;
    this.ort = (this.n1!.toDouble() * 0.25) + (this.n2!.toDouble() * 0.75);
  }
}
