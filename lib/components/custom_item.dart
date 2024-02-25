import 'package:flutter/material.dart';
import 'package:toku_app/models/model.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.color, required this.model})
      : super(key: key);
  final ItemModel model;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 87,
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(right: 5, bottom: 2),
              width: 100,
              height: 100,
              color: Colors.white,
              child: Image.asset(model.image!)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.jpName,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                model.EName,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                model.playsound();
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
