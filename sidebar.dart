import 'package:briefly/bookmark.dart';
import 'package:briefly/main.dart';
import 'package:briefly/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "tjdbwls",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'noto',
                  fontWeight: FontWeight.w700),
            ),
            accountEmail: Text("tjdbwls_11@naver.com"),
            // currentAccountPicture: CircleAvatar(
            //   child: ClipOval(
            //     child: Image.asset(
            //       'assets/images/giruem.jpg',
            //       fit: BoxFit.fill,
            //     ),
            //   ),
            // ),
            decoration: BoxDecoration(color: Color.fromRGBO(10, 73, 144, 1)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("홈"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Main())),
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text("저장한 뉴스"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Bookmark())),
          ),
          ListTile(
            leading: Icon(Icons.alarm),
            title: Text("최근 본 뉴스"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Main())),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("설정"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Setting())),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("로그아웃"),
            onTap: () => {
              showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        content: Column(
                      children: <Widget>[
                        Icon(Icons.error),
                        Text.rich(TextSpan(children: [
                          const TextSpan(
                              text: "로그아웃",
                              style: TextStyle(
                                  fontFamily: 'noto',
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: '하시겠습니까?',
                              style: const TextStyle(
                                  fontFamily: 'noto',
                                  color: Color.fromRGBO(117, 117, 117, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))
                        ])),
                      ],
                    ));
                  })
            },
          )
        ],
      ),
    );
  }
}
