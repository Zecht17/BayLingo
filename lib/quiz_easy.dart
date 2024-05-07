import 'dart:math';
import 'package:bay_lingo/home.dart';
import 'package:bay_lingo/result.dart';
import 'package:flutter/material.dart';

class QuizEasy extends StatefulWidget {
  const QuizEasy({super.key});

  @override
  State<QuizEasy> createState() => _QuizEasyState();
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    initialRoute: '/quiz_easy',
    routes: {
      '/quiz_easy': (context) => const QuizEasy(),
      '/home': (context) => const BayLingo(), // Add a new route for "/home"
    },
  );
}

class _QuizEasyState extends State<QuizEasy> {
  // Define constants for colors and font sizes
  static const Color _backgroundColor = Color(0xFFFFF2E6);
  static const Color _appBarColor = Color(0xFF323232);
  static const Color _buttonColor = Color(0xFF908C8A);
  static const double _fontSize = 30; // Increase the font size here
  int _questionsAnswered = 0;

  // Define a list of questions
  final List<Map<String, dynamic>> _questions = [
    {
      'question': 'What is the alphabetic character equivalent of this character ',
      'image': 'assets/bigger_da.png',
      'options': ['Da', 'Ka', 'Ga', 'Ta'],
      'answerIndex': 0, // Correct answer is "Da" at index 0
    },
    {
      'question': 'What is the baybayin character equivalent of this alphabetic character “Ma”',
      'options': [
        '/bigger_ba.png',
        '/bigger_na.png',
        '/bigger_ma.png',
        '/bigger_sa.png'
      ],
      'answerIndex': 2, // Correct answer is "/ma.png" at index 2
    },
    {
      'question': 'What is the alphabetic character equivalent of this character”',
      'image': 'assets/bigger_a.png',
      'options': ['Ya', 'I', 'A', 'U'],
      'answerIndex': 2, // Correct answer is "A" at index 2
    },
    {
      'question': 'What is the baybayin character equivalent of this alphabetic character “Ya”',
      'options': [
        '/bigger_ha.png',
        '/bigger_ya.png',
        '/bigger_na.png',
        '/bigger_da.png'
      ],
      'answerIndex': 1, // Correct answer is "/ya.png" at index 1
    },
    {
      'question': 'What is the alphabetic character equivalent of this character',
      'image': 'assets/bigger_ba.png',
      'options': ['Ra', 'Wa', 'Sa', 'Ba'],
      'answerIndex': 3, // Correct answer is "Ba" at index 3
    },
    {
      'question': 'What is the baybayin character equivalent of this alphabetic character “La”',
      'options': [
        '/bigger_la.png',
        '/bigger_o.png',
        '/bigger_ka.png',
        '/bigger_nga.png'
      ],
      'answerIndex': 0, // Correct answer is "/la.png" at index 0
    },
    {
      'question': 'What is the alphabetic character equivalent of this character',
      'image': 'assets/bigger_sa.png',
      'options': ['Ga', 'Ka', 'Sa', 'Ra'],
      'answerIndex': 2, // Correct answer is "Sa" at index 2
    },
    {
      'question': 'What is the baybayin character equivalent of this alphabetic character “Ha”',
      'options': [
        '/bigger_ha.png',
        '/bigger_ma.png',
        '/bigger_ba.png',
        '/bigger_la.png'
      ],
      'answerIndex': 0, // Correct answer is "/ha.png" at index 0
    },
    {
      'question': 'What is the alphabetic character equivalent of this character',
      'image': 'assets/bigger_o.png',
      'options': ['Da', 'Wa', 'Nga', 'O'],
      'answerIndex': 3, // Correct answer is "O" at index 3
    },
    {
      'question': 'What is the baybayin character equivalent of this alphabetic character “Ka”',
      'options': [
        '/bigger_o.png',
        '/bigger_ka.png',
        '/bigger_nga.png',
        '/bigger_wa.png'
      ],
      'answerIndex': 1, // Correct answer is "/ka.png" at index 1
    },

  ];

  // Add a new variable to generate random numbers
  final Random _random = Random();

  // Add a new variable to keep track of the current question index
  int _currentQuestionIndex = 0;

  // Add a new variable to keep track of the selected answer index
  int _selectedAnswerIndex = -1;

  // Add a new variable to keep track of the number of correct answers
  int _correctAnswerCount = 0;

  @override
  void initState() {
    super.initState();
    _questions.shuffle(_random);
    _correctAnswerCount = 0; // Reset correct answer count to 0
    _questionsAnswered = 0; // Reset questions answered to 0
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

  // Extracted widgets into separate methods
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
        borderRadius: BorderRadius.circular(26), // Set the border radius to 26
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          // Display the question text
          Text(
            _questions[_currentQuestionIndex]['question'],
            style: TextStyle(fontSize: _fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          // Display the question image (if available)
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
            _questions[_currentQuestionIndex]['options'].length, (i) {
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

          if (_questions[_currentQuestionIndex]['options'][i].contains('/')) {
            List<String> parts = _questions[_currentQuestionIndex]['options'][i]
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
                  borderRadius: BorderRadius.circular(26)),
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
        }),
      ),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: _selectedAnswerIndex == -1
          ? null
          : () {
        setState(() {
          // Check if the selected answer is correct
          if (_selectedAnswerIndex ==
              _questions[_currentQuestionIndex]['answerIndex']) {
            // Show a snackbar to indicate the correct answer
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Correct!')),
            );
            _correctAnswerCount++;
          } else {
            // Show a snackbar to indicate the incorrect answer
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Incorrect!')),
            );
          }

          // Increment questions answered
          _questionsAnswered++;

          // Move to the next question
          _currentQuestionIndex =
              (_currentQuestionIndex + 1) % _questions.length;
          _selectedAnswerIndex = -1;

          // If all questions have been answered, show the result screen
          if (_currentQuestionIndex == _questions.length - 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultsScreen(
                  correctAnswerCount: _correctAnswerCount,
                  totalQuestions: _questions.length,
                  quizType: 'easy', // Pass the quiz type as 'easy'
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