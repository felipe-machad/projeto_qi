import 'dart:js';

import 'package:flutter/material.dart';
import 'package:scroll_list/menu.dart';
import 'package:scroll_list/notas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Projeto QI",
        theme: ThemeData(primaryColor: const Color.fromARGB(255, 172, 30, 19)),
        home: const Projeto());
  }
}

class Projeto extends StatefulWidget {
  const Projeto({Key? key}) : super(key: key);

  @override
  State<Projeto> createState() => _ProjetoState();
}

class _ProjetoState extends State<Projeto> {
  final TextEditingController _ctrlRa = TextEditingController();
  final TextEditingController _ctrlSenha = TextEditingController();

  String ra = "1234";
  String password = "12345";
  String _raFill = "";
  String _passFill = "";

  void _validaLogin(String raAcess, String passwordAcess) {
    if (_ctrlRa.text.isEmpty) {
      setState(() {
        _raFill = "Preencha esse campo";
      });
    } else {
      setState(() {
        _raFill = "";
      });
    }
    if (_ctrlSenha.text.isEmpty) {
      setState(() {
        _passFill = "Preencha esse campo";
      });
    } else {
      setState(() {
        _passFill = "";
      });
    }
    if (ra == raAcess && password == passwordAcess) {
      if (ra == raAcess && password == passwordAcess) {
        showDialog(
            context: this.context, builder: (context) => const MyAlertOk());
      } else {
        showDialog(
            context: this.context, builder: (context) => const MyAlertFail());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 0, 0, 1),
      body: Container(
        child: Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                Widget>[
          Container(
              width: 350,
              height: 500,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                        width: 100,
                        child: Image.asset("lib/img/logored.png",
                            fit: BoxFit.fitWidth)),
                    const Text("Acesso aluno"),
                  ]),
                  Container(
                    margin: const EdgeInsets.only(top: 100, right: 20),
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "RA",
                        helperText: _raFill,
                      ),
                      controller: _ctrlRa,
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                    padding: const EdgeInsets.only(left: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                          helperText: _passFill, hintText: "Senha"),
                      controller: _ctrlSenha,
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => const Color.fromRGBO(243, 0, 0, 1))),
                      onPressed: () {
                        _validaLogin(_ctrlRa.text, _ctrlSenha.text);
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        width: 200,
                        child: const Text(
                          "Entrar",
                          textAlign: TextAlign.center,
                        ),
                      ))
                ],
              ))
        ])),
      ),
    );
  }
}

/////
/////////////////////////////////////////////////////////////////
class MyAlertOk extends StatelessWidget {
  const MyAlertOk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text("Login Feito com sucesso!"),
      title: Icon(Icons.person, color: Colors.red, size: 50),
      actions: <Widget>[
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => const Color.fromRGBO(243, 0, 0, 1))),
            onPressed: () {
              //seremos direcionados para outra tela
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MenuPage()));
            },
            child: const Text("Entrar"))
      ],
    );
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
            child: const Text("Texto do botão"))
      ],
    );
  }
}
