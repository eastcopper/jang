import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffE4101E),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 250,
            top: -100,
            child: Transform.rotate(
              angle: -30 * math.pi / 180,
              child: Container(
                width: 120,
                height: 700,
                color: const Color(0xfff6f6f6),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                width: width * 1,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(65),
                    topLeft: Radius.circular(65),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xffFF8A8A).withOpacity(0.4),
                      blurRadius: 50,
                    )
                  ],
                  color: const Color(0xfff6f6f6),
                ),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: width * 0.8,
                        height: 210,
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xfff6f6f6),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 5.0,
                                spreadRadius: 0.0,
                              )
                            ]),
                        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: width * 0.6,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: const Text(
                                    "Hi, Lee Dong Hyeon",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 1,
                                  width: width * 0.6,
                                  color: Colors.grey,
                                ),
                                Container(
                                  width: width * 0.6,
                                  margin: const EdgeInsets.only(top: 10),
                                  child: const Text(
                                    "5일 연속으로 공부하셨습니다.\n오늘 하루도 언어 공부 화이팅!",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Chart(),
                                Container(
                                    transform: Matrix4.translationValues(
                                        -width * 0.15, -30, 0),
                                    width: width * 0.3,
                                    height: 28,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffe4101e),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(5, 5)),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Go! Start!',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xfff6f6f6)),
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.37,
                          height: width * 0.35,
                          decoration: BoxDecoration(
                            color: const Color(0xfff6f6f6),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 5.0,
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff6f6f6),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.feed,
                                  color: Color(0xffFBC00A),
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Basic",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 3),
                                      child: const Text(
                                        "0/5",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: 7),
                                          width: width * 0.3,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffdddddd),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 7),
                                          width: width * 0.1,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffFBC00A),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.37,
                          height: width * 0.35,
                          decoration: BoxDecoration(
                            color: const Color(0xfff6f6f6),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 5.0,
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff6f6f6),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.language,
                                  color: Color(0xffE4101E),
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Languege",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 3),
                                      child: const Text(
                                        "0/5",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top: 7),
                                          width: width * 0.3,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffdddddd),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 7),
                                          width: width * 0.1,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffE4101E),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width * 0.37,
                          height: width * 0.35,
                          decoration: BoxDecoration(
                            color: const Color(0xfff6f6f6),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 5.0,
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff6f6f6),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.message,
                                  color: Color(0xff37B0E5),
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Conversation",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 3),
                                      child: const Text(
                                        "0/5",
                                        style: TextStyle(
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top:7),
                                          width: width * 0.3,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffdddddd),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top:7),
                                          width: width * 0.1,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff37B0E5),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: width * 0.37,
                          height: width * 0.35,
                          decoration: BoxDecoration(
                            color: const Color(0xfff6f6f6),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 5.0,
                                spreadRadius: 0.0,
                              )
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff6f6f6),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 5.0,
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Icon(
                                  Icons.hdr_auto_sharp,
                                  color: Color(0xff72B42C),
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    const Text(
                                      "Word",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 3),
                                      child: const Text(
                                        "0/5",
                                        style: TextStyle(
                                            fontSize: 10
                                        ),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(top:7),
                                          width: width * 0.3,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffdddddd),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top:7),
                                          width: width * 0.1,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff72B42C),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget Chart() {
    return Container(
      transform: Matrix4.translationValues(100, -20, 0),
      width: 80,
      height: 80,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(210, 213, 212, 1),
        borderRadius: BorderRadius.all(Radius.elliptical(80, 80)),
      ),
    );
  }
}
