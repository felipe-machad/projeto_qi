// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyDados extends StatelessWidget {
  const MyDados({super.key});

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
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(width: 0.5),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Table(
                  children: const [
                    TableRow(
                      children: [
                        Text("Meus Dados",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2, offset: Offset(0, 3), color: Colors.grey)
                ],
                border: Border.all(),
                color: Colors.white,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: DataTable(
                          columns: <DataColumn>[
                            DataColumn(
                              label: Expanded(
                                child: Row(
                                  children: [
                                    RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: "Registro Acadêmico                    ",
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "10202190882",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                          rows: <DataRow>[
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Nome                                              ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Felipe Machado da Silva",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Data de Nascimento                   ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "10/02/2000",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Naturalidade                                ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Porto Alegre",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Endereço                                      ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Rua Ricardo Barbosa de Oliveira",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Bairro                                            ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Maringá",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Cidade/UF                                   ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Alvorada",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "País                                              ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Brasil",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "E-mail                                           ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "felipe.silva@qi.edu.br",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Telefone                                   ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "(51) 99999-9999",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Responsável Financeiro            ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Felipe Machado",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                DataCell(
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Telefone/Responsável               ",
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "(51) 99999-9999",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
