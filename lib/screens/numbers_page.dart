import 'package:flutter/material.dart';
import 'package:toku_app/components/custom_item.dart';

import '../models/model.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List num = const [
    ItemModel(
        sound: "sounds/numbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        EName: "One",
        jpName: "Ichi"),
    ItemModel(
        sound: "sounds/numbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        EName: "Two",
        jpName: "Ni"),
    ItemModel(
        sound: "sounds/numbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        EName: "Three",
        jpName: "San"),
    ItemModel(
        sound: "sounds/numbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        EName: "Four",
        jpName: "Yon"),
    ItemModel(
        sound: "sounds/numbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        EName: "Five",
        jpName: "Go"),
    ItemModel(
        sound: "sounds/numbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        EName: "Six",
        jpName: "Roku"),
    ItemModel(
        sound: "sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        EName: "Seven",
        jpName: "Nana"),
    ItemModel(
        sound: "sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        EName: "eight",
        jpName: "Hachi"),
    ItemModel(
        sound: "sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        EName: "Nine",
        jpName: "kyuu "),
    ItemModel(
        sound: "sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        EName: "Ten",
        jpName: "Juu "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Numbers",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey,
        ),
        body: ListView.builder(
            itemCount: num.length,
            itemBuilder: (context, i) {
              return Item(color: Colors.amber, model: num[i]);
            }));
  }
}
