
abstract class Peminjaman {
  void pinjam();
  void kembalikan();
}


abstract class Buku {
  String _judul = "";
  int _stok = 0;

  
  String get judul => _judul;
  set judul(String value) => _judul = value;

  
  int get stok => _stok;
  set stok(int value) => _stok = value;
}


class BukuPerpustakaan extends Buku implements Peminjaman {
  
  void cetakInfo() {
    print("Judul : $judul");
    print("Stok : $stok");
    print("==============================");
  }

  @override
  void pinjam() {
    if (stok > 0) {
      stok = stok - 1; 
      print("Buku dipinjam");
    } else {
      print("stok habis");
    }
  }

  @override
  void kembalikan() {
    stok = stok + 1;
    print("Buku dikembalikan");
  }
}

void main() {
  
  var buku1 = BukuPerpustakaan();
  
  
  buku1.judul = "Matematika";
  buku1.stok = 2;

  print("====== buku perpustakaan ======");
  buku1.cetakInfo();

  
  buku1.pinjam();
  buku1.cetakInfo();

  
  buku1.kembalikan();
  buku1.cetakInfo();
}