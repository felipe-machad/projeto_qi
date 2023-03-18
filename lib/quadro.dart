import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
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
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(width: 0.5),
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Table(
                  children: const [
                    TableRow(children: [
                      Text("Quadro de Horários - Desenvolvimento de Aplicativos I",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))
                    ])
                  ]
                )
              )
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey,
                      blurStyle: BlurStyle.outer)
                ],
              ),
              child: Table(
                border: const TableBorder(
                    horizontalInside: BorderSide(width: 1),
                    verticalInside: BorderSide(width: 1)),
                children: const [
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
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(width: 0.5),
                  borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                  child: Table(
                    children: const [
                      TableRow(
                        children: [
                          Text("Disciplinas",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)
                          )]
                      )]
                  )
                )
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
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: DataTable(columns: <DataColumn>[
                          DataColumn(
                              label: Expanded(
                            child: Center(
                              child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                      text:
                                          "Boas Vindas - Informática para Internet \n",
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "30/01/2022 até 30/01/2022",
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
                                        text:
                                            "Desenvolvimento de Aplicativos I \n",
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
                                        text:
                                            "Desenvolvimento de Aplicativos II \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300
                                                )
                                          )]
                                          )
                                  )
                                )
                                )
                              ]
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
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text:
                                            "Desenvolvimento de Sistemas Web I \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w100
                                                )
                                          )]
                                          )
                                  )
                                )
                                )
                              ]
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
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text:
                                            "Desenvolvimento de Sistemas Web II \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300
                                                )
                                          )]
                                          )
                                  )
                                )
                                )
                              ]
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
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text:
                                            "Desenvolvimento de Sistemas Web III \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300),
                                          )]
                                      )
                                  )
                                )
                              )
                              ]
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
                              }
                              ),
                              cells: <DataCell>[
                                DataCell(
                                  Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: "Internet das coisas \n",
                                          children: [
                                            TextSpan(
                                              text: "01/01/2022 até 01/03/2022",
                                              style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300
                                                )
                                          )
                                        ]
                                      )
                                  )
                                  )
                                )
                              ]
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
                                DataCell(Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                        text:
                                            "Sistemas operacionais e redes \n",
                                        children: [
                                          TextSpan(
                                            text: "01/01/2022 até 01/03/2022",
                                            style: TextStyle(
                                                color: Colors.grey[600],
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w300
                                            )
                                          )]
                                      )
                                    )
                                  )
                                )
                              ]
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
                                  Center(
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text:
                                              "Análise e qualidade de software \n",
                                          children: [
                                            TextSpan(
                                              text: "01/01/2022 até 01/03/2022",
                                              style: TextStyle(
                                                  color: Colors.grey[600],
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.w300
                                              )
                                            )]
                                        )
                                    )
                                  )
                                )
                              ]
                          )  
                        ]
                      )
                      )
                    )]
                )
              )
            )]
        )
      )
    );
  }
}