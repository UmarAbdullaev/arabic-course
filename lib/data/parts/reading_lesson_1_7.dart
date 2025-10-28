import 'package:flutter/material.dart';
import '../../models/part.dart';
import '../../letter_button.dart';

/// Lesson: The Long Vowel Marks — Yaa al-Madd
final part7 = Part(
  title: "Uzoq unli belgilar: Yaa al-Madd (ي)",
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
            "The Long Vowel Marks — Yaa al-Madd",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "The **Yaa al-Madd (ي)** is the long vowel that lengthens the sound of the short vowel **Kasrah (ـِ)** "
            "— changing the short 'i' sound into a long 'ee' sound.\n\n"
            "For example: بِ = *bi*, while بِـي = *bee*.\n\n"
            "We have not yet covered the joining of letters, so just read each letter combination as separate sounds. "
            "Later In-Shā’-Allâh, we will learn how the letters connect in writing.",
            style: TextStyle(fontSize: 18, height: 1.45),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Click on the letters to hear pronunciation:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // ✅ List of Arabic letters with Yaa al-Madd
          Wrap(
            spacing: 8,
            runSpacing: 8,
            alignment: WrapAlignment.center,
            children: const [
              LetterButton(letter: "جِي", soundFile: "jii_madd.mp3"),
              LetterButton(letter: "ثِي", soundFile: "thii_madd.mp3"),
              LetterButton(letter: "تِي", soundFile: "tii_madd.mp3"),
              LetterButton(letter: "بِي", soundFile: "bii_madd.mp3"),
              LetterButton(letter: "إِي", soundFile: "alif_yaa_madd.mp3"),
              LetterButton(letter: "رِي", soundFile: "rii_madd.mp3"),
              LetterButton(letter: "ذِي", soundFile: "dhii_madd.mp3"),
              LetterButton(letter: "دِي", soundFile: "dii_madd.mp3"),
              LetterButton(letter: "خِي", soundFile: "khii_madd.mp3"),
              LetterButton(letter: "حِي", soundFile: "hii_madd.mp3"),
              LetterButton(letter: "ضِي", soundFile: "dhi_madd.mp3"),
              LetterButton(letter: "صِي", soundFile: "sii_madd.mp3"),
              LetterButton(letter: "شِي", soundFile: "shii_madd.mp3"),
              LetterButton(letter: "سِي", soundFile: "sii2_madd.mp3"),
              LetterButton(letter: "زِي", soundFile: "zii_madd.mp3"),
              LetterButton(letter: "فِي", soundFile: "fii_madd.mp3"),
              LetterButton(letter: "غِي", soundFile: "ghii_madd.mp3"),
              LetterButton(letter: "عِي", soundFile: "aii_madd.mp3"),
              LetterButton(letter: "ظِي", soundFile: "zhii_madd.mp3"),
              LetterButton(letter: "طِي", soundFile: "tii2_madd.mp3"),
              LetterButton(letter: "نِي", soundFile: "nii_madd.mp3"),
              LetterButton(letter: "مِي", soundFile: "mii_madd.mp3"),
              LetterButton(letter: "لِي", soundFile: "lii_madd.mp3"),
              LetterButton(letter: "كِي", soundFile: "kii_madd.mp3"),
              LetterButton(letter: "قِي", soundFile: "qii_madd.mp3"),
              LetterButton(letter: "يِي", soundFile: "yii_madd.mp3"),
              LetterButton(letter: "وِي", soundFile: "wii_madd.mp3"),
              LetterButton(letter: "هِي", soundFile: "hii2_madd.mp3"),
            ],
          ),

          const SizedBox(height: 32),
          const Text(
            "Each combination above demonstrates how **ي (Yaa)** extends the Kasrah sound into a long 'ee'.\n\n"
            "For instance:\n"
            "• بِ → 'bi' → بِي → 'bee'\n"
            "• تِ → 'ti' → تِي → 'tee'",
            style: TextStyle(fontSize: 18, height: 1.45),
          ),

          const Divider(height: 32, thickness: 1),
          const Text(
            "Practice Tip",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "• Focus on making the 'ee' sound clearly longer than the short 'i'.\n"
            "• Repeat each sound several times while listening.\n"
            "• Keep your lips slightly smiling when pronouncing 'ee'.\n"
            "• Later, you’ll learn how these letters join to form full words In-Shā’-Allâh.",
            style: TextStyle(fontSize: 18, height: 1.5),
          ),

          const SizedBox(height: 24),
        ],
      ),
    ),
  ),
);
