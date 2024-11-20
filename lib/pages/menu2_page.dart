import 'package:flutter/material.dart';
import 'moba_page.dart';
import 'fps_page.dart';
import 'gacha_page.dart';
import 'turn_based_page.dart';
import 'rpg_page.dart';

class Menu2Page extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {"title": " Game MOBA", "page": MobaPage()},
    {"title": " Game FPS", "page": FpsPage()},
    {"title": " Game Gacha", "page": GachaPage()},
    {"title": " Game Turn-Based", "page": TurnBasedPage()},
    {"title": " Game RPG", "page": RpgPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Menu"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom
            crossAxisSpacing: 8, // Jarak antar kolom
            mainAxisSpacing: 8, // Jarak antar baris
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Navigasi ke halaman berdasarkan indeks
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => items[index]['page']),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.pinkAccent,
                        Colors.orange,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      items[index]['title'],
                      textAlign: TextAlign
                          .center, // Perbaikan: textAlign diatur di widget Text
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
