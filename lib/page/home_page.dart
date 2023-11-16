import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFA01E6EE),
      ),
      body: ListView(
        children: [
          CustomMenu(imageAsset: "assets/PersegiWarna.png",title: "Persegi"),
          CustomMenu(imageAsset: "assets/Persegi PanjangWarna.png",title: "Persegi panjang"),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/LingkaranWarna.png",title: "Lingkaran")),
              Expanded(child: CustomMenu(imageAsset: "assets/LingkaranWarna.png",title: "Lingkaran")),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAsset: "assets/JajarGenjangWarna.png",title: "JajarGenjang"),
              CustomMenu(imageAsset: "assets/JajarGenjangWarna.png",title: "JajarGenjang"),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

 final String imageAsset;
 final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        color: Colors.green.shade400,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            Image.asset(imageAsset, height: 100,),
            Text(title, style: TextStyle(color: Colors.white),),
          ],
        ));
  }
}