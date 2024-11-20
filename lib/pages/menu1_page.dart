import 'package:flutter/material.dart';
import 'moba_page.dart';
import 'fps_page.dart';
import 'gacha_page.dart';
import 'turn_based_page.dart';
import 'rpg_page.dart';

class Menu1Page extends StatelessWidget {
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
        title: Text("Main Menu"),
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
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                leading: Icon(Icons.rocket_launch, color: Colors.pinkAccent),
                title: Text(
                  items[index]['title'],
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => items[index]['page']),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
