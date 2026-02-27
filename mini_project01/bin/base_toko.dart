abstract class Hitung {
  double tot();
}

mixin Disc {
  double d(double h) => h * 0.9;
}

mixin Gar on Item {
  String get g => "\n+ Garansi Aktif";
}

abstract class Item {
  String n; double p;
  Item(this.n, this.p);

  void info(String t, double h, [String x = ""]) {
    print("[$t] $n");
    print("Total: Rp ${h.toInt()}$x");
    print("-" * 20);
  }
}