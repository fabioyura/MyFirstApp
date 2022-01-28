import 'package:appmobile/pages/planos.dart';
import 'package:appmobile/pages/porque_usar.dart';
import 'package:appmobile/pages/saiba_mais.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual = 0;
  late PageController controlador;

  @override
  void initState() {
    super.initState();
    controlador = PageController(initialPage: paginaAtual);
  }

  setCurrentPage(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controlador,
        children: const [SaibaMais(), PorqueUsar(), Planos()],
        onPageChanged: setCurrentPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: 'Saiba Mais'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_tree), label: 'Porquê Usar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.forward_outlined), label: 'Planos'),
        ],
        currentIndex: paginaAtual,
        onTap: (pagina) {
          controlador.animateToPage(pagina,
              duration: const Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}
