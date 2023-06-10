import 'package:flutter/material.dart';
import 'package:scroll_list/meus_dados.dart';
import 'package:scroll_list/main.dart';
import 'package:scroll_list/model/person_.dart';
import 'package:scroll_list/notas.dart';
import 'package:scroll_list/quadro.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    final person = Person(name: "Felipe Silva");
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(243, 0, 0, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/img/logo_qi.png",
                scale: 2,
              )
            ],
          ),
        ),
        body: Container(
            margin: const EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    person.toString(),
                    style: const TextStyle(fontSize: 24),
                  ),
                ],
              ),
              Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Center(
                      child: Image.asset(
                    "lib/img/man.png",
                    scale: 3,
                  ))),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(
                                  width: 1, color: Colors.black),
                            ),
                          ),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => const Color.fromRGBO(243, 0, 0, 1))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Quadro()));
                      },
                      child: const Text(
                        "QUADRO DE HORÁRIOS",
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ))),
              Container(
                  width: 200,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(
                                  width: 1, color: Colors.black),
                            ),
                          ),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => const Color.fromRGBO(243, 0, 0, 1))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyDados()));
                      },
                      child: const Text(
                        "MEUS DADOS",
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ))),
              Container(
                  width: 200,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(
                                  width: 1, color: Colors.black),
                            ),
                          ),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => const Color.fromRGBO(243, 0, 0, 1))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NotasPage()));
                      },
                      child: const Text(
                        "NOTAS E FALTAS",
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      )))
            ]))));
  }
}
