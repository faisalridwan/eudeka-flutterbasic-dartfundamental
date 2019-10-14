import 'dart:io';

/**
 * DART SEDERHANA
 */

// contoh fungsi
cetakAngka(int angka) {
  // cetak nilai angka
  print(angka);
}

// fungsi utama di eksekusi
void main() {
  // deklarasi dan inisialisasi variable
  var angkaKu = 7;
  // panggil fungsi
  cetakAngka(angkaKu);
  // fungsi lainnya...
  string();
  inout();
  operators();
  percabangan();
  perulangan();
  trycatch();
  kelas();
}

/**
 * TYPEDATA
 */

// var - tipedata dinamik
var versi = '1.0.0-release';
// String - tipedata teks
String nama = 'Eudeka';
// int - tipedata angka
int tanggal = 1;
// double - tipedata desimal
double nilai = 9.8;
// bool - tipedata benar salah
bool jujur = true;

/**
 * STRING
 */

// 2 kutip
String ya = "Katakan: 'Ya!'";
// 1 kutip
String tidak = 'Katakan: \'Tidak!\'';
// variable dalam String
String panjang = '${ya.length}';

string() {
  print('\n*** oOo ***\n');
  print(ya);
  print(tidak);
  print(panjang);
  print('\n*** oOo ***\n');
}

/**
 * VAR
 */

// dapat memuat semua tipedata (String, int, double, boll, dan lain sebagainya)
var satu = 'Satu';
var dua = 2;
var tiga = 3.0;
var benar = true;

/**
 * INPUT OUTPUT
 */

inout() {
  print('\n*** oOo ***\n');
  // menampilkan masukan
  stdout.write('username: ');
  // membaca dan menyimpan masukan
  var username = stdin.readLineSync();
  print('Hallo, ' + username + '.');
  print('\n*** oOo ***\n');
}

/**
 * OPERATOR - ARITMATIKA
 */

// Operator: + - * /
// Operand: a b
var a = 2, b = 5;
// penjumlahan
var jumlah = a + b;
// pengurangan
var kurang = a - b;
// perkalian
var kali = a * b;
// pembagian
var bagi = a / b;
// sisa bagi
var sisa = a % b;

operators() {
  print('\n*** oOo ***\n');
  print(jumlah);
  print(kurang);
  print(kali);
  print(bagi);
  print(sisa);
  print('\n*** oOo ***\n');
}

/**
 * DECISION MAKING
 */

// if
percabanganif() {
  var x = 1;
  // cek nilai
  if (x == 1) {
    // jika benar lakukan fungsi
    print(true);
  }
}

// if else
percabanganifelse() {
  var x = 2;
  // cek nilai
  if (x == 1) {
    // jika benar lakukan fungsi
    print(true);
  } else {
    // jika bukan lakukan fungsi
    print(false);
  }
}

// else if
percabanganelseif() {
  var nilai = 95;
  // cek nilai
  if (nilai >= 75) {
    // jika benar lakukan fungsi
    print('A');
  } else if (nilai >= 50) {
    // jika bukan dan benar lakukan fungsi
    print('B');
  } else if (nilai >= 25) {
    // jika bukan dan benar lakukan fungsi
    print('C');
  } else {
    // jika bukan lakukan fungsi
    print('D');
  }
}

// switch case
percabanganswitchcase() {
  var jawab = 'NO';
  // cek nilai 'jawab'
  switch (jawab) {
    // jika nilainya 'YES' atau 'Y'
    case 'YES':
    case 'Y':
      print('YA!');
      // fungsi selesai dijalankan
      break;
    // jika nilainya 'NO' atau 'N'
    case 'NO':
    case 'N':
      print('TIDAK!');
      // fungsi selesai dijalankan
      break;
    // jika nilai tidak terdapat pada pilihan (case)
    default:
      print('?');
  }
}

percabangan() {
  print('\n*** oOo ***\n');
  percabanganif();
  percabanganifelse();
  percabanganelseif();
  percabanganswitchcase();
  print('\n*** oOo ***\n');
}

/**
 * LOOPS
 */

// for
perulanganfor() {
  // nilai n sama dengan 0, cek jika nilai n kurang dari 3, lalu nilai n tambah 1
  for (var n = 0; n < 3; n++) {
    // kemudian jalankan perintah
    print('FOR ke-$n');
  }
  // ulangi hingga nilai n tidak sesuai dengan kurang dari 3
}

// for in
perulanganforin() {
  var daftar = ['satu', 'dua', 'tiga'];
  // cek untuk nilai item di dalam nilai daftar
  for (var item in daftar) {
    print(item);
  }
  // ulangi hingga nilai yang ada di dalam daftar habis
}

// while
perulanganwhile() {
  var n = 0;
  // cek jika nilai n kurang dari 3
  while (n < 3) {
    // jalankan perintah
    print('WHILE ke-$n');
    // kemudian nilai n tambah 1
    n++;
  }
  // ulangi hingga nilai n tidak sesuai dengan kurang dari 3
}

// do while
perulangandowhile() {
  var n = 0;
  // lakukan perintah
  do {
    print('DO WHILE ke-$n');
    // tambah nilai n dengan 1
    n++;
  } while (n < 3);
  // cek jika nilai n kurang dari 3
  // ulangi hingga tidak sesuai dengan nilai n kurang dari 3
}

perulangan() {
  print('\n*** oOo ***\n');
  perulanganfor();
  perulanganforin();
  perulanganwhile();
  perulangandowhile();
  print('\n*** oOo ***\n');
}

/**
 * FUNGSI
 */

// fungsi biasa
void fun1() {}
// fungsi bernilai
String fun2() {
  return 'nilai fun2';
}

// fungsi berparameter
void fun3(String param) {}
// fungsi berparameter opsional
void fun4([String param]) {}
// fungsi lambda
String fun5() => 'nilai fun5';

/**
 * TRY CATCH
 */

trycatch() {
  print('\n*** oOo ***\n');
  // coba untuk melakukan perintah
  try {
    print(5 / 0);
    // jika perintah gagal atau error ketika dijalankan ambil errornya
  } catch (e) {
    print(e);
  }
  print('\n*** oOo ***\n');
}

/**
 * CLASS
 */

class NamaKelas {
  /* fields */
  /* getters/setters */
  /* constructions */
  /* functions */
}

class Pengguna {
  // field
  String akun;
  // constructor
  Pengguna(String akun) {
    this.akun = akun;
  }
  // function
  cetakNama() {
    print('\n*** oOo ***\n');
    print(akun);
    print('\n*** oOo ***\n');
  }
}

kelas() {
  // deklarasi kelas
  Pengguna user = Pengguna('YOUR NAME');
  // panggil fungsi kelas lain
  user.cetakNama();
}