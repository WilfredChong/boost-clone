import 'package:flutter/material.dart';
import 'package:fyx/widgets/icon_text_set.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, right: 10, bottom: 30, left: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: IconTextSet(
                    iconImage: Icons.money,
                    iconText: 'Bills',
                  ),
                ),
                Expanded(
                  child: IconTextSet(
                    iconImage: Icons.money,
                    iconText: 'Shopping',
                  ),
                ),
                Expanded(
                  child: IconTextSet(
                    iconImage: Icons.money,
                    iconText: 'Games',
                  ),
                ),
                Expanded(
                  child: IconTextSet(
                    iconImage: Icons.money,
                    iconText: 'Boost Makan',
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: const <Widget>[
              Expanded(
                child: IconTextSet(
                  iconImage: Icons.money,
                  iconText: 'Vouchers',
                ),
              ),
              Expanded(
                child: IconTextSet(
                  iconImage: Icons.money,
                  iconText: 'Insurance',
                ),
              ),
              Expanded(
                child: IconTextSet(
                  iconImage: Icons.money,
                  iconText: 'Rewards',
                ),
              ),
              Expanded(
                child: IconTextSet(
                  iconImage: Icons.money,
                  iconText: 'More',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
