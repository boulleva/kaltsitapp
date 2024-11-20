import 'package:flutter/material.dart';

class GachaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Game Gacha"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Game Gacha adalah game yang mengharuskan pemain mengumpulkan karakter, kartu, atau item melalui mekanisme undian atau lotere.",
            style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
