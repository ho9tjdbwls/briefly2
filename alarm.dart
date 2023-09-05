import 'package:briefly/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Alarm(),
    );
  }
}

class Alarm extends StatefulWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  final String update = '새로운 업데이트 소식을 확인해보세요.';
  final List<int> times = <int>[1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: AppBar(
              elevation: 3.0,
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              centerTitle: true,
              title: const Text(
                '알림',
                style: TextStyle(
                    fontSize: 23,
                    color: Color.fromRGBO(0, 73, 144, 1),
                    fontFamily: 'noto',
                    fontWeight: FontWeight.w700),
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Main()));
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(0, 73, 144, 1),
                ),
              ),
            )),

////////////////////////////////////////////////////////////////////////

        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          "오늘",
                          style: TextStyle(
                              fontFamily: 'noto',
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                    Container(
                      color: Colors.amber,
                      height: (MediaQuery.of(context).size.height -
                              AppBar().preferredSize.height) *
                          0.3,
                      child: ListView.builder(
                        itemCount: times.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: 70,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Column(
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          color: Colors.orange,
                                          height: 32,
                                          width: 32,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text.rich(TextSpan(children: [
                                          const TextSpan(
                                              text: "Briefly",
                                              style: TextStyle(
                                                  fontFamily: 'noto',
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700)),
                                          TextSpan(
                                              text: '\n$update',
                                              style: const TextStyle(
                                                  fontFamily: 'noto',
                                                  color: Color.fromRGBO(
                                                      117, 117, 117, 1),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500))
                                        ])),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 1,
                                      color: const Color.fromRGBO(219, 219, 219, 1),
                                    )
                                  ],
                                ),
                              ));
                        },
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          "이번주",
                          style: TextStyle(
                              fontFamily: 'noto',
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        )),
                    Container(
                      color: Colors.amber,
                      height: (MediaQuery.of(context).size.height -
                              AppBar().preferredSize.height) *
                          0.45,
                      child: ListView.builder(
                        itemCount: times.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: 70,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                child: Column(
                                  children: [
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          color: Colors.orange,
                                          height: 32,
                                          width: 32,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text.rich(TextSpan(children: [
                                          const TextSpan(
                                              text: "Briefly",
                                              style: TextStyle(
                                                  fontFamily: 'noto',
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 1),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700)),
                                          TextSpan(
                                              text: '\n$update',
                                              style: const TextStyle(
                                                  fontFamily: 'noto',
                                                  color: Color.fromRGBO(
                                                      117, 117, 117, 1),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500))
                                        ])),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 1,
                                      color: const Color.fromRGBO(219, 219, 219, 1),
                                    )
                                  ],
                                ),
                              ));
                        },
                      ),
                    ),
                  ],
                ))));
  }
}
