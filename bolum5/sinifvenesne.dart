void main(List<String> args) {
  var harun = Ogrenci.BilgisiOlmayanOgrenci();
  var bilal = Ogrenci.AdSoyadAlan("Bilal", "Karaman");
  bilal.YasAta = 23;
  print("${bilal.AdGetir} ${bilal.soyad} ${bilal.yas}");

  var fatih = Ogrenci.factoryKurucusu("a", "b");
  print("${fatih.ad} ${fatih.soyad}");
}

class Ogrenci {
  int? yas;
  String? ad, soyad;

  Ogrenci(String a, String b, int c) {
    this.yas = c;
    this.ad = a;
    this.soyad = b;
  }

  Ogrenci.BilgisiOlmayanOgrenci();

  Ogrenci.AdSoyadAlan(this.ad, this.soyad);

  factory Ogrenci.factoryKurucusu(String ad, String soyad) {
    if (ad.isNotEmpty &&
        ad.length > 2 &&
        soyad.isNotEmpty &&
        soyad.length > 2) {
      return Ogrenci.AdSoyadAlan(ad, soyad);
    } else {
      return Ogrenci.BilgisiOlmayanOgrenci();
    }
  }

  void set YasAta(int yas) {
    this.yas = yas;
  }

  String get AdGetir => "${this.ad} Bey/Hanım";

  String get SoyadGetir {
    return this.soyad!;
  }
}
