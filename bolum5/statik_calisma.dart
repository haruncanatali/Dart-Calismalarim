void main(List<String> args) {
  print("PI Sayısı : ${Matematik.PI} , Dik Açı Değeri : ${Matematik.DIK}");

  final String ad = "Haruncan";
  const String soyad = "Atalı";
  // final ve const farkı çalışma zamanında değişim farkıdır.

  final DateTime model = DateTime.now(); // çalışma zamanında belli olur
  //const DateTime m = DateTime.now();  // => yapılamaz

  const Ogrenci o = Ogrenci(11, 12);
  const Ogrenci o1 = Ogrenci(11, 12);

  if (o == o1) {
    print("Eşitlik const sayesinde oldu. Hash kodları:");
    print(o.hashCode);
    print(o1.hashCode);
  }

  print("${(o.yas)}  ${(o1.yas)}");
}

class Matematik {
  static double PI = 3.14;
  static int DIK = 90;
}

class Ogrenci {
  final int yas, not;

  const Ogrenci(this.yas, this.not);
}
