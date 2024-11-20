import 'package:flutter/material.dart';

class FpsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengertian Game FPS"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Game FPS (First-Person Shooter) adalah game yang berfokus pada aksi tembak-menembak dari sudut pandang orang pertama.",
            style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
