import 'package:briefly/alarm.dart';
import 'package:briefly/field.dart';
import 'package:briefly/press.dart';
import 'package:briefly/sidebar.dart';

import 'package:flutter/material.dart';

import 'package:toggle_switch/toggle_switch.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
      title: 'Briefly',
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  bool istoggleOn = true;
  int activeIndex = 0;

  Widget indicator() => Container(
      alignment: Alignment.center,
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 3,
        effect: JumpingDotEffect(
            dotHeight: 6,
            dotWidth: 6,
            activeDotColor: Colors.white,
            dotColor: Colors.white.withOpacity(0.6)),
      ));

  void iniState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    imageList = ImageList.fromJson(imageitem);
    return Scaffold(
      key: scaffoldkey,
      drawer: Sidebar(),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBar(
            elevation: 3.0,
            backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            centerTitle: true,
            title: const Text(
              '추천뉴스',
              style: TextStyle(
                  color: Color.fromRGBO(10, 73, 144, 1),
                  fontSize: 23,
                  fontFamily: 'noto',
                  fontWeight: FontWeight.w700),
            ),
            leading: IconButton(
                onPressed: () {
                  if (scaffoldkey.currentState!.isDrawerOpen) {
                    scaffoldkey.currentState!.closeDrawer();
                  } else {
                    scaffoldkey.currentState!.openDrawer();
                  }
                },
                icon: const Icon(Icons.menu_rounded,
                    color: Color.fromRGBO(10, 73, 144, 1))),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Alarm()));
                  },
                  icon: const Icon(
                    Icons.alarm,
                    color: Color.fromRGBO(10, 73, 144, 1),
                  ))
            ],
          )),

////////////////////////////////////////////////////////

      body: SafeArea(
          child: Column(children: <Widget>[
        Stack(
          children: <Widget>[
            SizedBox(
              height: 255,
              child: CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
                items: imageList!.list!.map((item) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          item.image,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  });
                }).toList(),
              ),
            ),
            Align(
              heightFactor: 25,
              alignment: Alignment.bottomCenter,
              child: indicator(),
            ),
          ],
        ),
        ToggleSwitch(
          customTextStyles: const [
            TextStyle(
                fontFamily: 'noto', fontSize: 15, fontWeight: FontWeight.w700)
          ],
          minWidth: 130,
          cornerRadius: 25,
          activeFgColor: const Color.fromRGBO(0, 0, 0, 1),
          activeBgColor: const [Color.fromRGBO(255, 255, 255, 1)],
          inactiveBgColor: const Color.fromRGBO(233, 233, 233, 1),
          inactiveFgColor: const Color.fromRGBO(0, 0, 0, 0.4),
          activeBorders: [
            Border.all(
                width: 5.0, color: const Color.fromRGBO(233, 233, 233, 1))
          ],
          initialLabelIndex: istoggleOn ? 0 : 1,
          totalSwitches: 2,
          centerText: true,
          labels: const ["언론사별 뉴스", "분야별 뉴스"],
          radiusStyle: true,
          onToggle: (index) {
            setState(() {
              istoggleOn = index == 0;
            });
          },
        ),
        const SizedBox(
          height: 10,
        ),
        if (istoggleOn)
          SizedBox(
              height: (MediaQuery.of(context).size.height -
                      AppBar().preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.5,
              child: const Press()),
        if (istoggleOn == false)
          SizedBox(
            height: (MediaQuery.of(context).size.height -
                    AppBar().preferredSize.height -
                    MediaQuery.of(context).padding.top) *
                0.5,
            child: const Field(),
          )
      ])),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////

class ImageList {
  List<ImageItem>? list;

  ImageList({this.list});

  factory ImageList.fromJson(Map<String, dynamic> json) {
    var imageList = json['list'] as List<dynamic>;
    List<ImageItem> items = imageList
        .map((item) => ImageItem(
              image: item['image'],
              name: item['name'],
            ))
        .toList();

    return ImageList(list: items);
  }
}

class ImageItem {
  final String image;
  final String name;

  ImageItem({required this.image, required this.name});
}

final imageitem = {
  "list": [
    {"image": "assets/images/RI/image1.png", "name": "image1"},
    {"image": "assets/images/RI/image2.png", "name": "image2"},
    {"image": "assets/images/RI/image3.png", "name": "image3"},
  ]
};
ImageList? imageList;
