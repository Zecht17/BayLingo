import 'dart:math';
import 'package:bay_lingo/quiz_easy.dart';
import 'package:bay_lingo/quiz_hard.dart';
import 'package:bay_lingo/quiz_medium.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final int correctAnswerCount;
  final int totalQuestions;
  final String quizType; // Add quizType parameter

  const ResultsScreen({
    Key? key,
    required this.correctAnswerCount,
    required this.totalQuestions,
    required this.quizType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Results',
          style: TextStyle(
            fontFamily: 'SfProDisplay',
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF323232),
        leading: Image.asset(
          'images/baylingo_logo.png',
          width: 50,
          height: 50,
          fit: BoxFit.contain,
        ),
      ),
      backgroundColor: const Color(0xFFFFF2E6),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Opacity(
                opacity: 0.07,
                child: Transform.rotate(
                  angle: pi,
                  child: Image.asset(
                    'images/baybayin_background.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(
              right: 130,
              top: 220,
              child: Image(
                image: AssetImage('images/baylingo_logo.png'),
                width: 330,
                height: 330,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 350,
              child: Transform.rotate(
                angle: pi / 210,
                child: const Image(
                  image: AssetImage('images/text_bubble2.png'),
                  fit: BoxFit.cover,
                  width: 580,
                  height: 580,
                ),
              ),
            ),
            Positioned(
              left: 60,
              top: 105,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You got $correctAnswerCount',
                    style: const TextStyle(
                        fontSize: 24,
                        fontFamily: 'Microsoft',
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'out of $totalQuestions questions correct!',
                    style: const TextStyle(
                        fontSize: 24,
                        fontFamily: 'Microsoft',
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Positioned(
              left: 145,
              bottom: 125,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Navigate back to the appropriate quiz based on the quiz type
                      if (quizType == 'easy') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizEasy(),
                          ),
                        );
                      } else if (quizType == 'medium') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizMedium(),
                          ),
                        );
                      } else if (quizType == 'hard') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizHard(),
                          ),
                        );
                      }
                    },
                    child: const Text('Retry Quiz'),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 733,
              right: 170,
              child: Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                  color: Color(0xFF323232),
                  shape: BoxShape.circle, // Circle
                ),
              ),
            ),
            Positioned(
              left: 166.5,
              top: 730,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Image(
                  image: AssetImage('images/homeicon.png'),
                  width: 75,
                  height: 75,
                ),
              ),
            ),
            Positioned(
              top: 758,
              left: 244,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFF323232),
                  shape: BoxShape.circle, // Circle
                ),
              ),
            ),
            Positioned(
              left: 250,
              top: 762,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/about_us');
                },
                child: const Image(
                  image: AssetImage('images/info_white.png'),
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Positioned(
              top: 758,
              right: 248,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFF323232),
                  shape: BoxShape.circle, // Circle
                ),
              ),
            ),
            Positioned(
              right: 251,
              top: 761,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/quiz_letra');
                },
                child: const Image(
                  image: AssetImage('images/return.png'),
                  width: 45,
                  height: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
