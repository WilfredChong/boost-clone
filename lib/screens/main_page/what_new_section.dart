import 'package:flutter/material.dart';
import '../../widgets/left_image_box_widget.dart';

class WhatNewSection extends StatelessWidget {
  const WhatNewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              "What's New",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          LeftImageBoxWidget(
            widgetImage: "assets/images/rewardimage.jpg",
            widgetTitle: 'Voucher',
            widgetInfo: 'info',
          ),
          LeftImageBoxWidget(
            widgetImage: "assets/images/rewardimage.jpg",
            widgetTitle: 'Voucher2',
            widgetInfo: 'info2',
          ),
          LeftImageBoxWidget(
            widgetImage: "assets/images/rewardimage.jpg",
            widgetTitle: 'Voucher3',
            widgetInfo: 'info3',
          ),
        ],
      ),
    );
  }
}
