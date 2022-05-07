void main(List<String> args) {}

class Urun {
  int? urunId;
}

class Musteri {
  int? musteriId;
}

class Sepet implements Musteri,Urun{
  @override
  int? musteriId;

  @override
  int? urunId;

}


// extends yerine implements kullanılıyor.
// extends yazarak birden fazla kalıtım alınılabiliyor. (interface case yok)
