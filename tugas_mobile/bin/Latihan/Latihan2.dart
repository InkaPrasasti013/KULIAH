import 'dart:io';

void main() {
  // Panjang dan lebar dimasukkan langsung melalui variabel
  double panjang = 10;
  double lebar = 5;

  // Hitung luas dan keliling
  double luas = panjang * lebar;
  double keliling = 2 * (panjang + lebar);

  // Tampilkan hasil dengan format rapi (bilangan bulat)
  stdout.writeln("Panjang = ${panjang.toInt()}");
  stdout.writeln("Lebar = ${lebar.toInt()}");
  stdout.writeln("Luas = ${luas.toInt()}");
  stdout.writeln("Keliling = ${keliling.toInt()}");
}