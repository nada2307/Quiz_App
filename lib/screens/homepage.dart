import 'package:flutter/material.dart';
import 'package:test_app/data/question_list.dart';
import 'package:test_app/screens/result_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = const Color(0xffa9c1f7);
  Color secondColor = const Color(0xff576dca);
  Color isTrue = Colors.green;
  Color isFalse = Colors.red;
  bool isPress = false;
  final PageController? _controller = PageController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: PageView.builder(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (page) {
              setState(() {
                isPress = false;
              });
            },
            itemCount: questions.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Questions ${index + 1}/ ${questions.length}",
                      style: const TextStyle(
                        color: Color(0xff0f1954),
                        fontSize: 27.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    questions[index].question!,
                    style: const TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      //fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  for (int i = 0; i < questions[index].answer!.length; i++)
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 15.0),
                      child: MaterialButton(
                        shape: const StadiumBorder(),
                        color: isPress
                            ? questions[index].answer!.entries.toList()[i].value
                            ? isTrue
                            : isFalse
                            : secondColor,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        onPressed: isPress
                            ? () {}
                            : () {
                          setState(() {
                            isPress = true;
                          });
                          if (questions[index]
                              .answer!
                              .entries
                              .toList()[i]
                              .value) {
                            result = result + 10;
                          }
                        },
                        child: Text(
                          questions[index].answer!.keys.toList()[i],
                          style: const TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RawMaterialButton(
                        //color: const Color(0xff0f1954),
                        //hoverColor: const Color(0xff0f1954),
                        splashColor: secondColor,
                        //highlightColor: const Color(0xff0f1954) ,
                        fillColor: const Color(0xff0f1954),
                        shape: StadiumBorder(),
                        // fillColor: const Color(0xff0f1954),
                        padding: const EdgeInsets.all(12.0),
                        elevation: 0.0,
                        onPressed: isPress
                            ? index + 1 == questions.length
                            ? () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ResultScreen(result)));
                        }
                            : () {
                          _controller!.nextPage(
                              duration:
                              const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        }
                            : null,
                        child: Text(
                          index + 1 == questions.length
                              ? "See result"
                              : "Next Question",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
