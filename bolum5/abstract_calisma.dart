void main(List<String> args) {
  Sekil model = Dikdortgen.KenarlariAl(3, 4);
  print(model.AlanHesapla().toString());
  model.Selamla();
}

abstract class Sekil {
  int? en, boy;

  int AlanHesapla();
  int CevreHesapla();

  void Selamla() {
    print("Hesaplama basarili oldu!");
  }
}

class Dikdortgen extends Sekil {
  Dikdortgen.KenarlariAl(int en, int boy) {
    this.en = en;
    this.boy = boy;
  }

  @override
  int AlanHesapla() {
    return this.en! * this.boy!;
  }

  @override
  int CevreHesapla() {
    return (this.en! * 2) + (this.boy! * 2);
  }

  void Selamla() {
    super.Selamla();
  }
}
