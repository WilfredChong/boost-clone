import 'package:flutter/material.dart';
import 'package:fyx/widgets/short_box_widget.dart';

class MyPartnerWalletsSection extends StatelessWidget {
  const MyPartnerWalletsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 10, right: 0, bottom: 10, left: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 5),
            child: const Text(
              'My Partner Wallets',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Total: RM 26.50',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ShortBoxWidget(),
                  ShortBoxWidget(),
                  ShortBoxWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
