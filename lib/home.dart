import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BayLingo(),
      routes: {
        '/learn_letra': (context) => const LearnLetra(),
        '/quiz_letra': (context) => const QuizLetra(),
        '/learn_salita': (context) => const LearnSalita(),
        '/quiz_salita': (context) => const QuizSalita(),
      },
    );
  }
}

class BayLingo extends StatelessWidget {
  const BayLingo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2E6),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                color: const Color(0xFF323232),
              ),
            ),
            const Positioned(
              left: 20,
              top: 250,
              child: Text(
                'Learn',
                style: TextStyle(
                  fontFamily: 'SfProDisplay',
                  fontSize: 50.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 60,
                color: const Color(0xFF323232),
              ),
            ),
            Positioned(
              left: 165,
              top: 797,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/learn');
                },
                child: const Image(
                  image: AssetImage('images/baylingo_logo.png'),
                  width: 75,
                  height: 75,
                ),
              ),
            ),

            Positioned(
              left: 34,
              top: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/learn');
                },
                child: const Image(
                  image: AssetImage('images/baybayin1.png'),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 300,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/learn_letra');
                },
                child: const Image(
                  image: AssetImage('images/learn_letra.png'),
                  width: 180,
                  height: 180,
                ),
              ),
            ),
            Positioned(
              left: 215,
              top: 300,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/learnbutton1.png');
                },
                child: const Image(
                  image: AssetImage('images/learn_salita.png'),
                  width: 180,
                  height: 180,
                ),
              ),
            ),
            const Positioned(
              left: 20,
              top: 460,
              child: Text(
                'Quiz',
                style: TextStyle(
                  fontFamily: 'SfProDisplay',
                  fontSize: 50.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.0,
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 500,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/quiz_letra');
                },
                child: const Image(
                  image: AssetImage('images/quiz_letra.png'),
                  width: 180,
                  height: 180,
                ),
              ),
            ),
            Positioned(
              left: 215,
              top: 500,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/quiz_salita');
                },
                child: const Image(
                  image: AssetImage('images/quiz_salita.png'),
                  width: 180,
                  height: 180,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LearnLetra extends StatelessWidget {
  const LearnLetra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learn',
          style: TextStyle(
              fontFamily: 'SfProDisplay',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Colors.white
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
      body: const SafeArea(
        child: Text('This is the Learn Letra'),
      ),
    );
  }
}

class LearnSalita extends StatelessWidget {
  const LearnSalita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learn',
          style: TextStyle(
              fontFamily: 'SfProDisplay',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Colors.white
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
      body: const SafeArea(
        child: Text('This is the Learn Salita'),
      ),
    );
  }
}


class QuizLetra extends StatelessWidget {
  const QuizLetra({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
          style: TextStyle(
              fontFamily: 'SfProDisplay',
              fontSize: 30,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFF2E6),
      body: const SafeArea(
        child: Text('This is the Quiz Letra'),
      ),
    );
  }
}

class QuizSalita extends StatelessWidget {
  const QuizSalita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
          style: TextStyle(
              fontFamily: 'SfProDisplay',
              fontSize: 30,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFF2E6),
      body: const SafeArea(
        child: Text('This is the Quiz Salita'),
      ),
    );
  }
}