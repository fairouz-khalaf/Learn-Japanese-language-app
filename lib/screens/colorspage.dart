import 'package:flutter/material.dart';
import 'package:toku_app/components/custom_item.dart';

import '../models/model.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  final List num = const [
    ItemModel(
        sound: "sounds/colors/white.wav",
        image: "assets/images/colors/color_white.png",
        EName: "White",
        jpName: "Shiro"),
    ItemModel(
        sound: "sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png",
        EName: "Black",
        jpName: "Kuro"),
    ItemModel(
        sound: "sounds/colors/yellow.wav",
        image: "assets/images/colors/yellow.png",
        EName: "Yellow",
        jpName: "Kiiro"),
    ItemModel(
        sound: "sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png",
        EName: "brown",
        jpName: "Chairo"),
    ItemModel(
        sound: "sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png",
        EName: "gray",
        jpName: "Gurē"),
    ItemModel(
        sound: "assets/sounds/colors/red.wav3",
        image: "assets/images/colors/color_red.png",
        EName: "Red",
        jpName: "Aka"),
    ItemModel(
        sound: "sounds/colors/dusty yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        EName: "dusty yellow",
        jpName: "Dasutiierō"),
    ItemModel(
        sound: "sounds/colors/green.wav",
        image: "assets/images/colors/color_green.png",
        EName: "Green",
        jpName: "Midori"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Colors",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey,
        ),
        body: ListView.builder(
            itemCount: num.length,
            itemBuilder: (context, i) {
              return Item(color: Colors.purple, model: num[i]);
            }));
  }
}
