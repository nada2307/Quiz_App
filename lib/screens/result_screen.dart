import 'package:flutter/material.dart';
import 'package:test_app/screens/welcome.dart';

class ResultScreen extends StatefulWidget {
  final int score;

  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultSCreenState createState() => _ResultSCreenState();
}

class _ResultSCreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color(0xffa9c1f7);
   // Color secondColor = const Color(0xff5370f7);
    //Color newColor = const Color(0xff0f1954);
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Congratulations 🎉",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              "Your Score is :",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              "${widget.score}",
              style: const TextStyle(
                color: Color(0xff0f1954),
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Welcom()));
                },
                shape: const StadiumBorder(),
                fillColor:  const Color(0xff0f1954),
                child: const Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  child: Text(
                    "Repeat the Quiz",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
