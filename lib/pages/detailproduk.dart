import 'package:flutter/material.dart';
import 'package:hcfood_ui/utils/theme.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({Key? key}) : super(key: key);

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  "Capcai",
                  style: kMenu,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/slider1.jpg',
                  height: 200,
                  width: 200,
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
                    color: const Color(0xffC5C5FF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 21, left: 21),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Capcai',
              style: kTitleMenu(kBlack),
            ),
            const SizedBox(height: 5),
            const Text(
              'Komposisi : 150 gram wortel\n50 gram jagung putren\n200 gram kembang kol\n3 lembar jamur kuping\n4 buah bakso sapi, diiris tipis\n1 sendok makan saus tiram\n1/2 sendok makan kecap ikan\n1/2 sendok teh garam\n1/4 sendok teh merica bubuk\n1/2 sendok teh gula pasir\n300 ml air',
              style: TextStyle(
                color: Color(0xff4F4141),
                fontSize: 12,
                fontFamily: 'Poppins',
              ),
            ),
            Row(
              children: [
                SizedBox(
                    height: 36,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('-'),
                    )),
                const Text('1'),
                SizedBox(
                    height: 36,
                    width: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('+'),
                    )),
              ],
            ),
            Container(
              height: 51,
              width: 254,
              decoration: BoxDecoration(
                color: kSecondColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Masukkan Keranjang',
                  style: kMenuDynamic(16.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
