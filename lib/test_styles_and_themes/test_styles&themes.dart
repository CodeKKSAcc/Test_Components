import 'package:flutter/material.dart';

import 'domain/ui_theme_helper.dart';

/*
class TestStyleAndThemes extends StatelessWidget {
  const TestStyleAndThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Styles and Themes !!!"),
        titleTextStyle: TextStyle(fontSize: 27),
        backgroundColor: Colors.blue.shade300,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 36,
          children: [
            Text("It's An Counter App", style: TextStyle(fontSize: 36, color: Colors.green, fontWeight: FontWeight.w500)),
            Text("0", style: TextStyle(fontSize: 36, color: Colors.green, fontWeight: FontWeight.w500)),
            Text(
              "Press the add button to increment the number !!!",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w500,
                color: Colors.deepPurpleAccent,
              ),
            ),
            Text(
              "The number indicates the number of times the button is pressed !!!",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w500,
                color: Colors.deepPurpleAccent,
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              child: Text("Text Button"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
*/

/*class TestStyleAndThemes extends StatelessWidget {
  const TestStyleAndThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Styles and Themes !!!"),
        titleTextStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue.shade300,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 36,
          children: [
            Text(
              "It's An Counter App",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text("0", style: Theme.of(context).textTheme.headlineLarge),
            Text(
              "Press the add button to increment the number !!!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "The number indicates the number of times the button is pressed !!!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelSmall,
              ),
              child: Text("Text Button"),
            ),
            Theme(
              data: ThemeData(
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                    side: BorderSide()
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(onPressed: (){}, child: Icon(Icons.remove),),
                  FloatingActionButton(onPressed: (){}, child: Icon(Icons.remove),),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}*/

class TestStyleAndThemes extends StatelessWidget {
  const TestStyleAndThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Styles and Themes !!!",),
        titleTextStyle: myTextStyle24(fontWeight: FontWeight.normal, color: Colors.white),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 36,
          children: [
            Text(
              "It's An Counter App",
              style: myTextStyle36(fontWeight: FontWeight.bold, color: Colors.green),
            ),
            Text("0", style: myTextStyle36(fontWeight: FontWeight.bold, color: Colors.green)),
            Text(
              "Press the add button to increment the number !!!",
              style: myTextStyle24(fontWeight: FontWeight.w600),
            ),
            Text(
              "The number indicates the number of times the button is pressed !!!",
              style: myTextStyle18(fontWeight: FontWeight.w500, color: Colors.white30),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelSmall,
              ),
              child: Text("Text Button"),
            ),
            Theme(
              data: ThemeData(
                floatingActionButtonTheme: FloatingActionButtonThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                    side: BorderSide()
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(onPressed: (){}, child: Icon(Icons.remove),),
                  FloatingActionButton(onPressed: (){}, child: Icon(Icons.remove),),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
