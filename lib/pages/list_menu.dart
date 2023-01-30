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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(129),
        child: Container(
          decoration: const BoxDecoration(color: kSecondColor),
          child: Row(
            children: const [
              Icon(Icons.arrow_back_ios),
              Text(
                'Makanan Sehat',
                style: kMenu,
              ),
            ],
          ),
        ),
      ),
      body:  Scaffold(
        body: ListView(
          children: [

          ],
        ),
      ),
    );
  }
}
