import 'package:flutter/material.dart';

import '../components/phrases_item.dart';
import '../models/model.dart';

class PhrasesPage extends StatefulWidget {
  const PhrasesPage({super.key});

  @override
  State<PhrasesPage> createState() => _PhrasesPageState();
}

class _PhrasesPageState extends State<PhrasesPage> {
  final List phrasesList = const [
    ItemModel(
        sound: "sounds/phrases/yes_im_coming.wav",
        EName: "Yes Im coming",
        jpName: "Hai, kimasu"),
    ItemModel(
        sound: "sounds/phrases/where_are_you_going.wav",
        EName: "Where are you going",
        jpName: "Doko ni iku no"),
    ItemModel(
        sound: "sounds/phrases/what_is_your_name.wav",
        EName: "Whats your Name",
        jpName: "Anata no namae wa nandesuka"),
    ItemModel(
        sound: "sounds/phrases/are_you_coming.wav",
        EName: "Are you coming",
        jpName: "Kimasu ka?'"),
    ItemModel(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        EName: "Dont forget to subscribe",
        jpName: "Wasurezu ni kōdoku shite kudasai"),
    ItemModel(
        sound: "sounds/phrases/programming_is_easy.wav",
        EName: "Programming is easy",
        jpName: "Puroguramingu wa kantandesu"),
    ItemModel(
        sound: "sounds/phrases/i_love_anime.wav",
        EName: "I Love Anime",
        jpName: "Watashi wa anime ga daisukidesu"),
    ItemModel(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        EName: "how are you feeling",
        jpName: "Go kibun wa ikagadesu ka. "),
    ItemModel(
        sound: "sounds/phrases/i_love_programming.wav",
        EName: "I Love programming",
        jpName: "Puroguramingu ga daisukidesu "),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Phrases",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.grey,
        ),
        body: ListView.builder(
            itemCount: phrasesList.length,
            itemBuilder: (context, i) {
              return PhrasesItem(color: Colors.blue, model: phrasesList[i]);
            }));
  }
}
