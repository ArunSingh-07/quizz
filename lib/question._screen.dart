import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/models/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text(currentQuestion.text,
        style: const TextStyle(
          color: Colors.white,
        )),
        const SizedBox(height: 30),

        ...currentQuestion.answers.map((answer) {
          return AnswerButton(answerText: answer, onTap: () {});
        })

      ]),
    );
  }
}
