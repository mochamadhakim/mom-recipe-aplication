import 'package:flutter/material.dart';
import 'package:resepmakanan/MainPage.dart';

class DetailPage extends StatelessWidget {
  final String itemJudul;
  final String itemSub;
  final String itemImage;
  final String bahan;
  final String qty;

  const DetailPage(
      {Key key,
      this.itemJudul,
      this.itemSub,
      this.itemImage,
      this.qty,
      this.bahan})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Resep dari " + itemJudul,
              style: TextStyle(color: Colors.white)),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(child: Image.asset(itemImage)),
                    SizedBox(height: 10),
                    Text(
                      itemJudul,
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(itemSub),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Bahan - Bahan",
                      style: detailstyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      bahan,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Langkah Membuat",
                      style: detailstyle,
                    ),
                    Text(
                      qty,
                    ),
                  ]),
            ),
          ],
        ));
  }
}
