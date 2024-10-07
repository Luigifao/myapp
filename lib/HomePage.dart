import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomePage extends StatelessWidget {
  double raio = 100;
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja bem vindo'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _circulo("Pare", Colors.red),
            _circulo("Atenção", Colors.yellow),
            _circulo("Siga", Colors.green),
          ],
        ),
      ),
    );
  }

  Container _circulo(String texto, Color cor) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(raio),
          color: cor,
        ),
        height: 120,
        width: 120,
        alignment: Alignment.center,
        child: Text(texto,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: 'Carattere',
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.overline,
                decorationColor: Colors.blue,
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 2,
                )));
  }
}
