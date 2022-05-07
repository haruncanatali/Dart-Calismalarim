void main(List<String> args) {
  double a = 10;

  try {
    a = a / 0;
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print("Sıfıra bölme hataso!");
  } catch (e) {
    print("Hata !!! ${e}");
    throw FormatException("hatata");
  } finally {
    a = 10;
    print("Son olarak a : $a");
  }

  try {
    int b = 10 ~/ int.parse("asdasd");
  } catch (e) {
    throw OzelException();
  }
}

class OzelException implements Exception {
  String mesaj = "Özel hata meydana geldi.";
  OzelException({mesaj});
  @override
  String toString() {
    // TODO: implement toString
    return "Genel kapsam mesaj";
  }
}
