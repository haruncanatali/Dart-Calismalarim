void main(List<String> args) {
  bool deneme = true;
  if (deneme) {
    print("Deneme başarılı");
  }

  int s = 1, s1 = 2;

  if (s > 0 && s1 < 3) {
    print("kontrol baasarili");
  } else if (s < 0) {
    print("asdsa");
  } else {
    print("adasda");
  }

  String? nDeneme = null;
  String ad_durum = nDeneme ?? "Haruncan";
  int int_drm = s > 0 ? 11 : 12;

  switch (ad_durum) {
    case "Haruncan":
      print("Dogru!");
      break;
    default:
      print("Yanlış");
      break;
  }
}
