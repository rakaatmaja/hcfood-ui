import 'package:flutter/material.dart';
import 'package:hcfood_ui/utils/theme.dart';

class ListMenu extends StatefulWidget {
  const ListMenu({Key? key}) : super(key: key);

  @override
  State<ListMenu> createState() => _ListMenuState();
}

class _ListMenuState extends State<ListMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                color: kSecondColor,
              ),
              const Center(
                child: Text(
                  "Makanan Sehat",
                  style: kMenu,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 5),
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kSecondColor,
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 20,
                          offset: Offset(2, 5))
                    ],
                  ),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios),
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ListView(
            children: [
              menuSehat('assets/images/slider1.jpg', 'Sayur'),
              menuSehat('assets/images/slider2.jpg', 'Pizza'),
              menuSehat('assets/images/slider3.jpg', 'Buah'),
              menuSehat('assets/images/slider1.jpg', 'Sayur'),
              menuSehat('assets/images/slider3.jpg', 'Buah'),
              menuSehat('assets/images/slider2.jpg', 'Pizza'),
            ],
          ),
        ),
      ),
    );
  }

  menuSehat(String image, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 13),
      height: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Container(
            height: 174,
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
