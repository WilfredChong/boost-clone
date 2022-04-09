import 'package:flutter/material.dart';

class IconTextSet extends StatelessWidget {
  //const IconTextSet({Key? key}) : super(key: key);
  final IconData iconImage;
  final String iconText;

  // ignore: use_key_in_widget_constructors
  const IconTextSet({required this.iconText, required this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Icon(
            iconImage,
            color: Colors.red,
            size: 25.0,
          ),
        ),
        Text(
          iconText,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
