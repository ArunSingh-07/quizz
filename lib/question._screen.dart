import 'package:adv_basic/data/questions.dart';
import 'package:adv_basic/models/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {

  var currentQuestionindex = 0;

  void answerQuestion() {
    // currentQuestionindex = currentQuestionindex +1;
    setState(() {
      currentQuestionindex ++;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionindex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Text(currentQuestion.text,
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 218, 153, 251),
            fontSize: 24,
            fontWeight: FontWeight.bold,),
          textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
      
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(answerText: answer, onTap: answerQuestion,);
          })
      
        ]),
      ),
    );
  }
}
