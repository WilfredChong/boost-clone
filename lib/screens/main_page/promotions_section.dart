import 'package:flutter/material.dart';
import 'package:fyx/widgets/long_box_widget.dart';

class PromotionsSection extends StatelessWidget {
  const PromotionsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 10, right: 0, bottom: 10, left: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Promotions',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  LongBoxWidget(),
                  LongBoxWidget(),
                  LongBoxWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
