import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Menu Utama",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          CustomMenu(imageAssets: "assets/persegi.png",title: "Persegi"),
          CustomMenu(imageAssets: "assets/jajargenjang.png",title: "Jajar Genjang"),
          CustomMenu(imageAssets: "assets/segitiga.png",title: "Segitiga"),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
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
