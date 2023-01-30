import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hcfood_ui/pages/list_menu.dart';
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
                      hintText: 'Cari makananmu disini',
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
                    return Builder(
                      builder: (context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(e), fit: BoxFit.cover),
                          ),
                        );
                      },
                    );
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
                    Text(
                      'Makanan Sehat',
                      style: kTitleMenu(kSecondColor),
                    ),
                    Container(
                      width: 82,
                      height: 34,
                      decoration: BoxDecoration(
                        color: kSecondColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300]!,
                              offset: const Offset(1, 3),
                              blurRadius: 3)
                        ],
                      ),
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
                    Text(
                      'Makanan Daerah',
                      style: kTitleMenu(kWhite),
                    ),
                    Container(
                      width: 82,
                      height: 34,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300]!,
                                offset: const Offset(1, 3),
                                blurRadius: 3)
                          ],
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
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const ListMenu()))),
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
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: kBlack, offset: Offset(0, 1), blurRadius: 3)
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
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
