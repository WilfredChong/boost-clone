import 'package:flutter/material.dart';

class LongBoxWidget extends StatelessWidget {
  const LongBoxWidget({Key? key}) : super(key: key);

  //final double boxWidth;

  // ignore: use_key_in_widget_constructors
  //const LongBoxWidget({required this.boxWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 0),
        child: SizedBox(
          width: 320,
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              child: Column(
                children: [
                  const Image(
                    image: NetworkImage(
                        'https://fishclub.my/wp-content/uploads/2021/12/Categories-1.png'),
                    height: 80,
                    width: 350,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 20,
                      bottom: 20,
                      left: 10,
                    ),
                    child: const Text(
                      'Kongsikan KeberkaTEN Ramadan with Boosth!',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
