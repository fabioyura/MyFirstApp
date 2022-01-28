import 'package:flutter/material.dart';

class SaibaMais extends StatelessWidget {
  const SaibaMais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Saiba Mais')),
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 5),
              child: const Text(
                'Saiba mais',
                style: TextStyle(
                    color: Colors.orange,
                    fontFamily: 'OpenSans',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Colors.red[200],
              width: 310,
              height: 210,
              margin:
                  const EdgeInsets.only(top: 20, left: 0, right: 0, bottom: 0),
              child: const Center(
                child: Text(
                  'Video',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 5),
              height: 60,
              width: 360,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.orange)),
              child: TextButton(
                child: const Text('Manuais'),
                onPressed: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              height: 60,
              width: 360,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.orange)),
              child: TextButton(
                child: const Text('Folders'),
                onPressed: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              height: 60,
              width: 360,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.orange)),
              child: TextButton(
                child: const Text('Planilhas'),
                onPressed: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 60,
              width: 360,
              child: ElevatedButton(
                child: const Text(
                  'Assinar',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
