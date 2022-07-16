import 'package:flutter/material.dart';

import 'homepage.dart';

class Welcom extends StatefulWidget {
  const Welcom({Key? key}) : super(key: key);

  @override
  _WelcomState createState() => _WelcomState();
}

class _WelcomState extends State<Welcom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa9c1f7),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 48.0,
          horizontal: 12.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Quiz App",
                style: TextStyle(
                  color: Color(0xff576dca),
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Center(
                child: RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  shape: const StadiumBorder(),
                  fillColor: const Color(0xff0f1954),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                    child: Text(
                      "Start the Quiz",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                "Made by Nada Nabil",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff576dca),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
