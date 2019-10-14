// agar dapat menggunakan fungsi stdin stdout atau input output
import 'dart:io';

// fungsi utama yang akan pertama kali dijalankan
main() {
  // memanggil atau menjalankan fungsi login
  login();
}

// membuat model atau kelas untuk menampung data pengguna
class Users {
  // nama pengguna
  String name;
  // pin pengguna
  int pin;
  // saldo pengguna
  int balance;

  // konstruktor model atau kelas pengguna, untuk mendapatkan nilai dari luar kelas
  Users(this.name, this.pin, this.balance);

  // mengambil nilai balik berbentuk String yang berisi nama pengguna
  String getName() {
    return name;
  }

  // mengambil nilai balik berbentuk int yang berisi pin pengguna
  int getPin() {
    return pin;
  }

  // mengambil nilai balik berbentuk int yang berisi saldo pengguna
  int getBalance() {
    return balance;
  }

  // mengubah nilai saldo pengguna
  setBalance(int balance) {
    this.balance = balance;
  }
}

// mendeklarasikan daftar pengguna dan menginisialisasikan nilai nilainya
List<Users> users = [
  Users('Eudeka', 123, 10000),
  Users('Eureka', 456, 40000),
  Users('Merdeka', 789, 70000),
];

// mendeklarasikan pengguna
Users user;

// membuat fungsi login
void login() {
  // menjalankan fungsi checkUser yang bernilai balik bool didalam if
  if (checkUser()) {
    // jika checkUser mengembalikan nilai benar (true) maka lanjut ke fungsi homePage
    homePage();
  } else {
    // jika checkUser mengembalikan nilai salah (false) maka kembali ke fungsi main yang akan mengulang fungsi login
    main();
  }
}

// membuat fungsi checkUser
bool checkUser() {
  // mendeklarasikan nilai isLogin dengan nilai salah (false)
  bool isLogin = false;
  print('\n');
  print('Masuk');
  stdout.write('PIN : ');
  // mengambil nilai inputan dan memasukkan hasil inputan ke dalam nilai pin
  var pin = int.parse(stdin.readLineSync());
  // mengecek nilai usr (Users) yang ada di dalam nilai users (List<Users>)
  for (Users usr in users) {
    // jika nilai pin hasil inputan sama dengan nilai pin yang di dapat dari salah satu usr (jika terdapat dua pin yang sama akan diambil nilai yang paling pertama di deklarasikan)
    if (pin == usr.getPin()) {
      // jika benar maka atur nilai user dengan nilai usr yang di dapat dan atur isLogin menjadi benar (true)
      user = usr;
      isLogin = true;
    }
  }
  // kembalikan nilai isLogin ketika fungsi checkUser dipanggil
  return isLogin;
}

// membuat fungsi homePage
void homePage() {
  // mengambil dan menampilkan nama pengguna dari pengguna yang sedang login pada homePage
  var name = user.getName();
  print('\n');
  print('Selamat Datang $name!');
  print('1 = Tarik Tunai');
  print('2 = Setor Tunai');
  print('3 = Cek Saldo');
  print('4 = Ganti Akun');
  print('5 = Keluar Aplikasi');
  stdout.write('Pilih Menu : ');
  // menjalankan fungsi menuPage
  menuPage();
}

void menuPage() {
  // mengambil inputan dan memasukkan ke dalam nilai menu
  var menu = stdin.readLineSync();
  // pengecekan nilai menu secara paralel
  switch (menu) {
    // jika menu 1 lanjut ke fungsi tarik
    case '1':
      tarik();
      break;
    // jika menu 2 lanjut ke fungsi setor
    case '2':
      setor();
      break;
    // jika menu 3 lanjut ke fungsi saldo
    case '3':
      saldo();
      break;
    // jika menu 4 lanjut ke fungsi main atau kembali ke fungsi awal lagi yaitu login
    case '4':
      main();
      break;
    // jika menu 5 keluar dari aplikasi
    case '5':
      print('\n');
      exit(0);
      break;
    // jika menu tidak tersedia maka kembali ke menuPage
    default:
      print('\n');
      print('Menu tidak tersedia');
      print('\n');
      stdout.write('Pilih antara 1 2 3 4 or 5 : ');
      menuPage();
  }
}

// buat fungsi tarik tunai
void tarik() {
  print('\n');
  print('Tarik Tunai');
  stdout.write('Nominal : ');
  // mengambil inputan dan memasukkan ke dalam nilai nominal
  var nominal = int.parse(stdin.readLineSync());
  // melakukan pengecekan jika nilai saldo pengguna dari pengguna yang sedang login lebih besar dari nominal
  if (user.getBalance() > nominal) {
    // maka lanjut ke fungsi updateSaldo dengan memasukkan parameter nilai nominal yang negatif
    updateSaldo(-nominal);
  } else {
    // jika nilai saldo pengguna tidak lebih besar dari nominal tampilkan peringatan saldo tidak cukup
    print('Saldo tidak cukup');
  }
  // lalu kembali ke homePage
  homePage();
}

// buat fungsi setor
void setor() {
  print('\n');
  print('Setor Tunai');
  stdout.write('Nominal : ');
  // mengambil inputan dan memasukkan ke dalam nilai nominal
  var nominal = int.parse(stdin.readLineSync());
  // lanjut ke fungsi updateSaldo dengan memasukkan parameter nilai nominal
  updateSaldo(nominal);
  // lalu kembali ke homePage
  homePage();
}

// buat fungsi saldo
void saldo() {
  print('\n');
  print('Cek Saldo');
  // ambil dan cetak nilai saldo dari pengguna yang sedang login
  print(user.getBalance());
  // lalu kembali ke homePage
  homePage();
}

// buat fungsi updateSaldo dengan parameter wajib dengan tipedata int
void updateSaldo(int nominal) {
  // mengambil nilai saldo dari pengguna yang sedang login ditambah nilai nominal dari parameter fungsi tersebut dan memasukkan ke dalam nilai balance
  var balance = user.getBalance() + nominal;
  // ubah nilai saldo pengguna yang sedang login dengan nilai balance
  user.setBalance(balance);
}