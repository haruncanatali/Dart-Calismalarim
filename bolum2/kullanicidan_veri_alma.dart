import 'dart:io';

void main(List<String> args) {
  String? ad = null;
  int? yas = null;
  print("Adınızı giriniz :");
  ad = stdin.readLineSync();
  print("Girilen ad : $ad");
  print("Yasinizi giriniz :");
  yas = int.parse(stdin.readLineSync()!);
}
