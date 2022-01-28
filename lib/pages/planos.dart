import 'package:flutter/material.dart';

class Planos extends StatefulWidget {
  const Planos({Key? key}) : super(key: key);

  @override
  State<Planos> createState() => _PlanosState();
}

class _PlanosState extends State<Planos> {
  final PageController _pageController = PageController(viewportFraction: 0.8);

  int _currentPage = 0;

  final List _listSlide = [
    {'id': 0, 'image': 'assets/images/a.jpg'},
    {'id': 1, 'image': 'assets/images/b.jpg'},
    {'id': 2, 'image': 'assets/images/c.jpg'},
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Planos'))),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _listSlide.length,
              itemBuilder: (_, currentIndex) {
                bool activePage = currentIndex == _currentPage;
                return Slide(
                  activePage: activePage,
                  image: _listSlide[currentIndex]['image'],
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}

class Slide extends StatelessWidget {
  final String image;
  final bool activePage;

  const Slide({Key? key, required this.image, required this.activePage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double top = activePage ? 50 : 150;
    final double blur = activePage ? 30 : 0;
    final double offset = activePage ? 20 : 0;

    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      margin: EdgeInsets.only(top: top, bottom: 100, right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black87,
                blurRadius: blur,
                offset: Offset(offset, offset))
          ]),
    );
  }
}
