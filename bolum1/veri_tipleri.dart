void main(List<String> args) {
  int yas = 10;
  double maas = 10.1;
  String adSoyad = "Haruncan";
  bool basarili = true;
  var yihiii = basarili == true ? "sıgır" : "cio";

  print("Merhaba " +
      adSoyad +
      " yasiniza (" +
      yas.toString() +
      ") gore maasiniz : " +
      maas.toString());
  print(yihiii);

  double? nllSayi = null;
  print(nllSayi);

  "gereksiz";

  print("$adSoyad");
  print("${(maas * 10.11).toInt()}");
}
