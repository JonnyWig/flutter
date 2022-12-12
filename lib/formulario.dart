import 'package:flutter/material.dart';

void main() => runApp(Formulario());

class Formulario extends StatelessWidget {
  // This widget is the root of your application.

  TextEditingController _nome = TextEditingController();
  TextEditingController _idade = TextEditingController();
  TextEditingController _doenca = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastrando de aluno'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 100, right: 100),
              margin: EdgeInsets.only(bottom: 50),
              child: TextField(
                  controller: _nome,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Digite seu nome",
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: 100, right: 100),
              margin: EdgeInsets.only(bottom: 50),
              child: TextField(
                  controller: _idade,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.view_agenda),
                    hintText: "Digite sua idade",
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: 100, right: 100),
              margin: EdgeInsets.only(bottom: 50),
              child: TextField(
                  controller: _doenca,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.bloodtype),
                    hintText: "Tem alguma doenca?",
                  )),
            ),
            Container(
              child: ElevatedButton(
                child: Text("Cadastra"),
                onPressed: () {
                  print("cadastro realizado com sucesso");
                },
              ),
            )
          ],
        ));
  }
}
