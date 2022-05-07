
void main(List<String> args) {
  MesajYazdir();
  MesajYazdir1("Haruncan");
  int cevre = AlanHesapla(7, 10);
  print(cevre);
  print(SayilariCarp(2, 3).toString());
  print(Opsiyonel(3, 3).toString());
  print(CevreHesapla(3, 3));
}

MesajYazdir() {
  print("Hello World!");
}

MesajYazdir1(String mesaj) {
  print(mesaj);
}

AlanHesapla(int k, int k1) {
  return k * k1;
}

int CevreHesapla(int k, int k2) {
  return k + k2;
}

SayilariCarp(int k, int k1) => k * k1;

Opsiyonel(int k, int k1, [int? k3 = 0]) {
  return k + k1 + k3!;
}
