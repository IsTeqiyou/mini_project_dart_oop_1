
// abstract class Ticketable {
//   double getHargaTiket();
// }

// abstract class Passenger {
//   String _nama; 

//   Passenger(this._nama);

 
//   String get nama => _nama;
//   set nama(String value) {
//     if (value.isNotEmpty) _nama = value;
//   }

 
//   String toRupiah(double nilai) {
//     return "Rp ${nilai.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}";
//   }

  
//   void tampilkanDasar() {
//     print("Nama Penumpang: $nama");
//     print("Tipe: $runtimeType");
//   }

//   void infoTiket();
// }


// class EconomyPassenger extends Passenger implements Ticketable {
//   EconomyPassenger(String nama) : super(nama);

//   @override
//   double getHargaTiket() => 100000;

//   @override
//   void infoTiket() {
//     print("=== Tiket Kereta Ekonomi ===");
//     super.tampilkanDasar();
//     print("Harga: ${toRupiah(getHargaTiket())}");
//     print("Fasilitas: Kursi Standar");
//     print("----------------------\n");
//   }
// }


// class BusinessPassenger extends Passenger implements Ticketable {
//   BusinessPassenger(String nama) : super(nama);

//   @override
//   double getHargaTiket() => 250000;

//   @override
//   void infoTiket() {
//     print("=== Tiket Kereta Bisnis ===");
//     super.tampilkanDasar();
//     print("Harga: ${toRupiah(getHargaTiket())}");
//     print("Fasilitas: Kursi legrest, Snack");
//     print("----------------------\n");
//   }
// }


// class FirstClassPassenger extends Passenger implements Ticketable {
//   FirstClassPassenger(String nama) : super(nama);

//   @override
//   double getHargaTiket() => 400000;

//   @override
//   void infoTiket() {
//     print("=== Tiket Kereta First Class ===");
//     super.tampilkanDasar();
//     print("Harga: ${toRupiah(getHargaTiket())}");
//     print("Fasilitas: Kursi luxury, snack, meal, welcome drink");
//     print("----------------------\n");
//   }
// }


// void main() {
 
//   List<Passenger> passengers = [
//     EconomyPassenger("Budi"),
//     BusinessPassenger("Andi"),
//     FirstClassPassenger("Sinta"),
//   ];

  
//   for (var p in passengers) {
//     p.infoTiket();
//   }
// }


abstract class CetakTiket {
  void cetakTiket();
}


abstract class Penumpang {
  String _nama;
  String _rute;

  // Initializing Formal Parameter
  Penumpang(this._nama, this._rute);

 
  String get nama => _nama;
  set nama(String value) {
    if (value.isNotEmpty) _nama = value;
  }

  String get rute => _rute;
  set rute(String value) => _rute = value;

 
  String formatRp(int harga) => "Rp $harga";

 
  void infoDasar() {
    print("Nama Penumpang : $_nama");
    print("Rute           : $_rute");
  }

 
  int hargaTiket();
}


class KRL extends Penumpang implements CetakTiket {
  KRL(String nama, String rute) : super(nama, rute);

  // Named Constructors untuk rute KRL
  KRL.bogor(String nama) : super(nama, "Bogor - Jakarta Kota");
  KRL.bekasi(String nama) : super(nama, "Bekasi - Kampung Bandan");
  KRL.tangerang(String nama) : super(nama, "Tangerang - Duri");

  @override
  int hargaTiket() => 3000;

  @override
  void cetakTiket() {
    print("=== Tiket Commuter Line (KRL) ===");
    super.infoDasar();
    print("Tipe           : $runtimeType");
    print("Harga          : ${formatRp(hargaTiket())}");
    print("Fasilitas      : AC, Gerbong Khusus Wanita");
    print("---------------------------------");
  }
}


class LRT extends Penumpang implements CetakTiket {
  LRT(String nama, String rute) : super(nama, rute);


  LRT.harjamukti(String nama) : super(nama, "Dukuh Atas - Harjamukti");
  LRT.jatimulya(String nama) : super(nama, "Dukuh Atas - Jatimulya");

  @override
  int hargaTiket() => 15000;

  @override
  void cetakTiket() {
    print("=== Tiket LRT Jakarta ===");
    super.infoDasar();
    print("Tipe           : $runtimeType");
    print("Harga          : ${formatRp(hargaTiket())}");
    print("Fasilitas      : Stasiun Modern, Kursi Empuk");
    print("---------------------------------");
  }
}


class MRT extends Penumpang implements CetakTiket {
  // MRT hanya 1 rute utama
  MRT(String nama) : super(nama, "Lebak Bulus - Bundaran HI");

  @override
  int hargaTiket() => 14000;

  @override
  void cetakTiket() {
    print("=== Tiket MRT Jakarta ===");
    super.infoDasar();
    print("Tipe           : $runtimeType");
    print("Harga          : ${formatRp(hargaTiket())}");
    print("Fasilitas      : Kecepatan Tinggi, Area Steril");
    print("---------------------------------");
  }
}


void main() {
  List<Penumpang> listPenumpang = [
    KRL.bogor("Budi"),
    KRL.bekasi("Wawan"),
    KRL.tangerang("Joko"),
    LRT.harjamukti("Andi"),
    LRT.jatimulya("Dewi"),
    MRT("Sinta")
  ];

  print("STASIUN MANGGARAI - SISTEM INFORMASI TIKET\n");

  for (var p in listPenumpang) {
    if (p is KRL) {
      p.cetakTiket();
    } else if (p is LRT) {
      p.cetakTiket();
    } else if (p is MRT) {
      p.cetakTiket();
    }
    print(""); 
  }
}