import 'package:flutter/material.dart';

class LeftImageBoxWidget extends StatelessWidget {
  final String widgetImage;
  final String widgetTitle;
  final String widgetInfo;

  int imageFlex;
  int infoFlex;
  double imageHeight;

  LeftImageBoxWidget({
    Key? key,
    required this.widgetTitle,
    required this.widgetInfo,
    required this.widgetImage,
    this.imageFlex = 1,
    this.infoFlex = 2,
    this.imageHeight = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: imageFlex,
              child: Image.asset(
                widgetImage,
                height: imageHeight,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: infoFlex,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  right: 20,
                  bottom: 20,
                  left: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        widgetTitle,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widgetInfo,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          height: 1.3,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
