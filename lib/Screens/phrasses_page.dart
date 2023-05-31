import 'package:flutter/material.dart';

import '../components/item.dart';
import '../model/item_phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemPhrases> phrases = const [
    ItemPhrases(
      nameAr: "هل انت قادم",
      nameEn: ' are you coming',
      pathAudio: 'are_you_coming.wav',
    ),
    ItemPhrases(
      nameAr: "لا تنسي الاشتراك",
      nameEn: 'dont forget subscribe',
      pathAudio: 'dont_forget_to_subscribe.wav',
    ),
    ItemPhrases(
      nameAr: "كيف تشعر",
      nameEn: 'how are you feeling',
      pathAudio: 'how_are_you_feeling.wav',
    ),
    ItemPhrases(
      nameAr: "انا احب الانمي",
      nameEn: ' i love anime',
      pathAudio: 'i_love_anime.wav',
    ),
    ItemPhrases(
      nameAr: "انا احب البرمجة",
      nameEn: ' i love programming',
      pathAudio: 'i_love_programming.wav',
    ),
    ItemPhrases(
      nameAr: "البرمجة سهلة",
      nameEn: ' programming is easy',
      pathAudio: 'programming_is_easy.wav',
    ),
    ItemPhrases(
      nameAr: "ما اسمك",
      nameEn: 'what is your name',
      pathAudio: 'what_is_your_name.wav',
    ),
    ItemPhrases(
      nameAr: "الي اين تذهب",
      nameEn: ' where are you going',
      pathAudio: 'where_are_you_going.wav',
    ),
    ItemPhrases(
      nameAr: "نعم انا قادم",
      nameEn: ' yes im coming',
      pathAudio: 'yes_im_coming.wav',
    ),
  ];
  static String id = 'PhrasesPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff52AFD6),
          title: const Text(
            'Phrases',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        body: Scrollbar(
          thickness: 10,
          interactive: true,
          radius: const Radius.circular(25),
          child: ListView.builder(
              itemCount: phrases.length,
              itemBuilder: (context, index) {
                return ItemPhrase(
                  phrases: phrases[index],
                  color: const Color(0xff52AFD6),
                  path: 'assets/sounds/phrases/',
                );
              }),
        ));
  }
}
