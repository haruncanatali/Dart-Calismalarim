void main(List<String> args) async {
  Map<int, String> dictList = Map();

  dictList[1] = "Haruncan";
  dictList[2] = "Bilal";
  dictList[3] = "Fatih";
  dictList[4] = "Samet";

  var gelenDeger = await Hesapla(dictList, 3);
  print(gelenDeger);
}

Future<String> Hesapla(Map<int, String> val, int id) {
  var deger = Future.delayed(Duration(seconds: 3), () {
    for (var item in val.entries) {
      if (item.key == id) {
        return item.value;
      }
    }
    return "Kullanıcı bulunamadı";
  });

  return deger;
}
