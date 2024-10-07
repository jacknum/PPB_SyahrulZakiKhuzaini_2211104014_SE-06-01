import 'dart:io';

void main() {
  stdout.write('Masukkan bilangan: ');
  int? number = int.parse(stdin.readLineSync()!);

  if (isPrime(number)) {
    print('$number adalah bilangan prima.');
  } else {
    print('$number bukan bilangan prima.');
  }
}

bool isPrime(int n) {
  if (n < 2) return false;

  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false; 
    }
  }
  return true; 
}