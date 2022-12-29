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
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(243, 0, 0, 1),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "lib/img/logo_qi.png",
              scale: 2,
            )
          ]
        )
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
                    TableRow(
                      children: [
                        Text("Meus Dados",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )
                        )
                      ]
                    )
                  ]
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
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  children: <Widget>[
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
                                      text: const TextSpan(
                                        text: "Registro Acadêmico                    ",
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "10202190882",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )
                                          )
                                        ]
                                      )
                                    )]
                                )
                              )
                            )
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
                                        text: const TextSpan(
                                          text:
                                              "Nome                                              ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Felipe Machado da Silva",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "Data de Nascimento                   ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "10/02/2000",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      ) ]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "Naturalidade                                ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Porto Alegre",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "Endereço                                      ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Rua Ricardo Barbosa de Oliveira",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "Bairro                                            ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Maringá",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "Cidade/UF                                   ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Alvorada",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )
                                    ]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "País                                              ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Brasil",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )
                                    ]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "E-mail                                           ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "felipe.silva@qi.edu.br",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )
                                    ]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "Telefone                                   ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "(51) 99999-9999",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )
                                    ]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "Responsável Financeiro            ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "Felipe Machado",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )
                                    ]
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
                                  Row(
                                    children: [
                                      RichText(
                                        textAlign: TextAlign.center,
                                        text: const TextSpan(
                                          text:
                                              "Telefone/Responsável               ",
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: "(51) 99999-9999",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )
                                            )
                                          ]
                                        )
                                      )]
                                  )
                                )
                              ]
                            )
                          ]
                        )
                      )
                    ),
                  ]
                )
              )
            ),  
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Caso algum de seus dados estejam preenchidos de forma incorreta, \n entrar em contato com a secretaria de sua escola",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold
              ),
              )
            )
            ]
        )
      )
    );
  }
}
