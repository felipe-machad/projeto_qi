// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scroll_list/model/curso_.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Quadro de horários",
        theme: ThemeData(primarySwatch: Colors.red),
        home: const Quadro());
  }
}

class Quadro extends StatefulWidget {
  const Quadro({Key? key}) : super(key: key);

  @override
  State<Quadro> createState() => _QuadroState();
}

class _QuadroState extends State<Quadro> {
  final curso = Course(disciplinas: {
    1: 'Boas vindas - Informática para internet',
    2: 'Desenvolvimento de aplicativos I',
    3: 'Desenvolvimento de aplicativos II',
    4: 'Desenvolvimento de sistemas web I',
    5: 'Desenvolvimento de sistemas web II',
    6: 'Desenvolvimento de sistemas web III',
    7: 'Sistemas operacionais e redes',
    8: 'Internet das Coisas',
    9: 'Análise e qualidade de software'
  }, nomeCurso: "Técnico de Informatica para internet");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(243, 0, 0, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/img/logo_qi.png",
                scale: 2,
              ),
            ],
          ),
        ),
        body: Container(
            margin: EdgeInsets.all(20),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 0.5),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Table(
                    children: [
                      TableRow(children: [
                        Text("Quadro de horários - ${curso.nomeCurso} ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 2.0,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ]),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                        blurStyle: BlurStyle.outer)
                  ],
                ),
                child: Table(
                  border: TableBorder(
                      horizontalInside: BorderSide(width: 1),
                      verticalInside: BorderSide(width: 1)),
                  children: [
                    TableRow(children: [
                      Text("Segunda-feira", textAlign: TextAlign.center),
                      Text("19:00 até 20:30", textAlign: TextAlign.center),
                      Text("20:45 até 22:00", textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text("Terça-feira", textAlign: TextAlign.center),
                      Text(""),
                      Text(""),
                    ]),
                    TableRow(children: [
                      Text("Quarta-feira", textAlign: TextAlign.center),
                      Text("19:00 até 20:30", textAlign: TextAlign.center),
                      Text("20:45 até 22:00", textAlign: TextAlign.center),
                    ]),
                    TableRow(children: [
                      Text("Quinta-feira", textAlign: TextAlign.center),
                      Text(""),
                      Text(""),
                    ]),
                    TableRow(children: [
                      Text("Sexta-feira", textAlign: TextAlign.center),
                      Text(""),
                      Text(""),
                    ]),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(width: 0.5),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Table(
                    children: [
                      TableRow(children: [
                        Text("Disciplinas",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white))
                      ]),
                    ],
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          offset: Offset(0, 3),
                          color: Colors.grey)
                    ],
                    border: Border.all(),
                    color: Colors.white,
                  ),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Column(children: [
                        Expanded(
                            child: SingleChildScrollView(
                                child: DataTable(columns: <DataColumn>[
                          DataColumn(
                              label: Expanded(
                            child: Center(
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      text: "${curso.disciplinas[1]} \n",
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "01/01/2022 até 01/03/2022",
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        )
                                      ])),
                            ),
                          )),
                        ], rows: <DataRow>[
                          DataRow(
                              color: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.08);
                                }
                                return Colors.white; // Use the default value.
                              }),
                              cells: <DataCell>[
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "${curso.disciplinas[2]} \n",
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          )
                                        ]),
                                  ),
                                )),
                              ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.08);
                                }
                                return Colors.white; // Use the default value.
                              }),
                              cells: <DataCell>[
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "${curso.disciplinas[3]} \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ]),
                                  ),
                                )),
                              ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.08);
                                }
                                return Colors.white; // Use the default value.
                              }),
                              cells: <DataCell>[
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "${curso.disciplinas[4]} \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w100),
                                          )
                                        ]),
                                  ),
                                )),
                              ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.08);
                                }
                                return Colors.white; // Use the default value.
                              }),
                              cells: <DataCell>[
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "${curso.disciplinas[5]} \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ]),
                                  ),
                                )),
                              ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.08);
                                }
                                return Colors.white; // Use the default value.
                              }),
                              cells: <DataCell>[
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "D${curso.disciplinas[6]} \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ]),
                                  ),
                                )),
                              ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.08);
                                }
                                return Colors.white; // Use the default value.
                              }),
                              cells: <DataCell>[
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "${curso.disciplinas[7]} \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ]),
                                  ),
                                )),
                              ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.08);
                                }
                                return Colors.white; // Use the default value.
                              }),
                              cells: <DataCell>[
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "${curso.disciplinas[8]} \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ]),
                                  ),
                                )),
                              ]),
                          DataRow(
                              color: MaterialStateProperty.resolveWith<Color?>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.selected)) {
                                  return Theme.of(context)
                                      .colorScheme
                                      .primary
                                      .withOpacity(0.08);
                                }
                                return Colors.white; // Use the default value.
                              }),
                              cells: <DataCell>[
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text: "${curso.disciplinas[9]} \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300),
                                          )
                                        ]),
                                  ),
                                )),
                              ])
                        ])))
                      ])))
            ])));
  }
}
