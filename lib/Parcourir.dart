import 'package:flutter/material.dart';

// ignore: unused_import
import 'main.dart';

class Parcourir extends StatefulWidget {
  const Parcourir({Key? key}) : super(key: key);

  @override
  _ParcourirState createState() => _ParcourirState();
}

class _ParcourirState extends State<Parcourir> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            "Parcourir",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey[900],
        body: ListView(
          children: [
            Column(
              children: [prefeText, prefe, parcourirtext, parcourir],
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

Widget prefeText = Container(
  padding: EdgeInsets.all(8),
  child: Align(
    alignment: Alignment.topLeft,
    child: Text(
      "Vos genres preferes",
      style: TextStyle(
          color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800),
    ),
  ),
);

Widget parcourirtext = Container(
  padding: EdgeInsets.all(8),
  child: Align(
    alignment: Alignment.topLeft,
    child: Text(
      "parcourir tout",
      style: TextStyle(
          color: Colors.white, fontSize: 17, fontWeight: FontWeight.w800),
    ),
  ),
);

Widget prefe = Container(
  padding: EdgeInsets.all(7.5),
  child: Wrap(
    children: [
      p,
      p2,
      p3,
      p4,
    ],
  ),
);

Widget parcourir = Container(
  child: Wrap(
    children: [
      p2,
      p,
      p3,
      p4,
      p3,
      p2,
      p3,
      p4,
    ],
  ),
);
Widget p = Container(
  margin: EdgeInsets.all(7.5),
  width: 180,
  height: 100,
  decoration: BoxDecoration(
      color: Colors.orange[800], borderRadius: BorderRadius.circular(10)),
  child: Container(
    padding: EdgeInsets.all(14),
    child: Text(
      'Hip-hop',
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
    ),
  ),
);

Widget p2 = Container(
  margin: EdgeInsets.all(7.5),
  width: 180,
  height: 100,
  decoration: BoxDecoration(
      color: Colors.green[500], borderRadius: BorderRadius.circular(10)),
  child: Container(
    padding: EdgeInsets.all(14),
    child: Text(
      'Pop',
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
    ),
  ),
);

Widget p3 = Container(
  margin: EdgeInsets.all(7.5),
  width: 180,
  height: 100,
  decoration: BoxDecoration(
      color: Colors.purple[500], borderRadius: BorderRadius.circular(10)),
  child: Container(
    padding: EdgeInsets.all(14),
    child: Text(
      'Arabic',
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
    ),
  ),
);

Widget p4 = Container(
  margin: EdgeInsets.all(7.5),
  width: 180,
  height: 100,
  decoration: BoxDecoration(
      color: Colors.pink[500], borderRadius: BorderRadius.circular(10)),
  child: Container(
    padding: EdgeInsets.all(14),
    child: Text(
      'Afro',
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
    ),
  ),
);
