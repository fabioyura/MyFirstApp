import 'package:flutter/material.dart';

class PorqueUsar extends StatelessWidget {
  const PorqueUsar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Porquê Usar')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: const Text(
                'Principais motivos',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.orange),
              ),
            ),
            Items(
              icone: const Icon(
                Icons.money_rounded,
                size: 40,
              ),
              texto: 'Economia',
              texto2: 'xxxxxxxxx-xxxxxxxx\n'
                  'yyyyyy yyyyyy',
            ),
            Items(
              icone: const Icon(
                Icons.security_rounded,
                size: 40,
              ),
              texto: 'Segurança',
              texto2: 'xxxxxxxxx-xxxxxxxx\n'
                  'yyyyyyyyyy-yyyyyyyy',
            ),
            Items(
                icone: const Icon(
                  Icons.highlight,
                  size: 40,
                ),
                texto: 'Facilidade',
                texto2: 'xxxxxxxxx-xxxxxxxx\n'
                    '     yyyyyy'),
            Items(
              icone: const Icon(
                Icons.security_rounded,
                size: 40,
              ),
              texto: 'Lucro',
              texto2: 'xxxxxxxxx-xxxxxxxx\n'
                  'yyyyyy yyyyyy',
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: const Text(
                'Um Pouco de Texto',
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 230, bottom: 10),
              child: const Text(
                'Texto',
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Items extends Container {
  final String texto;
  final String texto2;
  final Icon icone;

  Items(
      {Key? key,
      required this.texto,
      required this.texto2,
      required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 85,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          icone,
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                child: Text(
                  texto,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                texto2,
                style: const TextStyle(color: Colors.orange, fontSize: 18),
              )
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black87,
              blurRadius: 5,
              offset: Offset(2, 3),
            ),
          ]),
    );
  }
}
