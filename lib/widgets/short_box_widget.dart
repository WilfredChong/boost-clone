import 'package:flutter/material.dart';

class ShortBoxWidget extends StatelessWidget {
  const ShortBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 0),
        child: SizedBox(
          width: 170,
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
                        'https://fishclub.my/wp-content/uploads/2022/03/FC-sales_SG_Free_Delivery_Campaign-04.jpeg'),
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                      right: 20,
                      bottom: 20,
                      left: 10,
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text(
                            'U Mobile Postpaid Plan',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            'RM 5.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: const <Widget>[
                            Icon(
                              Icons.schedule,
                              size: 15,
                            ),
                            Text(
                              '10 Apr 2022',
                              style: TextStyle(
                                fontSize: 10,
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
          ),
        ));
  }
}
