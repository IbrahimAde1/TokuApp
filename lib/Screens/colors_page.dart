import 'package:flutter/material.dart';

import '../components/item.dart';
import '../model/model_item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final String? path = 'assets/images/family_members/';
  final List<ItemData> colors = const [
    ItemData(
      image: 'assets/images/colors/color_black.png',
      nameAr: "اسود",
      nameEn: ' black',
      pathAudio: 'black.wav',
    ),
    ItemData(
      image: 'assets/images/colors/color_brown.png',
      nameAr: "بني",
      nameEn: 'brown',
      pathAudio: 'brown.wav',
    ),
    ItemData(
      image: 'assets/images/colors/color_dusty_yellow.png',
      nameAr: "اصفر غامق",
      nameEn: 'dusty yellow',
      pathAudio: 'dusty yellow.wav',
    ),
    ItemData(
      image: 'assets/images/colors/color_gray.png',
      nameAr: "رمادي",
      nameEn: ' gray',
      pathAudio: 'gray.wav',
    ),
    ItemData(
      image: 'assets/images/colors/color_green.png',
      nameAr: "اخضر",
      nameEn: ' green',
      pathAudio: 'green.wav',
    ),
    ItemData(
      image: 'assets/images/colors/color_red.png',
      nameAr: "احمر",
      nameEn: ' red',
      pathAudio: 'red.wav',
    ),
    ItemData(
      image: 'assets/images/colors/color_white.png',
      nameAr: "ابيض",
      nameEn: 'white',
      pathAudio: 'white.wav',
    ),
    ItemData(
      image: 'assets/images/colors/yellow.png',
      nameAr: "اصفر",
      nameEn: ' yellow',
      pathAudio: 'yellow.wav',
    ),
  ];
  static String id = 'ColorsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff864CAF),
          title: const Text(
            'Colors',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        body: Scrollbar(
          thickness: 10,
          interactive: true,
          radius: const Radius.circular(25),
          child: ListView.builder(
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return Item(
                  number: colors[index],
                  color: const Color(0xff864CAF),
                  path: 'assets/sounds/colors/',
                );
              }),
        ));
  }
}
