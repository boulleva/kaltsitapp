import 'package:flutter/material.dart';

class RpgPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Game RPG"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Game RPG (Role-Playing Game) adalah genre game di mana pemain mengambil peran sebagai karakter dalam cerita yang biasanya kaya akan narasi.",
            style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
