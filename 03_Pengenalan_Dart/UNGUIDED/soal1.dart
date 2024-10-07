import 'dart:io';

void  main() {
  print("Masukkan nilai UAS: ");
  int nilai = int.parse(stdin.readLineSync()!);

  String nilaiUAS(int nilai) {
    return 
    nilai > 70? "$nilai merupakan nilai A" : 
    nilai > 40? "$nilai merupakan nilai B" :
    nilai > 0? "$nilai merupakan nilai C" :
    "";
  }

  print(nilaiUAS(nilai));
}