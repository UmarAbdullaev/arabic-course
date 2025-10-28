import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../models/part.dart';

/// Widget for multiple-choice questions with audio
class AudioQuestion extends StatefulWidget {
  final String questionText;
  final List<String> options;
  final String correctAnswer;
  final String soundFile;

  const AudioQuestion({
    super.key,
    required this.questionText,
    required this.options,
    required this.correctAnswer,
    required this.soundFile,
  });

  @override
  State<AudioQuestion> createState() => _AudioQuestionState();
}

class _AudioQuestionState extends State<AudioQuestion> {
  String? selectedOption;
  bool showResult = false;
  final player = AudioPlayer();

  void _playSound() async {
    await player.play(AssetSource('sounds/${widget.soundFile}'));
  }

  void _selectOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  Color _getButtonColor(String option) {
    if (!showResult) return Colors.blue.shade50;
    if (option == widget.correctAnswer) return Colors.green.shade200;
    if (option == selectedOption && option != widget.correctAnswer) {
      return Colors.red.shade200;
    }
    return Colors.blue.shade50;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.questionText,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: _playSound,
            icon: const Icon(Icons.volume_up),
            label: const Text("Play sound"),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: widget.options.map((option) {
              return GestureDetector(
                onTap: () => _selectOption(option),
                child: Container(
                  width: 60,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: _getButtonColor(option),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: selectedOption == option
                          ? Colors.blue
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    option,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 8),
          if (showResult)
            Text(
              selectedOption == widget.correctAnswer
                  ? "✅ Correct!"
                  : "❌ Correct answer: ${widget.correctAnswer}",
              style: TextStyle(
                color: selectedOption == widget.correctAnswer
                    ? Colors.green
                    : Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}

/// Full Exercise Page
final part5 = Part(
  title: "5-qism — تَدْرِيبٌ (Exercise)",
  content: ExerciseContent(),
);

class ExerciseContent extends StatefulWidget {
  const ExerciseContent({super.key});

  @override
  State<ExerciseContent> createState() => _ExerciseContentState();
}

class _ExerciseContentState extends State<ExerciseContent> {
  final List<GlobalKey<_AudioQuestionState>> questionKeys = [];

  @override
  void initState() {
    super.initState();
    // Create keys for 20 questions
    for (int i = 0; i < 20; i++) {
      questionKeys.add(GlobalKey<_AudioQuestionState>());
    }
  }

  bool showAllResults = false;

  void _markAll() {
    setState(() {
      showAllResults = true;
      for (final key in questionKeys) {
        key.currentState?.setState(() {
          key.currentState!.showResult = true;
        });
      }
    });
  }

  void _resetAll() {
    setState(() {
      showAllResults = false;
      for (final key in questionKeys) {
        key.currentState?.setState(() {
          key.currentState!.selectedOption = null;
          key.currentState!.showResult = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      // Q1–Q20 (fill correctAnswer & soundFile accordingly)
      {
        "options": ["ث", "ذ", "ز", "ظ"],
        "correct": "ذ",
        "sound": "q1_dhal.mp3"
      },
      {
        "options": ["ت", "ث", "ط", "ي"],
        "correct": "ث",
        "sound": "q2_tha.mp3"
      },
      {
        "options": ["هـ", "ت", "ب", "ي"],
        "correct": "هـ",
        "sound": "q3_ha.mp3"
      },
      {
        "options": ["ب", "ث", "ح", "ف"],
        "correct": "ب",
        "sound": "q4_ba.mp3"
      },
      {
        "options": ["ثِ", "ذِ", "زِ", "ظِ"],
        "correct": "ثِ",
        "sound": "q5_thi.mp3"
      },
      {
        "options": ["جَ", "خَ", "شَ", "يَ"],
        "correct": "جَ",
        "sound": "q6_ja.mp3"
      },
      {
        "options": ["ف", "كـ", "ب", "ق"],
        "correct": "ف",
        "sound": "q7_fa.mp3"
      },
      {
        "options": ["و", "ي", "ر", "ت"],
        "correct": "و",
        "sound": "q8_waw.mp3"
      },
      {
        "options": ["تَ", "دَ", "ضَ", "طَ"],
        "correct": "تَ",
        "sound": "q9_ta.mp3"
      },
      {
        "options": ["أَ", "أُ", "إِ", "عُ"],
        "correct": "أَ",
        "sound": "q10_alif_fatha.mp3"
      },
      {
        "options": ["ي", "غ", "ع", "و"],
        "correct": "ع",
        "sound": "q11_ayn.mp3"
      },
      {
        "options": ["ت", "ث", "ط", "ي"],
        "correct": "ط",
        "sound": "q12_ta_emphatic.mp3"
      },
      {
        "options": ["خ", "غ", "كـ", "ق"],
        "correct": "خ",
        "sound": "q13_kha.mp3"
      },
      {
        "options": ["بُ", "جُ", "قُ", "كُ"],
        "correct": "قُ",
        "sound": "q14_qu.mp3"
      },
      {
        "options": ["تِ", "لِ", "مِ", "نِ"],
        "correct": "مِ",
        "sound": "q15_mi.mp3"
      },
      {
        "options": ["حِ", "خِ", "عِ", "هِـ"],
        "correct": "خِ",
        "sound": "q16_khi.mp3"
      },
      {
        "options": ["تِ", "تُ", "ثِ", "طِ"],
        "correct": "تُ",
        "sound": "q17_tu.mp3"
      },
      {
        "options": ["ل", "مـ", "و", "ن"],
        "correct": "مـ",
        "sound": "q18_meem.mp3"
      },
      {
        "options": ["ث", "س", "ز", "ص"],
        "correct": "س",
        "sound": "q19_seen.mp3"
      },
      {
        "options": ["ثَ", "بَ", "فَ", "نَ"],
        "correct": "فَ",
        "sound": "q20_fa_fatha.mp3"
      },
    ];

    return Container(
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
          children: [
            const Text(
              "تَدْرِيبٌ — Exercise",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              "اِسْتَمِعْ إِلَى الصَّوْتِ ثُمَّ اِخْتَرِ الْحَرْفَ الْمُنَاسِبَ.\n"
              "Listen to the sound, then choose the correct letter.",
              style: TextStyle(fontSize: 18, height: 1.4),
              textAlign: TextAlign.center,
            ),
            const Divider(height: 30, thickness: 1),

            // Generate all questions
            for (int i = 0; i < questions.length; i++)
              AudioQuestion(
                key: questionKeys[i],
                questionText: "Question ${i + 1}",
                options: List<String>.from(questions[i]["options"] as List),
                correctAnswer: questions[i]["correct"] as String,
                soundFile: questions[i]["sound"] as String,
              ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _markAll,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green),
                  child: const Text("Mark"),
                ),
                ElevatedButton(
                  onPressed: _resetAll,
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
