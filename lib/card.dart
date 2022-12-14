import 'package:flutter/material.dart';
import 'card.dart';

void main() {
  runApp(eldragon());
}

class eldragon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfa7f72),
      body: Stack(
        children: [
          Center(
              child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Image(
                      image: NetworkImage(
                          "https://www.diskaguamineral.com.br/img/produtos/agua-mineral-garrafa-1500-ml@2x.jpg",
                          scale: 1.5
                        ),
                    ),
                    Text("Água mineral!"),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Card()));
                      },
                      child: Text("Ir para outra tela")
                    )
          ])))
        ],
      ),
    );
  }
}