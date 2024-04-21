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
        '/home': (context) => const BayLingo(),
        '/learn_letra': (context) => const LearnLetra(),
        '/quiz_letra': (context) => const QuizLetra(),
        '/learn_salita': (context) => const LearnSalita(),
        '/quiz_salita': (context) => const QuizSalita(),
      },
    );
  }
}

// Home Screen
class BayLingo extends StatelessWidget {
  const BayLingo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2E6),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Opacity(
                opacity: 0.045, // Set opacity value (0.0 to 1.0)
                child: Image.asset(
                  'images/baybayin_background.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), // Set the border radius here
                  child: Image.asset(
                    'images/learn_letra.png',
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 215,
              top: 300,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/learn_salita');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), // Set the border radius here
                  child: Image.asset(
                    'images/learn_salita.png',
                    width: 180,
                    height: 180,
                  ),
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), // Set the border radius here
                  child: Image.asset(
                    'images/quiz_letra.png',
                    width: 180,
                    height: 180,
                  ),
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), // Set the border radius here
                  child: Image.asset(
                    'images/quiz_salita.png',
                    width: 180,
                    height: 180,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Learn Tabs
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
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Opacity(
                opacity: 0.045, // Set opacity value (0.0 to 1.0)
                child: Image.asset(
                  'images/baybayin_background.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 660,
              left: 20,
              right: 20,
              top: 25,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF323232),
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(0,3),
                    )
                  ],// Set border radius
                ),
              ),
            ),
            const Positioned(
              left: 40,
              top: 25,
              child: Text(
                'Mabuhay!',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 40.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 5.0,
                  color: Colors.white
                ),
              ),
            ),
            const Positioned(
              left: 35,
              top: 95,
              child: Text(
                'Let\'s learn the alphabets in baybayin.',
                style: TextStyle(
                    fontFamily: 'MergeOne',
                    fontSize: 18.0,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.0,
                    color: Colors.white
                ),
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
              left: 165,
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
            const Positioned(
              left: 140,
              top: 180,
              child: Text(
                'PATINIG',
                style: TextStyle(
                    fontFamily: 'Microsoft',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    color: Colors.black,
                  shadows: [Shadow(
                    color: Colors.black, // Set the color of the stroke
                    blurRadius: 1, // Set the thickness of the stroke
                  )],
                ),
              ),
            ),
            const Positioned(
              left: 152.5,
              top: 220,
              child: Text(
                '(VOWELS)',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 480,
              left: 170,
              right: 170,
              top: 260,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26), // Set border radius
                ),
              ),
            ),
            Positioned(
              bottom: 480,
              left: 260,
              right: 80,
              top: 260,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 480,
              left: 80,
              right: 260,
              top: 260,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26), // Set border radius
                ),
              ),
            ),
            const Positioned(
              left: 140,
              top: 350,
              child: Text(
                'KATINIG',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                  color: Colors.black,
                  shadows: [Shadow(
                    color: Colors.black, // Set the color of the stroke
                    blurRadius: 1, // Set the thickness of the stroke
                  )],
                ),
              ),
            ),
            const Positioned(
              left: 119,
              top: 390,
              child: Text(
                '(CONSONANTS)',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            // This is the first row
            Positioned(
              bottom: 310,
              left: 10,
              right: 330,
              top: 430,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 310,
              left: 90,
              right: 250,
              top: 430,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 310,
              left: 170,
              right: 170,
              top: 430,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 310,
              left: 250,
              right: 90,
              top: 430,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 310,
              left: 330,
              right: 10,
              top: 430,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            // This is the second row
            Positioned(
              bottom: 210,
              left: 10,
              right: 330,
              top: 530,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 210,
              left: 90,
              right: 250,
              top: 530,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 210,
              left: 170,
              right: 170,
              top: 530,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 210,
              left: 250,
              right: 90,
              top: 530,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 210,
              left: 330,
              right: 10,
              top: 530,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            // This is the third row
            Positioned(
              bottom: 110,
              left: 10,
              right: 330,
              top: 630,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 110,
              left: 90,
              right: 250,
              top: 630,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 110,
              left: 170,
              right: 170,
              top: 630,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 110,
              left: 250,
              right: 90,
              top: 630,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
            Positioned(
              bottom: 110,
              left: 330,
              right: 10,
              top: 630,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF99928C),
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
            ),
          ],
        ),
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
      body: SafeArea(
        child: Stack(
          children: <Widget>[
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
              left: 165,
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
          ],
        ),
      ),
    );
  }
}

// Quiz Tabs
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
      body: SafeArea(
        child: Stack(
          children: <Widget>[
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
              left: 165,
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
          ],
        ),
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
      body: SafeArea(
        child: Stack(
          children: <Widget>[
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
              left: 165,
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
          ],
        ),
      ),
    );
  }
}