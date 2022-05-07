void main(List<String> args) {
  Ogrenci o = Ogrenci.Doldur("213123", "39512341");

  Kutuphane k = Kutuphane<Uye>(o);
  k.MesajYaz();

  print(genericMetotNoCarpiIki(o));
}

int genericMetotNoCarpiIki<TEntity extends Uye>(TEntity entity) {
  return int.parse(entity.uyeNo!) * 2;
}

class deneme {}

class Uye {
  String? uyeNo = null;
}

class Ogrenci extends Uye {
  String? ogrNo = null;
  Ogrenci.Doldur(String ogrNo, String uyeNo) {
    this.ogrNo = ogrNo;
    this.uyeNo = uyeNo;
  }
}

class Kutuphane<TEntity extends Uye> {
  final TEntity? entity;
  Kutuphane(this.entity);
  void MesajYaz() {
    print(entity!.uyeNo);
  }
}
