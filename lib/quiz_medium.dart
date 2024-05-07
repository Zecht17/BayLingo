import 'dart:math';
import 'package:bay_lingo/home.dart';
import 'package:bay_lingo/result.dart';
import 'package:flutter/material.dart';

class QuizMedium extends StatefulWidget {
  const QuizMedium({Key? key}) : super(key: key);

  @override
  State<QuizMedium> createState() => _QuizMediumState();
}

class _QuizMediumState extends State<QuizMedium> {
  static const Color _backgroundColor = Color(0xFFFFF2E6);
  static const Color _appBarColor = Color(0xFF323232);
  static const Color _buttonColor = Color(0xFF908C8A);
  static const double _fontSize = 30;
  int _questionsAnswered = 0;
  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'Which Baybayin character represents the syllable “Pa”?',
      'options': [
        '/bigger_ka.png',
        '/bigger_la.png',
        '/bigger_pa.png',
        '/bigger_ma.png'
      ],
      'answerIndex': 2, // Correct answer is "/pa.png" at index 2
    },
    {
      'question': 'How is the syllable "Na" written in Baybayin?',
      'options': [
        '/bigger_ta.png',
        '/bigger_na.png',
        '/bigger_ya.png',
        '/bigger_da.png'
      ],
      'answerIndex': 1, // Correct answer is "/na.png" at index 2
    },
    {
      'question': 'Which Baybayin character represents the word “Ama”?',
      'options': [
        '/3_a.png',
        '/3_b.png',
        '/3_c.png',
        '/3_d.png'
      ],
      'answerIndex': 3, // Correct answer is "/3_d.png" at index 3
    },
    {
      'question': 'What word does this baybayin symbol represent?',
      'image': 'assets/mahal.png',
      'options': ['Mahal', 'Irog', 'Anak', 'Mata'],
      'answerIndex': 0, // Correct answer is "Mahal" at index 0
    },
    {
      'question': 'Which Baybayin character represents the syllable “Le”?',
      'options': [
        '/5_a.png',
        '/5_b.png',
        '/5_c.png',
        '/3_d.png'
      ],
      'answerIndex': 1, // Correct answer is "/5_b.png" at index 1
    },
    {
      'question': 'What word does this baybayin symbol represent?',
      'image': 'assets/ina.png',
      'options': ['Anak', 'Ama', 'Ina', 'Lola'],
      'answerIndex': 2, // Correct answer is "Ina" at index 2
    },
    {
      'question': 'Which Baybayin character represents the syllable “Ho”?',
      'options': [
        '/7_a.png',
        '/5_b.png',
        '/7_b.png',
        '/7_c.png'
      ],
      'answerIndex': 2, // Correct answer is "/7_b.png" at index 2
    },
    {
      'question': 'What word does this baybayin symbol represent?',
      'image': 'assets/tala.png',
      'options': ['Saya', 'Puti', 'Araw', 'Tala'],
      'answerIndex': 3, // Correct answer is "Tala" at index 3
    },
    {
      'question': 'What word does this baybayin symbol represent?',
      'image': 'assets/alon.png',
      'options': ['Alon', 'Ulan', 'Bahay', 'Puno'],
      'answerIndex': 0, // Correct answer is "Alon" at index 0
    },
    {
      'question': 'How is the syllable "Ke" written in Baybayin?',
      'options': [
        '/9_a.png',
        '/7_a.png',
        '/9_b.png',
        '/9_c.png'
      ],
      'answerIndex': 0, // Correct answer is "/9_a.png" at index 0
    },
    {
      'question': 'Which Baybayin character represents the syllable “Le”?',
      'options': [
        '/5_a.png',
        '/5_b.png',
        '/5_c.png',
        '/3_d.png'
      ],
      'answerIndex': 1, // Correct answer is "/5_b.png" at index 1
    },


  ];
  final Random _random = Random();
  int _currentQuestionIndex = 0;
  int _selectedAnswerIndex = -1;
  int _correctAnswerCount = 0;

  @override
  void initState() {
    super.initState();
    _questions.shuffle(_random);
    _correctAnswerCount = 0;
    _questionsAnswered = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            _buildBackgroundImage(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  _buildQuestionText(),
                  _buildBackgroundImage(),
                  _buildOptions(),
                  const SizedBox(height: 20),
                  _buildNextButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        'Quiz',
        style: TextStyle(
          fontFamily: 'SfProDisplay',
          fontSize: 30,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
      backgroundColor: _appBarColor,
      leading: Image.asset(
        'images/baylingo_logo.png',
        width: 50,
        height: 50,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildBackgroundImage() {
    if (_questions[_currentQuestionIndex].containsKey('image')) {
      return Positioned.fill(
        child: Opacity(
          opacity: 0.07,
          child: Transform.rotate(
            angle: pi,
            child: Container(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _buildQuestionText() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF323232),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(26),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            _questions[_currentQuestionIndex]['question'],
            style: TextStyle(
              fontSize: _fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          if (_questions[_currentQuestionIndex].containsKey('image'))
            Image.asset(
              _questions[_currentQuestionIndex]['image'],
              width: 100,
              height: 100,
            ),
        ],
      ),
    );
  }

  Widget _buildOptions() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _questions[_currentQuestionIndex]['options'].length,
              (i) {
            Color buttonColor;
            String optionText;
            String optionImage = '';
            if (_selectedAnswerIndex == -1) {
              buttonColor = _buttonColor;
            } else {
              if (i == _questions[_currentQuestionIndex]['answerIndex']) {
                buttonColor = Colors.green;
              } else if (i == _selectedAnswerIndex) {
                buttonColor = Colors.red;
              } else {
                buttonColor = _buttonColor;
              }
            }

            if (_questions[_currentQuestionIndex]['options'][i]
                .contains('/')) {
              List<String> parts = _questions[_currentQuestionIndex]['options']
              [i]
                  .split('/');
              optionText = parts[0];
              optionImage = parts[1];
            } else {
              optionText = _questions[_currentQuestionIndex]['options'][i];
            }

            return ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedAnswerIndex = i;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  optionImage.isNotEmpty
                      ? Image.asset(
                    'assets/$optionImage',
                    width: 80,
                    height: 80,
                  )
                      : Container(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      optionText,
                      style: const TextStyle(fontSize: _fontSize),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: _selectedAnswerIndex == -1
          ? null
          : () {
        setState(() {
          if (_selectedAnswerIndex ==
              _questions[_currentQuestionIndex]['answerIndex']) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Correct!')),
            );
            _correctAnswerCount++;
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Incorrect!')),
            );
          }

          _questionsAnswered++;
          _currentQuestionIndex =
              (_currentQuestionIndex + 1) % _questions.length;
          _selectedAnswerIndex = -1;

          if (_currentQuestionIndex == _questions.length - 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultsScreen(
                  correctAnswerCount: _correctAnswerCount,
                  totalQuestions: _questions.length,
                  quizType: 'medium', // Pass the quiz type as 'medium'
                ),
              ),
            );
          }
        });
      },
      child: const Text('Next'),
    );
  }
}
