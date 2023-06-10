// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    blurRadius: 2.0,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
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
                boxShadow: const [
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
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('RA'),
                                    Text("10202190882",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Nome'),
                                      Text("Felipe Machado da Silva",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Data de Nascimento'),
                                      Text("10/02/2000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Naturalidade'),
                                      Text("Porto Alegre",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Endereço'),
                                      Text("Rua Ricardo Barbosa de Oliveira",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Bairro'),
                                      Text("Maringa",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Cidade UF'),
                                      Text("Alvorada",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Pais'),
                                      Text("Brasil",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                                color:
                                    MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.08);
                                  }
                                  return Colors.white; // Use the default value.
                                }),
                                cells: const <DataCell>[
                                  DataCell(
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('E-mail'),
                                        Text("felipe.silva@qi.edu.br",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  )
                                ]),
                            DataRow(
                                color:
                                    MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.08);
                                  }
                                  return Colors.white; // Use the default value.
                                }),
                                cells: const <DataCell>[
                                  DataCell(
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Telefone'),
                                        Text("(51) 99999-9999",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  )
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Responsavel Financeiro (RF)'),
                                      Text("Felipe Machado da Silva",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
                              cells: const <DataCell>[
                                DataCell(
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Telefone RF'),
                                      Text("(51) 99999-9999",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))
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
