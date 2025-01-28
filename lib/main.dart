import 'package:flutter/material.dart';

import 'componentes/jogo_da_velha.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Jogo da Velha';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ), // ThemeData
      home: const HomePage(title: titulo),
    ); // MaterialApp
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Container()), // Expanded
            Expanded(
              flex: 7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                    child: Container(
                      // alignment: Alignment.center,
                      // color: Colors.red,
                      // child: const Text('Primeira Coluna'),
                    ), // Container
                  ), // Expanded
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ), //Border.all
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: Offset(0, 20),
                          ), // BoxShadow
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: JogoDaVelha(),
                      )),
                  ), // Expanded
                  Expanded(
                    child: Container(
                      // alignment: Alignment.center,
                      // color: Colors.red,
                      // child: const Text('Terceira Coluna'),
                      ), // Container
                  ), // Expanded
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                //alignment: Alignment.center,
                //color: Colors.blue,
                //child: const Text('Layout Inferior'),
              ), // Container
            ), // Expanded
          ],
        ), // Column
      ), // Center
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // floatingActionButton
    ); // Scaffold
  }
}
