import 'dart:io';

void main() {
  // Meminta input skor dari pengguna
  stdout.write("Masukkan skor (0 - 100): ");
  int? skor = int.tryParse(stdin.readLineSync()!);

  // Validasi input
  if (skor == null || skor < 0 || skor > 100) {
    print("Error: Skor harus berupa angka antara 0 hingga 100.");
    return;
  }

  String grade;

  // Menentukan grade dengan conditional statement (if-else)
  if (skor >= 85 && skor <= 100) {
    grade = "A";
  } else if (skor >= 70 && skor <= 84) {
    grade = "B";
  } else if (skor >= 60 && skor <= 69) {
    grade = "C";
  } else if (skor >= 50 && skor <= 59) {
    grade = "D";
  } else {
    grade = "E";
  }

  // Output hasil
  print("Skor Anda: $skor");
  print("Grade Anda: $grade");
}
