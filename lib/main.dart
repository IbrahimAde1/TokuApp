import 'package:flutter/material.dart';
import 'package:tokuapp/Screens/numbers_page.dart';
import 'Screens/colors_page.dart';
import 'Screens/family_page.dart';
import 'Screens/home_page.dart';
import 'Screens/phrasses_page.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatelessWidget {
  const Toku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        HomePage.id: (context) => const HomePage(),
        NumbersPage.id: (context) => const NumbersPage(),
        FamilyPage.id: (context) => const FamilyPage(),
        ColorsPage.id: (context) => const ColorsPage(),
        PhrasesPage.id: (context) => const PhrasesPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
