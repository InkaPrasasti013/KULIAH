import 'dart:io';

void main() {
  // Daftar menu makanan baru
  Map<String, int> menuMakanan = {
    "Nasi Goreng Seafood": 28000,
    "Ayam Geprek Sambal Ijo": 23000,
    "Sate Kambing": 32000,
    "Mie Aceh Spesial": 25000,
    "Rawon Daging Sapi": 30000,
    "Gudeg Jogja": 22000,
  };

  // Daftar menu minuman baru
  Map<String, int> menuMinuman = {
    "Es Cincau Hijau": 9000,
    "Es Kopi Latte": 13000,
    "Susu Jahe Hangat": 10000,
    "Jus Alpukat": 12000,
    "Es Blewah Segar": 8000,
    "Teh Manis Dingin": 6000,
  };

  bool lanjut = true;

  while (lanjut) {
    List<String> pesanan = [];
    int totalHarga = 0;

    print("===== SELAMAT DATANG DI RESTORAN INKA =====");

    // === PILIH MAKANAN ===
    print("\n--- Menu Makanan ---");
    int i = 1;
    menuMakanan.forEach((nama, harga) {
      print("$i. $nama - Rp$harga");
      i++;
    });

    while (true) {
      stdout.write("Pilih makanan (nomor), atau ketik 0 jika selesai: ");
      String? input = stdin.readLineSync();
      if (input == null || input == "0") break;

      int? nomor = int.tryParse(input);
      if (nomor != null && nomor > 0 && nomor <= menuMakanan.length) {
        String namaMenu = menuMakanan.keys.elementAt(nomor - 1);
        int hargaMenu = menuMakanan[namaMenu]!;
        pesanan.add(namaMenu);
        totalHarga += hargaMenu;
        print("✅ $namaMenu ditambahkan (Rp$hargaMenu). Total sementara: Rp$totalHarga");
      } else {
        print("⚠️ Pilihan tidak valid!");
      }
    }

    // === PILIH MINUMAN (setelah makanan) ===
    print("\n--- Menu Minuman ---");
    int j = 1;
    menuMinuman.forEach((nama, harga) {
      print("$j. $nama - Rp$harga");
      j++;
    });

    while (true) {
      stdout.write("Pilih minuman (nomor), atau ketik 0 jika selesai: ");
      String? input = stdin.readLineSync();
      if (input == null || input == "0") break;

      int? nomor = int.tryParse(input);
      if (nomor != null && nomor > 0 && nomor <= menuMinuman.length) {
        String namaMenu = menuMinuman.keys.elementAt(nomor - 1);
        int hargaMenu = menuMinuman[namaMenu]!;
        pesanan.add(namaMenu);
        totalHarga += hargaMenu;
        print("✅ $namaMenu ditambahkan (Rp$hargaMenu). Total sementara: Rp$totalHarga");
      } else {
        print("⚠️ Pilihan tidak valid!");
      }
    }

    // === RINGKASAN PESANAN ===
    if (pesanan.isEmpty) {
      print("\nAnda tidak memesan apapun.");
    } else {
      print("\n=== RINGKASAN PESANAN ANDA ===");
      for (var item in pesanan) {
        int harga = menuMakanan[item] ?? menuMinuman[item] ?? 0;
        print("- $item (Rp$harga)");
      }
      print("Total Harga Akhir: Rp$totalHarga");

      // === PEMBAYARAN ===
      while (true) {
        stdout.write("\nMasukkan jumlah uang pembayaran: Rp");
        String? bayarInput = stdin.readLineSync();
        int? bayar = int.tryParse(bayarInput ?? "0");

        if (bayar != null && bayar >= totalHarga) {
          int kembalian = bayar - totalHarga;
          print("💰 Pembayaran berhasil! Kembalian Anda: Rp$kembalian");
          break;
        } else {
          print("❌ Uang tidak cukup, coba lagi!");
        }
      }
    }

    // === KONFIRMASI PESAN LAGI ===
    stdout.write("\nApakah Anda ingin pesan lagi? (y/n): ");
    String? jawab = stdin.readLineSync();
    if (jawab == null || jawab.toLowerCase() != "y") {
      lanjut = false;
      print("\n🍽️ Terima kasih telah berkunjung ke *Restoran Inka Delight*! Sampai jumpa!");
    }
  }
}
