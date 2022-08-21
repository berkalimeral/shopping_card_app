import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String bannerTxt;
  const BannerWidget({Key? key, required this.bannerTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 24,
              left: 25.0,
            ),
            child: Image.asset('assets/icons/ic_arrow_back.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28.0, left: 56, bottom: 24),
            child: Text(
              bannerTxt,
              style: const TextStyle(
                color: Color.fromRGBO(85, 77, 86, 1),
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
