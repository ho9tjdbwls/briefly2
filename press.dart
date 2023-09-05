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
      home: Main(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Press extends StatefulWidget {
  const Press({super.key});

  @override
  State<Press> createState() => _PressState();
}

class _PressState extends State<Press> {
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
                          "머니투데이",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/channela.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "채널A",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/mail.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "매일경제",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/hanguk.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "한국일보",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/yeonhap.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "연합뉴스",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/jtbc.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "JTBC",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/sbs.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "SBS",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/ytn.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "YTN",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/kbs.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "KBS",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/mbc.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "MBC",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/tvjosun.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "TV조선",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon:
                              Image.asset('assets/images/Press/hankyoreh.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "한겨레",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                              'assets/images/Press/kyeonghyang.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "경향신문",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/seoul.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "서울신문",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/segye.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "세계일보",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset('assets/images/Press/joongang.png'),
                          iconSize: 50,
                        ),
                        const Text(
                          "중앙일보",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
