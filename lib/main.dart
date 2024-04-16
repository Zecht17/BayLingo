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
        '/learn': (context) => const LearnScreen(),
        '/quiz': (context) => const QuizScreen(),
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
                  Navigator.pushNamed(context, '/learn');
                },
                child: const Image(
                  image: AssetImage('images/learnbutton1.png'),
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
                  Navigator.pushNamed(context, '/learn');
                },
                child: const Image(
                  image: AssetImage('images/learnbutton1.png'),
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
                  Navigator.pushNamed(context, '/quiz');
                },
                child: const Image(
                  image: AssetImage('images/learnbutton1.png'),
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
                  Navigator.pushNamed(context, '/quiz');
                },
                child: const Image(
                  image: AssetImage('images/learnbutton1.png'),
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

class LearnScreen extends StatelessWidget {
  const LearnScreen({super.key});

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
        backgroundColor: Color(0xFF323232),
        leading: Image.asset(
          'images/baylingo_logo.png',
          width: 50,
          height: 50,
          fit: BoxFit.contain,
        ),
      ),
      backgroundColor: const Color(0xFFFFF2E6),
      body: const SafeArea(
        child: Text('This is the Learn Screen'),
      ),
    );
  }
}


class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

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
        child: Text('This is the Quiz Screen'),
      ),
    );
  }
}
