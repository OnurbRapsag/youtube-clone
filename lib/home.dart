import 'package:flutter/material.dart';
import 'package:youtube/telas/biblioteca.dart';
import 'package:youtube/telas/em_alta.dart';
import 'package:youtube/telas/inicio.dart';
import 'package:youtube/telas/inscricao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indexAtual = 0;

  List<Widget> telas = [Inicio(), EmAlta(), Inscricao(), Biblioteca()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "images/youtube.png",
          height: 28,
          // width: 20,
        ),
        iconTheme: IconThemeData(color: Colors.grey),
        actions: [
          IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
        ],
      ),
      body: telas[_indexAtual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {
          setState(() {
            _indexAtual = i;
          });
        },
        currentIndex: _indexAtual,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Em alta",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            label: "Inscrições",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
