import 'produk_toko.dart';

void main() {
  var list = [
    Laptop("Macbook", 15e6),
    PCGame("ROG", 20e6),
    Office("Dell", 7e6)
  ];

  for (var i in list) {
    if (i is Laptop) i.s();
    if (i is PCGame) i.s();
    if (i is Office) i.s();
  }
}