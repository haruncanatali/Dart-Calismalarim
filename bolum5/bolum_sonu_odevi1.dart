import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<Ogrenci> ogrenciler = List.filled(20, Ogrenci.BosOlustur());

  for (int i = 0; i < 20; i++) {
    ogrenciler[i] = Ogrenci.RastgeleDegerlerIleOlustur();
  }

  for (int i = 0; i < ogrenciler.length; i++) {
    print(
        "${i + 1}.öğrencinin Id Değeri : ${ogrenciler[i].id} Not Değeri : ${ogrenciler[i].notu}");
  }
}

class Ogrenci {
  int? id, notu;

  Ogrenci.Olustur(this.id, this.notu);
  Ogrenci.BosOlustur();

  factory Ogrenci.RastgeleDegerlerIleOlustur() {
    sleep(Duration(
        days: 0,
        hours: 0,
        microseconds: 0,
        minutes: 0,
        milliseconds: 300,
        seconds: 0));
    int not_degeri = Random().nextInt(1000000);
    int id_degeri = Random().nextInt(1000000);
    return Ogrenci.Olustur(id_degeri, not_degeri);
  }
}
