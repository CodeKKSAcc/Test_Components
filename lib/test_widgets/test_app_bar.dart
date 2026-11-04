import 'package:flutter/material.dart';

class TestAppBar extends StatelessWidget {
  const TestAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
        centerTitle: true,
        leading: Icon(Icons.other_houses),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        elevation: 18,
        shadowColor: Colors.green,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 9),
          Icon(Icons.search),
          SizedBox(width: 9),
          PopupMenuButton(
            elevation: 18,
            shadowColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(18),
            ),
            position: PopupMenuPosition.under,
            itemBuilder: (_) {
              return [
                PopupMenuItem(
                  textStyle: TextStyle(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Settings"),
                      Icon(Icons.settings, color: Colors.black),
                    ],
                  ),
                ),
                PopupMenuItem(
                  textStyle: TextStyle(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Search"),
                      Icon(Icons.search, color: Colors.black),
                    ],
                  ),
                ),
                PopupMenuItem(
                  textStyle: TextStyle(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Notification"),
                      Icon(Icons.notifications, color: Colors.black),
                    ],
                  ),
                ),
                PopupMenuItem(
                  textStyle: TextStyle(color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Logout"),
                      Icon(Icons.logout, color: Colors.black),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(child: Text("Test App Bar", style: TextStyle(fontSize: 27))),
    );
  }
}
