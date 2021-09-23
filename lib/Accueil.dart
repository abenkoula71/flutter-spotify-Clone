import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            "Accueil",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey[900],
        body: ListView(
          children: [
            Column(
              children: [
                playlist,
              ],
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

Widget playlist =
    Center(child: Wrap(children: [playfav, play1, play1, play2, play2, play1]));

Widget playfav = Container(
    height: 220,
    margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 6),
    child: Column(
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/1.jpg"), fit: BoxFit.fill)),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Titles likes',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
          ),
        )
      ],
    ));

Widget play1 = Container(
    height: 220,
    margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 6),
    child: Column(
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/2.jpg"), fit: BoxFit.fill)),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Daily Mix 4',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              child: Text(
                'Stormy,abd,abdaka,haxim ,...',
                style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            )
          ],
        )
      ],
    ));

Widget play2 = Container(
    height: 220,
    margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 6),
    child: Column(
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/3.jpg"), fit: BoxFit.fill)),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Today top Maghreb Hits',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              child: Text(
                'Stormy,abd,abdaka,haxim ,...',
                style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
            )
          ],
        )
      ],
    ));
