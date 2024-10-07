// Fungsi
String sapa(String name) {
  return 'Hello, $name';
}

void greet(String name, int age) {
  print('Hello $name, you are $age years old');
}

void main() {
  // Variable
  var name = "Arsene";
  var age = "???";

  print("Nama : $name, Usia : $age");

  String name1 = "Arsene";
  int Age = 100;

  print("Nama : $name1, Usia : $Age");

  String firstName, lastName;
  firstName = "Arsene";
  lastName = "Raoule";

  print("Nama Lengkap: $firstName $lastName");

  // If-Else Statement
  var openHours = 8;
  var closedHours = 21;
  var now = 22;

  if (now > openHours && now < closedHours) {
    print("Hello, we're open");
  } else {
    print("Sorry, we've closed");
  }

  var shopStatus = (now > openHours && now < closedHours)? "Hello, we're open" : "Sorry, we've closed";
  print(shopStatus);

  // Switch
  var day = 3; // Misalkan 1 = Senin, 2 = Selasa, dst.
  switch (day) {
    case 1:
      print("Senin");
      break;
    case 2:
      print("Selasa");
      break;
    case 3:
      print("Rabu");
      break;
    case 4:
      print("Kamis");
      break;
    case 5:
      print("Jumat");
      break;
    case 6:
      print("Sabtu");
      break;
    case 7:
      print("Minggu");
      break;
    default:
      print("Hari tidak valid");
  }

  // Looping
  for (int i = 1; i <=5; i++) {
    print(i);
  }

  int i = 1;
  while (i <= 5) {
    print(i);
    i++;
  }

  // List
  List<int> fixedList = List.filled(3, 0);

  fixedList[0] = 10;
  fixedList[1] = 20;
  fixedList[2] = 30;

  print(fixedList);

  // Growable List

  List<int> growableList = [];

  growableList.add(10);
  growableList.add(20);
  growableList.add(30);

  print(growableList);

  growableList.add(40);
  growableList.add(50);

  print(growableList);

  growableList.remove(20);
  print(growableList);

  // Fungsi
  String pesan = sapa("Arsene");
  print(pesan);

  greet('Arsene', 100);
}