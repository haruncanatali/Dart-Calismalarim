void main(List<String> args) async {
  print("Çocuk ekmek almaya gider.");
  Cagir();
  print("Kahvaltı hazır.");

  Future<String> degerSonuc = mesajDondur();
  degerSonuc.then((value) {
    print(value);
  }).catchError((e) {
    print("Hata $e");
  }).whenComplete(() {
    print("Bitti");
  });

  var deneme = await digerKullanim();
  print("Deneme");
}

void Cagir() {
  Future.delayed(Duration(seconds: 3), () {
    print("Çocuk ekmeği alır eve gelir.");
  });
}

Future<String> mesajDondur() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    try {
      int a = 1 ~/ 0;
      return ("Hellow World!");
    } catch (e) {
      throw new Exception(e);
    }
  });
  return sonuc;
}

Future<String> digerKullanim() {
  Future<String> deger = Future.delayed(Duration(seconds: 2), () {
    try {
      return "diger kullanım";
    } catch (e) {
      throw new Exception(e);
    }
  });
  return deger;
}
