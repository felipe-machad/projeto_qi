import 'package:scroll_list/model/curso_.dart';

abstract class Person {
  String? name;
  String? email;
  String? cpf;

  Person(this.name, this.email, this.cpf);

  @override
  String toString() => "Bem vindo(a) $name!";
}

class Aluno extends Person  {
  String? ra;
  String? password;
  Aluno(this.ra, String name, String email, String cpf, this.password)
      : super(name, email, cpf);

  Aluno.fromMap(Map<String, String> map) : 
  ra = map['ra'], 
  password = map['password'], 
  super(
    map['name'], 
    map['email'], 
    map['cpf']
    );

}
