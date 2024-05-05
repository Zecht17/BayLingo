import 'dart:math';
import 'learn_letra.dart';
import 'learn_salita.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: const BayLingo(),
      routes: {
        '/home': (context) => const BayLingo(),
        '/learn_letra': (context) => const LearnLetra(),
        '/quiz_letra': (context) => const QuizLetra(),
        '/learn_salita': (context) => const LearnSalita(),
        '/quiz_salita': (context) => const QuizSalita(),
        '/about_us': (context) => const AboutUs(),
        '/help': (context) => const Help(),
        '/return_phrases': (context) => const LearnSalitaPhrases(),
        '/return_salita': (context) => const LearnSalita(),
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
                opacity: 0.07, // Set opacity value (0.0 to 1.0)
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
            Positioned.fill(
              child: Opacity(
                opacity: 0.07, // Set opacity value (0.0 to 1.0)
                child: Image.asset(
                  'images/baybayin_background.png',
                  fit: BoxFit.cover,
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
              left: 20,
              top: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/learn_letra');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(26), // Set the border radius here
                  child: Image.asset(
                    'images/easy.png',
                    width: 380,
                    height: 129,
                    fit: BoxFit.cover, // Ensure that the image covers the entire container
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 280,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/learn_letra');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(26), // Set the border radius here
                  child: Image.asset(
                    'images/medium.png',
                    width: 380,
                    height: 129,
                    fit: BoxFit.cover, // Ensure that the image covers the entire container
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 480,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/learn_letra');
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(26), // Set the border radius here
                  child: Image.asset(
                    'images/hard.png',
                    width: 380,
                    height: 129,
                    fit: BoxFit.cover, // Ensure that the image covers the entire container
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
          ],
        ),
      ),
    );
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
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
                opacity: 0.07, // Set opacity value (0.0 to 1.0)
                child: Transform.rotate(
                  angle: pi, // Specify the angle of rotation in radians
                  child: Image.asset(
                    'images/baybayin_background.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const Image(
                image: AssetImage('images/contact_us.png'),
              width: 1000,
              height: 1000,
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
                  Navigator.pop(context); // Go back to the previous page
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

class Help extends StatelessWidget {
  const Help ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Help',
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
                opacity: 0.07, // Set opacity value (0.0 to 1.0)
                child: Transform.rotate(
                  angle: pi, // Specify the angle of rotation in radians
                  child: Image.asset(
                    'images/baybayin_background.png',
                    fit: BoxFit.cover,
                  ),
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
                  Navigator.pop(context); // Go back to the previous page
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