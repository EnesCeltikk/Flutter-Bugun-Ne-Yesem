import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BugunNeYesem());
}

class BugunNeYesem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: YemekSayfasi(),
          backgroundColor: Colors.brown[400],
          appBar: AppBar(
            backgroundColor: Colors.brown[700],
            centerTitle: true,
            title: Text(
              'BUGÜN NE YESEM',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = Random().nextInt(5) + 1;

  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana',
    'Tavuk Suyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  int yemekNo = Random().nextInt(5) + 1;

  int tatliNo = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/images/corba_$corbaNo.jpg',
              ),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 16),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
              thickness: 1.2,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/images/yemek_$yemekNo.jpg',
              ),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 16),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
              thickness: 1.2,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                'assets/images/tatli_$tatliNo.jpg',
              ),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 16),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 8),
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
              thickness: 1.2,
            ),
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.grey,
            splashColor: Colors.blueAccent,
            padding: EdgeInsets.all(8.0),
            onPressed: () {
              setState(() {
                corbaNo = Random().nextInt(5) + 1;
                yemekNo = Random().nextInt(5) + 1;
                tatliNo = Random().nextInt(5) + 1;
              });
            },
            child: Text('Bugün Ne Yiyim?'),
          )
        ],
      ),
    );
  }
}
