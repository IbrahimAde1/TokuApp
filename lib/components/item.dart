import 'package:flutter/material.dart';
import 'package:tokuapp/model/model_item.dart';
import 'package:audioplayers/audioplayers.dart';

import '../model/item_phrases.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  Item(
      {super.key,
      required this.number,
      required this.color,
      required this.path});
  final ItemData number;
  final Color color;
  String path;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromARGB(125, 255, 255, 255)),
                child: Image.asset(
                  number.image,
                ),
              ),
              Column(
                children: [
                  Text(
                    (number.nameAr),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    number.nameEn,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  AudioCache player = AudioCache(prefix: path);
                  player.play(number.pathAudio);
                },
                icon: const Icon(Icons.play_arrow),
              ),
            ],
          ),
          onTap: () {
            AudioCache player = AudioCache(prefix: path);
            player.play(number.pathAudio);
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ItemPhrase extends StatelessWidget {
  ItemPhrase(
      {super.key,
      required this.phrases,
      required this.color,
      required this.path});
  final ItemPhrases phrases;
  final Color color;
  String path;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: ListTile(
          titleAlignment: ListTileTitleAlignment.top,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (phrases.nameAr),
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    phrases.nameEn,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  AudioCache player = AudioCache(prefix: path);
                  player.play(phrases.pathAudio);
                },
                icon: const Icon(Icons.play_arrow),
              ),
            ],
          ),
          onTap: () {
            AudioCache player = AudioCache(prefix: path);
            player.play(phrases.pathAudio);
          },
        ),
      ),
    );
  }
}
