import 'package:flutter/material.dart';
import 'package:scroll_list/model/person_.dart';
import '../menu.dart';

class MyAlertOk extends StatelessWidget {
    MyAlertOk({Key? key}) : super(key: key);

  final aluno = Aluno(name: 'Felipe Machado da Silva', ra: '2', password: '1');
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: const Text("Login Feito com sucesso!"),
        title: const Icon(Icons.check, color: Colors.red, size: 50),
        actions: <Widget>[
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromRGBO(243, 0, 0, 1))),
              onPressed: () {
                Navigator.of(context).pop();
                Aluno aluno = this.aluno;

                //seremos direcionados para outra tela
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MenuPage(aluno: aluno)));
              },
              child: const Text("Entrar"))
        ]);
  }
}

class MyAlertFail extends StatelessWidget {
  const MyAlertFail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: const Text("Usuário ou Senha inválidos"),
        title: const Text("ERRO!"),
        actions: <Widget>[
          ElevatedButton(
              onPressed: () {
                //seremos direcionados para outra tela
                Navigator.of(context).pop();
              },
              child: const Text("Tentar login novamente"))
        ]);
  }
}
