import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class LetterButton extends StatelessWidget {
  final String letter;
  final String soundFile;

  const LetterButton({super.key, required this.letter, required this.soundFile});

  void _playSound() {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/$soundFile'));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _playSound,
      child: Container(
        width: 70,
        height: 70,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Center(
          child: Text(
            letter,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
