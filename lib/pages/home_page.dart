import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ridwan_bangun_datar/pages/persegipage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green.shade300,
            title: Text(
              "Home Page",
              style: TextStyle(color: Colors.white),
            )),
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
              },
                child: CustomMenu(imageAssets: "assets/images.jpg",title: "segitiga",)),
            Row(
              children: [
                Expanded(child: CustomMenu(imageAssets: "assets/download.png",title: "jajar genjang")),
                Expanded(child: CustomMenu(imageAssets: "assets/download.png",title: "jajar genjang")),
                Expanded(child: CustomMenu(imageAssets: "assets/download.png",title: "jajar genjang")),
              ],
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(color: Colors.green),
              child: Column(
                children: [
                  Image.asset("assets/images.jpg"),
                  Text("Persegi"),
                ],
              ),
            ),
          ],
        ));
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
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
          ),
          Text(title),
        ],
      ),
    );
  }
}
