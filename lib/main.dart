import 'package:eldragon/cadastro.dart';
import 'package:eldragon/formulario.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}


class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Text("Home"),
                Text("Formulario"),
                Text("Cadastro de confirmação"),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
                Cadastro(),
                
                Formulario(),
                
                Container(
                  color: Colors.blueGrey,
                  child: new Center(
                    child: new Text(
                      "Segunda guia",
                      style: TextStyle(),
                    ),
                  ),
                ),
            
           ],
          ),
        ),
      ),
    );
  }    
}
