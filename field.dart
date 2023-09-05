import 'package:briefly/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Field extends StatefulWidget {
  const Field({super.key});

  @override
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "정치",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "사회",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "경제",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "문화",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "세계",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "과학",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "스포츠",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "연예",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "날씨",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "IT",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/Press/mt.png'),
                        iconSize: 50,
                      ),
                      const Text(
                        "생활",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
