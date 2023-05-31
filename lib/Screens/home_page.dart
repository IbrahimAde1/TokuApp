import 'package:flutter/material.dart';
import 'package:tokuapp/Screens/phrasses_page.dart';
import '../components/category.dart';
import 'colors_page.dart';
import 'family_page.dart';
import 'numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Toku',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        backgroundColor: const Color(0xff543D36),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Category(const Color(0xffFF9F3C), 'Numbers', () {
          Navigator.pushNamed(context, NumbersPage.id);
        }),
        Category(const Color(0xff5E8A3F), 'FamilyMembers', () {
          Navigator.pushNamed(context, FamilyPage.id);
        }),
        Category(const Color(0xff864CAF), 'Colors', () {
          Navigator.pushNamed(context, ColorsPage.id);
        }),
        Category(const Color(0xff52AFD6), 'Phrases', () {
          Navigator.pushNamed(context, PhrasesPage.id);
        }),
      ]),
    );
  }
}
