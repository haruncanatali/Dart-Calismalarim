import 'dart:io';

void main(List<String> args) {
  List<int> intElemanlar = List.filled(5, 9, growable: false);
  print(intElemanlar);

  List karisik = List.filled(5, 0);
  karisik[2] = "Haruncan";
  print(karisik);

  List<int> sabitOlmayan = [];
  sabitOlmayan.add(0);
  sabitOlmayan.add(1);
  sabitOlmayan.add(2);
  sabitOlmayan.add(3);
  print(sabitOlmayan);

  List<int> sabitiBuyutme = List.filled(5, 0, growable: true);
  sabitiBuyutme.add(11);
  print(sabitiBuyutme);

  if (sabitiBuyutme.isNotEmpty && !sabitiBuyutme.isEmpty) {
    print(sabitiBuyutme.first);
    print(sabitiBuyutme.last);
    print(sabitiBuyutme.length);
    sabitiBuyutme.remove(11); //değerden
    sabitiBuyutme.removeAt(1); // indexten
    sabitiBuyutme.contains(11);
    sabitiBuyutme.elementAt(1); // 1. indisteli elemanı ver
    sabitiBuyutme.indexOf(11); // value indexi ver
    sabitiBuyutme.shuffle(); // elemaları karıştrıyor
  }

  sabitiBuyutme = List.empty(growable: true); // sabitiBuyutme.clear();
  print(sabitiBuyutme);

  var kume = Set();
  kume.add("Haruncan");
  kume.add("Haruncan");
  kume.add("Haruncan");
  kume.add("Fatih");

  for (String item in kume) {
    print(item);
  }

  Set<int> numaralar = Set.from([1, 2, 3, 4, 3, 3, 3, 3, 4, 5, 6, 7, 8, 0]);
  for (int item in numaralar) {
    print(item);
  }

  Map<String, int> alanKodlari = {"Ankara": 1, "Bursa": 2, "Zonguldak": 3};

  Map<String, dynamic> harun = {
    "Ad": "Haruncan",
    "Soyad": "Atalı",
    "Yas": 23,
    "MuhendisMi": true
  };

  print(harun["Yas"]);

  for (var item in harun.entries) {
    print("Key değeri : ${item.key} - Value değeri : ${item.value}");
  }
}
