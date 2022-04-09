import 'package:flutter/material.dart';
import '../../widgets/left_image_box_widget.dart';

class MyMissionsSection extends StatelessWidget {
  const MyMissionsSection({Key? key}) : super(key: key);

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
              "My Missions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          LeftImageBoxWidget(
            widgetImage: "assets/images/example1.jpg",
            imageFlex: 5,
            infoFlex: 7,
            imageHeight: 120,
            widgetTitle: 'Join a Boost Mission',
            widgetInfo: 'Receive rewards everytime you complete your mission!',
          ),
        ],
      ),
    );
  }
}
