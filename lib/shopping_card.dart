import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 44.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 25.0,
                  ),
                  child: Image.asset('assets/icons/ic_arrow_back.png'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 56.0),
                  child: Text(
                    'Shopping cart (3)',
                    style: TextStyle(
                      color: Color.fromRGBO(85, 77, 86, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
          buildCard(
              imgPath: 'img_seed.jpg',
              footTxt: '🌻 Seeds',
              priceTxt: '\$5.99',
              descTxt: 'For afternoon tea time',
              starTxt: '4.9',
              timeTxt: '32m'),
          const Divider(),
          buildCard(
              imgPath: 'img_taiyaki.jpg',
              footTxt: 'Taiyaki',
              priceTxt: '\$3.99',
              descTxt: 'Japanese ice cream',
              starTxt: '4.9',
              timeTxt: '16m'),
          const Divider(),
          buildCard(
              imgPath: 'img_simit.jpg',
              footTxt: 'Simit Lovers',
              priceTxt: '\$15.99',
              descTxt: 'For everytime simit time',
              starTxt: '5.0',
              timeTxt: '32m'),
          const Divider(),
          buildPayButton(),
        ],
      ),
    );
  }

  Padding buildPayButton() {
    return Padding(
      padding:
          const EdgeInsets.only(right: 16.0, left: 16, bottom: 50, top: 92),
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(238, 103, 35, 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Pay \$25.97',
            style: TextStyle(
              fontSize: 17,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
      {required String imgPath,
      required String footTxt,
      required priceTxt,
      required String starTxt,
      required String timeTxt,
      required String descTxt}) {
    return Padding(
      padding: const EdgeInsets.only(top: 21.0),
      child: SizedBox(
        width: double.infinity,
        height: 120,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, bottom: 16, top: 16),
              child: Container(
                  width: 120,
                  height: 120,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  child: Image.asset(
                    'assets/images/$imgPath',
                    fit: BoxFit.contain,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 198,
                          child: Text(
                            footTxt,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(85, 77, 86, 1)),
                          )),
                      Image.asset('assets/icons/ic_save.png')
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    descTxt,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(151, 145, 151, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    priceTxt,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: Color.fromRGBO(85, 77, 86, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/ic_star.png'),
                      Text(
                        starTxt,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color.fromRGBO(151, 145, 151, 1),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Image.asset('assets/icons/ic_time.png'),
                      Text(
                        timeTxt,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color.fromRGBO(151, 145, 151, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
