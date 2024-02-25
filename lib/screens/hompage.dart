import 'package:flutter/material.dart';
import 'package:toku_app/screens/colorspage.dart';
import 'package:toku_app/screens/familymemberspage.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../components/custom_container.dart';

import 'numbers_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Toku",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          CustomContainer(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            text: "Numbers",
            color: Colors.amber[900],
          ),
          CustomContainer(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            },
            text: "Family Members",
            color: Colors.green,
          ),
          CustomContainer(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorPage();
              }));
            },
            text: "Colors",
            color: Colors.purple,
          ),
          CustomContainer(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            text: "Phrases",
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
