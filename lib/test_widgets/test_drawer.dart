import 'package:flutter/material.dart';

/*class TestDrawer extends StatelessWidget {
  const TestDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test Drawer"), centerTitle: true),
      drawer: Drawer(
        width: 300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.horizontal(
            right: Radius.circular(21),
          ),
        ),
        backgroundColor: Colors.blue.shade300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 27),
          child: Column(
            spacing: 15,
            children: [
              Text("Test App"),
              Divider(),
              Row(spacing: 15, children: [Icon(Icons.image, size: 27), Text("Images")]),
              Row(spacing: 15, children: [Icon(Icons.person, size: 27), Text("Profile")]),
              Row(spacing: 15, children: [Icon(Icons.inbox, size: 27), Text("Inbox")]),
            ],
          ),
        ),
      ),
    );
  }
}*/

/*class TestDrawer extends StatefulWidget {
  const TestDrawer({super.key});

  @override
  State<TestDrawer> createState() => _TestDrawerState();
}

class _TestDrawerState extends State<TestDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test Drawer"), centerTitle: true),
      drawer: Drawer(
        width: 270,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15)
        ),
        child: ListView(
          children: [
            DrawerHeader(decoration: BoxDecoration(
              color: Colors.blue,
            ), child: Text("Test Drawer")),
          ],
        ),
      ),
    );
  }
}*/

class TestDrawer extends StatefulWidget {
  const TestDrawer({super.key});

  @override
  State<TestDrawer> createState() => _TestDrawerState();
}

class _TestDrawerState extends State<TestDrawer> {
  final List<Widget> _pages = [ProfilePage(), DetailPage(), LoginPage()];
  final List<String> _pageDesc = ["Profile", "Detail", "Login"];
  final List<Icon> _pageIcon = [
    Icon(Icons.person),
    Icon(Icons.image),
    Icon(Icons.login),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test Drawer"), centerTitle: true),
      drawer: Drawer(
        width: 270,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                margin: EdgeInsets.all(0),
                decoration: BoxDecoration(color: Colors.blue),
                child: ListTile(
                  title: Text(
                    "Test Drawer",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("It's An Test App",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),
                ),
              ),
              ListView.builder(
                itemCount: _pages.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentPage = index;
                      });

                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: _pageIcon[index],
                      title: Text(_pageDesc[index]),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: _pages[currentPage],
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Profile Page",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.pink,
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Detail Page",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.green,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Login Page",
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.yellow,
    );
  }
}
