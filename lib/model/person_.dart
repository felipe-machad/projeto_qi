abstract class Person {
  String? name;
  String? email;
  String? cpf;
  String? sexo;

  Person(this.name, this.email, this.cpf);
}

class Aluno extends Person {
  String? ra;
  String? password;
  Aluno({String? name, String? email, String? cpf,
       this.ra,  this.password})
      : super(name, email, cpf);
      

//  Aluno.fromMap(Map<String, String> map)
//      : ra = map['ra'],
//        password = map['password'],
//        super(map['name'], map['email'], map['cpf']);
}
