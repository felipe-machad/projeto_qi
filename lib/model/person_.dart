import 'package:scroll_list/model/curso_.dart';

class Person extends Course {
  String? name;
  String? ra;
  String? password;
  

  Person({this.name, this.ra, this.password});

  @override
  String toString() => "Bem vindo(a) $name!";
}
