import 'package:flutter/material.dart';
import 'package:scroll_list/meus_dados.dart';
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
              scale: 2
            )]
        )
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Bem vindo(a), Usuário",
                    style: TextStyle(fontSize: 24),
                  )]
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: const Center(
                  child: Icon(
                    color: Colors.red,
                    Icons.person_outline, 
                    size: 140
                    
                    )
                )
              ),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromRGBO(243, 0, 0, 1))),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Quadro()));
                      },
                      child: const Text("QUADRO DE HORÁRIOS"))
                      ),
              Container(
                  width: 200,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromRGBO(243, 0, 0, 1))),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context) => const MyDados()));
                      },
                      child: const Text("MEUS DADOS"))
                      ),
              Container(
                  width: 200,
                  height: 50,
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromRGBO(243, 0, 0, 1))),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const NotasPage()));
                      },
                      child: const Text("NOTAS E FALTAS"))
                      )]
          )
        )
      )
    );
  }
}