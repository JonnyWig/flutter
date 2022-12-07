
import 'package:flutter/material.dart';
import 'package:telaprincipal/formulario/formulario.dart';
void main() {
  runApp(TabBarDemo());
}
class TabBarDemo extends StatelessWidget {
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
                Text("Olá"),
                Text("OI"),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
                MyApp(),

                Container(
              color: Colors.blueGrey,
              child: new Center(
                child: new Text(
                  "Segunda guia",
                  style: TextStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Terceira guia",
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