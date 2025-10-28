import 'package:flutter/material.dart';
import '../../models/part.dart';
import '../../letter_button.dart';

/// Lesson: The Long Vowel Marks — Alifu-l-Madd
final part6 = Part(
  title: "Uzoq unli belgilar: Alifu-l-Madd (ا)",
  content: Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "The Long Vowel Marks — Alifu-l-Madd",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "In the following three Parts, we shall cover the **long vowel-marks**, In-Shā’-Allâh (God willing). "
            "The long vowel-marks are formed by combining:\n\n"
            "• a single short vowel, and\n"
            "• a letter used to lengthen its sound.\n\n"
            "The **Alifu-l-Madd (ا)** lengthens the short vowel **Fatħah (ـَ)** — turning the short 'a' sound into a long 'aa' sound.\n"
            "For example: بَ = *ba*, while بَا = *baa*.\n\n"
            "We have not yet covered the joining of letters, so for now, simply read each letter as a separate sound. "
            "We will study connected forms later In-Shā’-Allâh.",
            style: TextStyle(fontSize: 18, height: 1.45),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Click on the letters to hear pronunciation:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // ✅ List of Arabic letters with Alifu-l-Madd
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: const [
              LetterButton(letter: "جَا", soundFile: "jaa_madd.mp3"),
              LetterButton(letter: "ثَا", soundFile: "thaa_madd.mp3"),
              LetterButton(letter: "تَا", soundFile: "taa_madd.mp3"),
              LetterButton(letter: "بَا", soundFile: "baa_madd.mp3"),
              LetterButton(letter: "آ", soundFile: "alif_madd.mp3"),
              LetterButton(letter: "رَا", soundFile: "raa_madd.mp3"),
              LetterButton(letter: "ذَا", soundFile: "dhaa_madd.mp3"),
              LetterButton(letter: "دَا", soundFile: "daa_madd.mp3"),
              LetterButton(letter: "خَا", soundFile: "khaa_madd.mp3"),
              LetterButton(letter: "حَا", soundFile: "haa_madd.mp3"),
              LetterButton(letter: "ضَا", soundFile: "daad_madd.mp3"),
              LetterButton(letter: "صَا", soundFile: "saad_madd.mp3"),
              LetterButton(letter: "شَا", soundFile: "shaa_madd.mp3"),
              LetterButton(letter: "سَا", soundFile: "saa_madd.mp3"),
              LetterButton(letter: "زَا", soundFile: "zaa_madd.mp3"),
              LetterButton(letter: "فَا", soundFile: "faa_madd.mp3"),
              LetterButton(letter: "غَا", soundFile: "ghaa_madd.mp3"),
              LetterButton(letter: "عَا", soundFile: "aa_madd.mp3"),
              LetterButton(letter: "ظَا", soundFile: "zhaa_madd.mp3"),
              LetterButton(letter: "طَا", soundFile: "taa2_madd.mp3"),
              LetterButton(letter: "نَا", soundFile: "naa_madd.mp3"),
              LetterButton(letter: "مَا", soundFile: "maa_madd.mp3"),
              LetterButton(letter: "لاَ", soundFile: "laa_madd.mp3"),
              LetterButton(letter: "كَا", soundFile: "kaa_madd.mp3"),
              LetterButton(letter: "قَا", soundFile: "qaa_madd.mp3"),
              LetterButton(letter: "يَا", soundFile: "yaa_madd.mp3"),
              LetterButton(letter: "وَا", soundFile: "waa_madd.mp3"),
              LetterButton(letter: "هَا", soundFile: "haa2_madd.mp3"),
            ],
          ),

          const SizedBox(height: 32),
          const Text(
            "Each example above demonstrates how the letter **ا (Alif)** extends the Fatħah sound into a long 'aa'.\n\n"
            "For instance:\n"
            "• بَ → 'ba' → بَا → 'baa'\n"
            "• تَ → 'ta' → تَا → 'taa'",
            style: TextStyle(fontSize: 18, height: 1.45),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Practice Tip",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "• Focus on making the 'aa' sound clearly longer than the short 'a'.\n"
            "• Repeat each letter several times while listening.\n"
            "• Notice the smooth, open mouth position when pronouncing 'aa'.\n"
            "• Later, these letters will join together to form full words In-Shā’-Allâh.",
            style: TextStyle(fontSize: 18, height: 1.5),
          ),

          const SizedBox(height: 24),
        ],
      ),
    ),
  ),
);
