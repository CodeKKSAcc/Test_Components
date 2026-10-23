import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:test_components/test_styles_and_themes/manging_light_dark_themes/manage_theme_by_provider/theme_provider.dart';

/*
class LightDarkHome extends StatelessWidget {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text("Test Dark And Light Theme"),
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
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
            Text("0", style: Theme.of(context).textTheme.labelLarge!.copyWith(color: isDark ? Colors.white : Colors.black,),),
            Text(
              "Press the add button to increment the number !!!",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            Text(
              "The number indicates the number of times the button is pressed !!!",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: isDark ? Colors.white60 : Colors.black54,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: isDark ? Colors.white : Colors.black,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              child: Text("Text Button"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.settings),
      ),
    );
  }
}
*/

class LightDarkHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    bool isDark = context.watch<ThemeProvider>().isDarkTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Test Dark And Light Theme"),
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
          color: isDark ? Colors.white : Colors.black,
        ),
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
            Text("0", style: Theme.of(context).textTheme.labelLarge!.copyWith(color: isDark ? Colors.white : Colors.black,),),
            Text(
              "Press the add button to increment the number !!!",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: isDark ? Colors.white : Colors.black,
              ),
            ),
            Text(
              "The number indicates the number of times the button is pressed !!!",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: isDark ? Colors.white60 : Colors.black54,
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: isDark ? Colors.white : Colors.black,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              child: Text("Text Button"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Change The App Theme ->", style: Theme.of(context).textTheme.bodyMedium,),
                Switch(value: isDark, onChanged: (value){
                  context.read<ThemeProvider>().isDarkTheme = value;
                })
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.settings),
      ),
    );
  }
}

