import 'package:flutter/material.dart';
import 'package:shopping_card_app/widgets/banner_widget.dart';
import 'package:shopping_card_app/widgets/cart_widget.dart';
import 'package:shopping_card_app/widgets/pay_button_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const BannerWidget(bannerTxt: 'Search result detail'),
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 270,
                child: Image.asset(
                  'assets/images/img_baklava.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                bottom: 24,
                left: 16,
                child: Text(
                  'Baklava',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 74,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Row(
                      children: [
                        const Text(
                          '\$12.99',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(85, 77, 86, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Image.asset('assets/icons/ic_star.png'),
                        const Text(
                          '5.0',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 11,
                            color: Color.fromRGBO(151, 145, 151, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Image.asset('assets/icons/ic_time.png'),
                        const Text(
                          '31m',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 11,
                            color: Color.fromRGBO(151, 145, 151, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'Baklava is a layered pastry dessert made of filo pastry, filled with chopped nuts, and sweetened with syrup or honey. It was one of the most popular sweet pastries of Ottoman cuisine.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromRGBO(151, 145, 151, 1),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Text(
                    'Find it in a bundle',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromRGBO(85, 77, 86, 1),
                    ),
                  ),
                ),
                const CardWidget(
                    imgPath: 'img_turkish_tea_time.jpg',
                    footTxt: 'Turkish tea time',
                    priceTxt: '\$10.99',
                    starTxt: '4.9',
                    timeTxt: '30m',
                    descTxt: 'Authentic Turkish tea and snack bundle'),
                const PayButtonWidget(buttonTxt: 'Add to shopping cart'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
