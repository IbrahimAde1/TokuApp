import 'package:flutter/material.dart';
import '../components/item.dart';
import '../model/model_item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<ItemData> number = const [
    ItemData(
        image: 'assets/images/numbers/number_one.png',
        nameAr: 'واحد',
        nameEn: ' One',
        pathAudio: 'number_one_sound.mp3'),
    ItemData(
        image: 'assets/images/numbers/number_two.png',
        nameAr: 'اثنين',
        nameEn: ' Two',
        pathAudio: 'number_two_sound.mp3'),
    ItemData(
      image: 'assets/images/numbers/number_three.png',
      nameAr: 'ثلاثة',
      nameEn: ' Three',
      pathAudio: 'number_three_sound.mp3',
    ),
    ItemData(
      image: 'assets/images/numbers/number_four.png',
      nameAr: 'اربعة',
      nameEn: ' Four',
      pathAudio: 'number_four_sound.mp3',
    ),
    ItemData(
        image: 'assets/images/numbers/number_five.png',
        nameAr: 'خمسة',
        nameEn: ' Five',
        pathAudio: 'number_five_sound.mp3'),
    ItemData(
      image: 'assets/images/numbers/number_six.png',
      nameAr: 'ستة',
      nameEn: ' Six',
      pathAudio: 'number_six_sound.mp3',
    ),
    ItemData(
      image: 'assets/images/numbers/number_seven.png',
      nameAr: 'سبعة',
      nameEn: 'Seven',
      pathAudio: 'number_seven_sound.mp3',
    ),
    ItemData(
      image: 'assets/images/numbers/number_eight.png',
      nameAr: 'ثمانية',
      nameEn: ' Eight',
      pathAudio: 'number_eight_sound.mp3',
    ),
    ItemData(
      image: 'assets/images/numbers/number_nine.png',
      nameAr: 'تسعة',
      nameEn: 'Nine',
      pathAudio: 'number_nine_sound.mp3',
    ),
    ItemData(
      image: 'assets/images/numbers/number_ten.png',
      nameAr: "عشرة",
      nameEn: 'Ten',
      pathAudio: 'number_ten_sound.mp3',
    ),
  ];
  static String id = 'NumbersPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xffFF9F3C),
          title: const Text(
            'Numbers',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        body: Scrollbar(
          thickness: 10,
          interactive: true,
          radius: const Radius.circular(25),
          child: ListView.builder(
              itemCount: number.length,
              itemBuilder: (context, index) {
                return Item(
                  number: number[index],
                  color: const Color(0xffFF9F3C),
                  path: 'assets/sounds/numbers/',
                );
              }),
        ));
  }
}
