
abstract class Ticketable {
  double getHargaTiket();
}

abstract class Passenger {
  String _nama; 

  Passenger(this._nama);

 
  String get nama => _nama;
  set nama(String value) {
    if (value.isNotEmpty) _nama = value;
  }

 
  String toRupiah(double nilai) {
    return "Rp ${nilai.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}";
  }

  
  void tampilkanDasar() {
    print("Nama Penumpang: $nama");
    print("Tipe: $runtimeType");
  }

  void infoTiket();
}


class EconomyPassenger extends Passenger implements Ticketable {
  EconomyPassenger(String nama) : super(nama);

  @override
  double getHargaTiket() => 100000;

  @override
  void infoTiket() {
    print("=== Tiket Kereta Ekonomi ===");
    super.tampilkanDasar();
    print("Harga: ${toRupiah(getHargaTiket())}");
    print("Fasilitas: Kursi Standar");
    print("----------------------\n");
  }
}


class BusinessPassenger extends Passenger implements Ticketable {
  BusinessPassenger(String nama) : super(nama);

  @override
  double getHargaTiket() => 250000;

  @override
  void infoTiket() {
    print("=== Tiket Kereta Bisnis ===");
    super.tampilkanDasar();
    print("Harga: ${toRupiah(getHargaTiket())}");
    print("Fasilitas: Kursi legrest, Snack");
    print("----------------------\n");
  }
}


class FirstClassPassenger extends Passenger implements Ticketable {
  FirstClassPassenger(String nama) : super(nama);

  @override
  double getHargaTiket() => 400000;

  @override
  void infoTiket() {
    print("=== Tiket Kereta First Class ===");
    super.tampilkanDasar();
    print("Harga: ${toRupiah(getHargaTiket())}");
    print("Fasilitas: Kursi luxury, snack, meal, welcome drink");
    print("----------------------\n");
  }
}


void main() {
 
  List<Passenger> passengers = [
    EconomyPassenger("Budi"),
    BusinessPassenger("Andi"),
    FirstClassPassenger("Sinta"),
  ];

  
  for (var p in passengers) {
    p.infoTiket();
  }
}