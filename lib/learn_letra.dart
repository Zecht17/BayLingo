import 'package:flutter/material.dart';

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
                opacity: 0.07, // Set opacity value (0.0 to 1.0)
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
            const Positioned(
              left: 140,
              top: 165,
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
              top: 205,
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
              bottom: 495,
              left: 170,
              right: 170,
              top: 245,
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
              bottom: 495,
              left: 260,
              right: 80,
              top: 245,
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
              bottom: 495,
              left: 80,
              right: 260,
              top: 245,
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
            const Positioned( // Vowels
              right: 45,
              top: 33,
              child: Image(
                image: AssetImage('assets/a.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 95,
              top: 315,
              child: Text(
                'A-a',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              top: 30,
              child: Image(
                image: AssetImage('assets/i.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 190,
              top: 315,
              child: Text(
                'E-I',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 45,
              top: 30,
              child: Image(
                image: AssetImage('assets/o.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 273,
              top: 315,
              child: Text(
                'O-U',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned( // First row consonants
              right: 115,
              top: 212,
              child: Image(
                image: AssetImage('assets/ba.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 30,
              top: 500,
              child: Text(
                'Ba',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              right: 35,
              top: 212,
              child: Image(
                image: AssetImage('assets/ka.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 112,
              top: 500,
              child: Text(
                'Ka',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              top: 212,
              child: Image(
                image: AssetImage('assets/da.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 175,
              top: 500,
              child: Text(
                'Da/Ra',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 35,
              top: 212,
              child: Image(
                image: AssetImage('assets/ga.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 270,
              top: 500,
              child: Text(
                'Ga',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 115,
              top: 212,
              child: Image(
                image: AssetImage('assets/ha.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 350,
              top: 500,
              child: Text(
                'Ha',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned( // Second row consonants
              right: 115,
              top: 312,
              child: Image(
                image: AssetImage('assets/la.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 30,
              top: 600,
              child: Text(
                'La',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              right: 35,
              top: 312,
              child: Image(
                image: AssetImage('assets/ma.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 112,
              top: 600,
              child: Text(
                'Ma',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              top: 312,
              child: Image(
                image: AssetImage('assets/na.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 193,
              top: 600,
              child: Text(
                'Na',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 35,
              top: 312,
              child: Image(
                image: AssetImage('assets/nga.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 270,
              top: 600,
              child: Text(
                'Nga',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 115,
              top: 312,
              child: Image(
                image: AssetImage('assets/pa.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 350,
              top: 600,
              child: Text(
                'Pa',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned( // Third row consonants
              right: 115,
              top: 412,
              child: Image(
                image: AssetImage('assets/sa.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 30,
              top: 700,
              child: Text(
                'Sa',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              right: 35,
              top: 412,
              child: Image(
                image: AssetImage('assets/ta.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 112,
              top: 700,
              child: Text(
                'Ta',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              top: 412,
              child: Image(
                image: AssetImage('assets/wa.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 190,
              top: 700,
              child: Text(
                'Wa',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 35,
              top: 412,
              child: Image(
                image: AssetImage('assets/ya.png'),
                width: 500,
                height: 500,
              ),
            ),
            const Positioned(
              left: 270,
              top: 700,
              child: Text(
                'Ya',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            const Positioned(
              left: 118,
              top: 412,
              child: Image(
                image: AssetImage('assets/slash.png'),
                width: 500,
                height: 500,
              ),
            ),
            Positioned(
              top: 650,
              left: 350,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle, // Circle
                ),
              ),
            ),
            Positioned(
              top: 670,
              left: 378,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle, // Circle
                ),
              ),
            ),
            const Positioned(
              left: 350,
              top: 700,
              child: Text(
                'e/o',
                style: TextStyle(
                  fontFamily: 'Microsoft',
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1.0,
                  color: Colors.black,
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
              right: 250,
              top: 760,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/help');
                },
                child: const Image(
                  image: AssetImage('images/about_us.png'),
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