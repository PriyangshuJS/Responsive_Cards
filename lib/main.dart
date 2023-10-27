import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cardHeight = constraints.maxHeight / 4;
        double cardWidth = constraints.maxWidth;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 141, 152, 141),
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: const Color.fromARGB(255, 102, 84, 94),
              title: const Text('Cards..'),
            ),
            body: Column(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Card1(
                      cardHeight: cardHeight,
                      cardWidth: cardWidth,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Card2(
                      cardHeight: cardHeight,
                      cardWidth: cardWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Card1 extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  const Card1({required this.cardHeight, super.key, required this.cardWidth});

  @override
  Widget build(BuildContext context) {
    print("1st Card Height - $cardHeight");
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: Container(
        height: cardHeight,
        width: cardWidth,
        color: const Color.fromARGB(255, 202, 127, 104),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: cardHeight / 3,
                    width: cardWidth / 3,
                    color: const Color.fromARGB(255, 201, 255, 199),
                    child: const Center(
                      child: Text("Title"),
                    ),
                  ),
                ),
              ),
              //SizedBox(height: cardHeight / 5),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Container(
                  height: cardHeight / 3,
                  color: const Color.fromARGB(255, 255, 245, 212),
                  child: const Center(
                    child: Text("Description"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  const Card2({required this.cardHeight, super.key, required this.cardWidth});

  @override
  Widget build(BuildContext context) {
    print("2nd Height - $cardHeight");
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      child: Stack(
        children: <Widget>[
          Container(
            height: cardHeight,
            width: cardWidth,
            color: const Color.fromARGB(255, 202, 127, 104),
            margin: const EdgeInsets.only(top: 30),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: cardHeight / 4),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    child: Container(
                      color: const Color.fromARGB(255, 255, 245, 212),
                      height: cardHeight / 3,
                      child: const Center(
                        child: Text("Description"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Container(
                  color: const Color.fromARGB(255, 201, 255, 199),
                  width: 200,
                  height: cardHeight / 3,
                  child: const Center(
                    child: Text("Title"),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
