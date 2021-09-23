import 'package:flutter/material.dart';

// ignore: unused_import
import 'Accueil.dart';

class Bibliotheque extends StatefulWidget {
  const Bibliotheque({Key? key}) : super(key: key);

  @override
  _BibliothequeState createState() => _BibliothequeState();
}

class _BibliothequeState extends State<Bibliotheque> {
  int _currentIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            "Bibliotheque",
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
                palylist1,
                palylist1,
                palylist1,
                palylist1,
                palylist1,
                palylist1,
                palylist1,
                SizedBox(
                  height: 20,
                ),
                text1,
                SizedBox(
                  height: 10,
                ),
                resolta
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

Widget text1 = Container(
  child: Text(
    "Ecoutes recemment",
    style: TextStyle(
        color: Colors.white, fontSize: 19, fontWeight: FontWeight.w900),
  ),
);

Widget palylist1 = Container(
  child: Column(
    children: [
      Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 50,
            height: 50,
            child: Icon(
              Icons.music_note,
              color: Colors.white38,
              size: 35,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'PlayLists',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      )
    ],
  ),
);

Widget resolta = Container(
  child: Column(
    children: [search3, search1, search2, search3, search1, search2, search3],
  ),
);

Widget search1 = Container(
  padding: EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('img/1.jpg'))),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Youm Wara Youm',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Title.Stormy',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            color: Colors.white54,
          ))
    ],
  ),
);

Widget search2 = Container(
  padding: EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('img/2.jpg'))),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Youm Wara Youm',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Title.Stormy',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            color: Colors.white54,
          ))
    ],
  ),
);

Widget search3 = Container(
  padding: EdgeInsets.all(10),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('img/3.jpg'))),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Youm Wara Youm',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Title.Stormy',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            color: Colors.white54,
          ))
    ],
  ),
);
