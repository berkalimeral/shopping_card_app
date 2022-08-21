import 'package:flutter/material.dart';

class PayButtonWidget extends StatelessWidget {
  final String buttonTxt;
  const PayButtonWidget({Key? key, required this.buttonTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child:  Center(
          child: Text(
            buttonTxt,
            style: const TextStyle(
              fontSize: 17,
              color: Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
        ),
      ),
    );
  }
}
