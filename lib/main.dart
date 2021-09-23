import 'package:flutter/material.dart';
import 'package:spotify_test/Accueil.dart';
import 'package:spotify_test/Bibliotheque.dart';
import 'package:spotify_test/Parcourir.dart';
import 'package:spotify_test/Rechercher.dart';
import 'package:spotify_test/radio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "Accueil": (context) => Accueil(),
        "Parcourir": (context) => Parcourir(),
        "Rechercher": (context) => Rechercher(),
        "radio": (context) => Radioo(),
        "Bibliotheque": (context) => Bibliotheque(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Accueil(),
    );
  }
}
