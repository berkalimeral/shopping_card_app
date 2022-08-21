import 'package:flutter/material.dart';

import '../details_page.dart';

class CardWidget extends StatelessWidget {
  final String imgPath;
  final String footTxt;
  final String priceTxt;
  final String starTxt;
  final String timeTxt;
  final String descTxt;
  const CardWidget(
      {Key? key,
      required this.imgPath,
      required this.footTxt,
      required this.priceTxt,
      required this.starTxt,
      required this.timeTxt,
      required this.descTxt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailsPage(),
            ));
      },
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
                    overflow: TextOverflow.clip,
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
