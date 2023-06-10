import 'package:flutter/material.dart';
import 'package:scroll_list/widgets/alerts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Portal do Aluno Mobile",
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
//  static const mockPerson = {
//      'ra': '1',
//      'name': 'Felipe Machado da Silva',
//      'cpf': '111111',
//      'password':'1'
//
//
//    };
  final aluno = MyAlertOk().aluno;
  

  String _raFill = "";
  String _passFill = "";

  void _validaLogin(String raAcess, String passwordAcess) {
    setState(() {
      _raFill = _ctrlRa.text.isEmpty ? "Preencha esse campo" : "";
      _passFill = _ctrlSenha.text.isEmpty ? "Preencha esse campo" : "";
    });

    if (aluno.ra == raAcess && aluno.password == passwordAcess) {
      showDialog(
        context: context,
        builder: (context) =>  MyAlertOk(),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => const MyAlertFail(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 0, 0, 1),
      body: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                        padding: const EdgeInsets.only(left: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "RA",
                            helperText: _raFill,
                          ),
                          controller: _ctrlRa,
                        )),
                    Container(
                        margin: const EdgeInsets.only(
                            top: 20, right: 20, bottom: 20),
                        padding: const EdgeInsets.only(left: 30),
                        child: TextFormField(
                            decoration: InputDecoration(
                                helperText: _passFill, hintText: "Senha"),
                            controller: _ctrlSenha,
                            obscureText: true)),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) =>
                                    const Color.fromRGBO(243, 0, 0, 1))),
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
                        )
                        )
                  ],
                )
                )
          ]
          )
      )
    );
  }
}
