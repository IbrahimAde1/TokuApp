// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(this.color, this.text, this.ontap, {Key? key}) : super(key: key);
  String? text;
  Color? color;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      title: Card(
        color: color,
        semanticContainer: true,
        elevation: 10,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          alignment: Alignment.center,
          height: 60,
          width: double.infinity,
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
