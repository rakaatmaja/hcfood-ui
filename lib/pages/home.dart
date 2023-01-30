import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hcfood_ui/utils/theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List imgList = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 3),
                        blurRadius: 10,
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Cari makananmu disii',
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 39,
                ),
                CarouselSlider(
                  items: imgList.map((e) {
                    return Builder(builder: (context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(e, fit: BoxFit.cover),
                      );
                    });
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Makanan Sehat',
                      style: kTitleMenu,
                    ),
                    Container(
                      width: 82,
                      height: 34,
                      decoration: BoxDecoration(
                          color: kSecondColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          'Lainnya',
                          style: kSubtitleMenu,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      menuSehat('assets/images/slider1.jpg', 'Sayur'),
                      menuSehat('assets/images/slider2.jpg', 'Pizza'),
                      menuSehat('assets/images/slider3.jpg', 'Buah'),
                      menuSehat('assets/images/slider1.jpg', 'Sayur'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Makanan Daerah',
                      style: kTitleMenu,
                    ),
                    Container(
                      width: 82,
                      height: 34,
                      decoration: BoxDecoration(
                          color: kSecondColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          'Lainnya',
                          style: kSubtitleMenu,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 19,
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      menuSehat('assets/images/slider1.jpg', 'Sayur'),
                      menuSehat('assets/images/slider2.jpg', 'Pizza'),
                      menuSehat('assets/images/slider3.jpg', 'Buah'),
                      menuSehat('assets/images/slider1.jpg', 'Sayur'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  menuSehat(String image, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 150,
      width: 150,
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(100, 0, 0, 0),
                  Color.fromARGB(100, 0, 0, 0),
                ],
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: kMenu,
              ),
            ),
          )
        ],
      ),
    );
  }
}
