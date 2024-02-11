import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color corPrincipal = Colors.red;
  Text testo = Text('Vermelho', style: TextStyle(fontSize: 50));
  Text textoBar = Text('Cores');

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: textoBar,
        backgroundColor: corPrincipal,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              testo,
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (corPrincipal == Colors.red) {
                      corPrincipal = Colors.blue;
                      testo = Text('Azul', style: TextStyle(fontSize: 50));
                      textoBar = Text('Azul');
                    } else if (corPrincipal == Colors.blue) {
                      corPrincipal = Colors.green;
                      testo = Text('Verde', style: TextStyle(fontSize: 50));
                      textoBar = Text('Verde');
                    } else if (corPrincipal == Colors.green) {
                      corPrincipal = Colors.purple;
                      testo = Text('Roxo', style: TextStyle(fontSize: 50));
                      textoBar = Text('Roxo');
                    } else if (corPrincipal == Colors.purple) {
                      corPrincipal = Colors.red;
                      testo = Text('Vermelho', style: TextStyle(fontSize: 50));
                      textoBar = Text('Vermelho');
                    }
                  });
                },
                child: Text(
                  'Trocar Cor',
                  style: TextStyle(
                    fontSize: 20,
                    color: corPrincipal,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              )
            ]),
      ),
    );
  }
}
