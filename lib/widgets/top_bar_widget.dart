import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  String barTitle;
  TopBarWidget({
    Key? key,
    this.barTitle = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.alarm,
                      color: Colors.red,
                      size: 20.0,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(barTitle),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const <Widget>[
                Text('RM 125.37'),
                Icon(
                  Icons.add,
                  color: Colors.red,
                  size: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
