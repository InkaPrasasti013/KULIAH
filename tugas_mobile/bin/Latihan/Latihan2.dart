import 'dart:io';

void main() {
  stdout.write("Masukkan umur: ");
  int umur = int.parse(stdin.readLineSync()!);

  if (umur >= 0 && umur <= 12) {
    print("Output: Anda termasuk kategori Anak-anak");
  } else if (umur >= 13 && umur <= 17) {
    print("Output: Anda termasuk kategori Remaja");
  } else if (umur >= 18 && umur <= 59) {
    print("Output: Anda termasuk kategori Dewasa");
  } else if (umur >= 60) {
    print("Output: Anda termasuk kategori Lansia");
  } else {
    print("Output: Umur tidak valid");
  }
}