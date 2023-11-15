import 'package:bangun_datar_appp/pages/jajargenjang_page.dart';
import 'package:bangun_datar_appp/pages/persegi_page.dart';
import 'package:bangun_datar_appp/pages/persegipanjang_page.dart';
import 'package:bangun_datar_appp/pages/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text(
          "Bangun Datar",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersegiPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/persegi.png", title: "Persegi")),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersegipanjangPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/2.png", title: "Persegi Panjang")),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SegitigaPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/segitiga.png", title: "Segitiga")),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JajargenjangPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/jajargenjang.png", title: "Jajar Genjang")),
          Row(
            children: [
              Expanded(
                  child: CustomMenu(
                      imageAssets: "assets/segitiga.png", title: "Segitiga")),
              Expanded(
                  child: CustomMenu(
                      imageAssets: "assets/segitiga.png", title: "Segitiga")),
              Expanded(
                  child: CustomMenu(
                      imageAssets: "assets/segitiga.png", title: "Segitiga")),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.black12),
      child: Column(
        children: [
          Image.asset(imageAssets),
          Text(title),
        ],
      ),
    );
  }
}
