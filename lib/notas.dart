import 'package:flutter/material.dart';
import 'package:scroll_list/meus_dados.dart';
import 'package:scroll_list/quadro.dart';

class NotasPage extends StatefulWidget {
  const NotasPage({super.key});

  @override
  State<NotasPage> createState() => _NotasPageState();
}

class _NotasPageState extends State<NotasPage> {
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
                        Text("Notas e Faltas",
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
                        child: Column(
                          children: [
                            Center(
                              child: DropdownButtonExample()
                            ),
                          ],
                        )
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


const List<String> list = <String>['Boas vindas - Informática para internet',
 'Análise e qualidade de software',
 'Desenvolvimento de aplicativos I',
  'Desenvolvimento de aplicativos II',
  'Desenvolvimento de sistemas web I',
  'Desenvolvimento de sistemas web II',
  'Desenvolvimento de sistemas web III',
  'Internet das coisas',
  'Sistemas operacionais e redes'
  ];

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.red,
      ),
      onChanged: (String? value) {
        print(value);
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}