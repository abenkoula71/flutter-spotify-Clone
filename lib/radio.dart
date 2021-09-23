import 'package:flutter/material.dart';

class Radioo extends StatefulWidget {
  const Radioo({Key? key}) : super(key: key);

  @override
  _RadiooState createState() => _RadiooState();
}

class _RadiooState extends State<Radioo> {
  int _currentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            "Radio",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey[900],
        body: ListView(
          children: [
            Column(
              children: [],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[800],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              switch (_currentIndex) {
                case 0:
                  Navigator.of(context).pushNamed('Accueil');
                  break;
                case 1:
                  Navigator.of(context).pushNamed('Parcourir');
                  break;
                case 2:
                  Navigator.of(context).pushNamed('Rechercher');
                  break;
                case 3:
                  Navigator.of(context).pushNamed('radio');
                  break;
                case 4:
                  Navigator.of(context).pushNamed('Bibliotheque');
                  break;
              }
            },
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white54,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: _currentIndex == 0
                      ? Icon(Icons.home)
                      : Icon(Icons.home_outlined),
                  // ignore: deprecated_member_use
                  title: Text(
                    'Accueil',
                    style: TextStyle(fontSize: 12),
                  )),
              BottomNavigationBarItem(
                  icon: _currentIndex == 1
                      ? Icon(Icons.radar)
                      : Icon(Icons.radar_outlined),
                  // ignore: deprecated_member_use
                  title: Text(
                    'Parcourir',
                    style: TextStyle(fontSize: 12),
                  )),
              BottomNavigationBarItem(
                  icon: _currentIndex == 2
                      ? Icon(Icons.search)
                      : Icon(Icons.search_outlined),
                  // ignore: deprecated_member_use
                  title: Text(
                    'Rechercher',
                    style: TextStyle(fontSize: 12),
                  )),
              BottomNavigationBarItem(
                  icon: _currentIndex == 3
                      ? Icon(Icons.radio)
                      : Icon(Icons.radio_outlined),
                  // ignore: deprecated_member_use
                  title: Text(
                    'radio',
                    style: TextStyle(fontSize: 12),
                  )),
              BottomNavigationBarItem(
                  icon: _currentIndex == 3
                      ? Icon(Icons.rowing)
                      : Icon(Icons.rowing_outlined),
                  // ignore: deprecated_member_use
                  title: Text(
                    'Bibliotheque',
                    style: TextStyle(fontSize: 12),
                  )),
            ]));
  }
}
