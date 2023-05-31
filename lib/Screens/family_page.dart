import 'package:flutter/material.dart';

import '../components/item.dart';
import '../model/model_item.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({Key? key}) : super(key: key);

  final List<ItemData> family = const [
    ItemData(
      image: 'assets/images/family_members/family_father.png',
      nameAr: "الاب",
      nameEn: ' father',
      pathAudio: 'father.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_mother.png',
      nameAr: "الام",
      nameEn: ' mother',
      pathAudio: 'mother.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_son.png',
      nameAr: "الابن",
      nameEn: ' son',
      pathAudio: 'son.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_older_brother.png',
      nameAr: "الاخ الاكبر",
      nameEn: ' older bother',
      pathAudio: 'older bother.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_older_sister.png',
      nameAr: "الاخت الكبيرة",
      nameEn: ' older sister',
      pathAudio: 'older sister.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_younger_brother.png',
      nameAr: "الاخ الاصغر",
      nameEn: ' younger brohter',
      pathAudio: 'younger brohter.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_younger_sister.png',
      nameAr: "الاخت الاصغرة",
      nameEn: 'younger sister',
      pathAudio: 'younger sister.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_grandfather.png',
      nameAr: "الجد",
      nameEn: ' grand father',
      pathAudio: 'grand father.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_grandmother.png',
      nameAr: "الجدة",
      nameEn: 'grand mother',
      pathAudio: 'grand mother.wav',
    ),
    ItemData(
      image: 'assets/images/family_members/family_daughter.png',
      nameAr: "بنت",
      nameEn: 'daughter',
      pathAudio: 'daughter.wav',
    ),
  ];
  static String id = 'FamilyPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff5E8A3F),
          title: const Text(
            'Family',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        body: Scrollbar(
          thickness: 10,
          interactive: true,
          radius: const Radius.circular(25),
          child: ListView.builder(
              itemCount: family.length,
              itemBuilder: (context, index) {
                return Item(
                  number: family[index],
                  color: const Color(0xff5E8A3F),
                  path: 'assets/sounds/family_members/',
                );
              }),
        ));
  }
}
