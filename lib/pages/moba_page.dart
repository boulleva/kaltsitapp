import 'package:flutter/material.dart';

class MobaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Game MOBA"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Game MOBA (Multiplayer Online Battle Arena) adalah genre game di mana dua tim bertarung untuk menghancurkan markas musuh sambil mempertahankan markas mereka sendiri.",
            style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
