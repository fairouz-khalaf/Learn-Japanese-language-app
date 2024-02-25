import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String jpName;
  final String EName;
  final String? image;
  final String sound;
  const ItemModel(
      {this.image,
      required this.sound,
      required this.jpName,
      required this.EName});
  playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
    player.setVolume(2);
  }
}
