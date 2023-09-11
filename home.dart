import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import 'package:canteenapp/food.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = ["Canteen 1", "Canteen 2", "Canteen 3", "Canteen 4", "Canteen 5"];

  final List<Widget> images = [
  Hero(
    tag: "Canteen 1",
    child: ClipRRect(
    borderRadius: BorderRadius.circular(18),
    child: Image.network(
    "https://www.agarum.com//photos/1/1/3/580/c/l/8e2e757696f76d3514e2205b87f971b7.jpg",
    fit: BoxFit.cover,
    ),
    )),
    Hero(
    tag: "Canteen 2",
    child: ClipRRect(
    borderRadius: BorderRadius.circular(18),
    child: Image.network(
    "https://dt19wmazj2dns.cloudfront.net/wp-content/uploads/2020/05/amrita-vishwa-vidyapeetham-coimbatore-campus-dron-image-01-2.jpg",
    fit: BoxFit.cover,
    ),
    )),
    Hero(
    tag: "Canteen 3",
    child: ClipRRect(
    borderRadius: BorderRadius.circular(18),
    child: Image.network(
    "https://dt19wmazj2dns.cloudfront.net/wp-content/uploads/2021/09/ettimadai-470x285-1.jpg",
    fit: BoxFit.cover,
    ),
    )),
    Hero(
    tag: "Canteen 4",
    child: ClipRRect(
    borderRadius: BorderRadius.circular(18),
    child: Image.network(
    "https://images.collegedunia.com/public/college_data/images/campusimage/1461908989Capture.JPGdf.JPG",
    fit: BoxFit.cover,
    ),
    )),
    Hero(
    tag: "Canteen 5",
    child: ClipRRect(
    borderRadius: BorderRadius.circular(18),
    child: Image.network(
    "https://www.universitydunia.com/images/media/6550ae6eabb58b307183618b7cddfa03.jpg",
    fit: BoxFit.cover,
    ),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: VerticalCardPager(
                titles: titles,
                images: images.map((img) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to HomePage from food.dart when card is clicked
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: img,
                  );
                }).toList(),
                textStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                initialPage: 2,
                align: ALIGN.CENTER,
              ),
            )
          ],
        ),
      ),
    );
  }
}