import 'package:flutter/material.dart';
import 'package:shopping_card_app/details_page.dart';
import 'package:shopping_card_app/widgets/banner_widget.dart';
import 'package:shopping_card_app/widgets/cart_widget.dart';
import 'package:shopping_card_app/widgets/pay_button_widget.dart';

class ShoppingCard extends StatelessWidget {
  const ShoppingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          BannerWidget(
            bannerTxt: 'Shopping cart (3)',
          ),
          CardWidget(
              imgPath: 'img_seed.jpg',
              footTxt: '🌻 Seeds',
              priceTxt: '\$5.99',
              descTxt: 'For afternoon tea time',
              starTxt: '4.9',
              timeTxt: '32m'),
          Divider(),
          CardWidget(
              imgPath: 'img_taiyaki.jpg',
              footTxt: 'Taiyaki',
              priceTxt: '\$3.99',
              descTxt: 'Japanese ice cream',
              starTxt: '4.9',
              timeTxt: '16m'),
          Divider(),
          CardWidget(
              imgPath: 'img_simit.jpg',
              footTxt: 'Simit Lovers',
              priceTxt: '\$15.99',
              descTxt: 'For everytime simit time',
              starTxt: '5.0',
              timeTxt: '32m'),
          Divider(),
          PayButtonWidget(buttonTxt: 'Pay \$25.97'),
        ],
      ),
    );
  }
}
