void main(List<String> args) {
  Canli canli1 = Kedi.Olustur("0 RH+", "Kedigiller");

  print("${canli1.familya} ${canli1.kanGrubu}");
}

class Canli {
  String? kanGrubu, familya;
  bool? durum;

  String KanGrubunuGoster() {
    return this.kanGrubu!;
  }

  Canli.KanGrubunaGoreOlustur(this.kanGrubu) {
    this.familya = "tanimsiz";
  }

  Canli(this.durum) {}
}

class Kedi extends Canli {
  // ilk olarak üst sınıfın kurucu metodu çalışır
  Kedi.Olustur(String k, String f):super(true) {
    this.familya = f;
    this.kanGrubu = k;
  }
}
