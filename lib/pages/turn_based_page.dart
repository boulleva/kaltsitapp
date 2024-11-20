import 'package:flutter/material.dart';

class TurnBasedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Game Turn-Based"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Game Turn-Based adalah genre game yang melibatkan aksi bergantian antara pemain, sering kali memerlukan strategi untuk memenangkan permainan.",
            style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
