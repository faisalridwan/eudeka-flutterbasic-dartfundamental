import 'dart:io';

//Nama : Faisal Ridwan Siregar
//OSG EUDEKA !!! Flutter Basic
//Task 1 Dart Fundamental

void main(){  
    login();
}
  login(){                                  
        int saldo = 5000;
      stdout.writeln('Masuk ');
      stdout.write('PIN : ');
      var pin = stdin.readLineSync();
      ceklogin(pin,saldo);
  }
  ceklogin(String pin, int saldo) {
    if(pin == '123' || pin == '234'){
      menu(saldo);
    } else {
      login();
    }
  }
  int tariktunai(int saldo){
    stdout.write('Nominal : ');
    int nominal = int.parse(stdin.readLineSync());
    saldo = saldo -nominal;
    return saldo;
  }
  int setortunai(int saldo){
    stdout.write('Nominal : ');
    int nominal = int.parse(stdin.readLineSync());
    saldo = nominal + saldo;
    return saldo;
  }

menu(int saldo) {
  print('');
  print('Selamat Datang !');
  print('1 =  Tarik Tunai');
  print('2 = Setor Tunai');
  print('3 = Cek Saldo');
  print('4 = Ganti Akun');
  print('5 = Keluar Akun');
  stdout.write('Masukkan Pilihan : ');
  int pil = int.parse(stdin.readLineSync());
  print('');
  if ( pil == 1||pil ==2||pil ==3||pil==4||pil==5){
    switch (pil) {
      case 1:
        int newsaldo = tariktunai(saldo);
        menu(newsaldo);
        break;
      case 2:
        int newsaldo =setortunai(saldo);
        menu(newsaldo);
        break;
      case 3:
        print('');
        stdout.write('Saldo Kamu = $saldo');
        print('');
        menu(saldo);
        break;
      case 4:
        login();
        break;
      default:
    }
  } else {
    stdout.write('Salah memasukkan pilihan');
    menu(saldo);
  }
}