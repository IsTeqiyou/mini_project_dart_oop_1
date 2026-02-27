import 'base_toko.dart';

class Laptop extends Item with Disc, Gar implements Hitung {
  Laptop(n, p) : super(n, p);
  @override double tot() => d(p);
  void s() => info("LAPTOP", tot(), g);
}

class PCGame extends Item with Gar implements Hitung {
  PCGame(n, p) : super(n, p);
  @override double tot() => p + 500000;
  void s() => info("PC GAME", tot(), g);
}

class Office extends Item implements Hitung {
  Office(n, p) : super(n, p);
  @override double tot() => p;
  void s() => info("OFFICE", tot());
}