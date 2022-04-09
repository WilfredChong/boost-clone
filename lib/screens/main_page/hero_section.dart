// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../promotions_page/promotions_page.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, -1),
          end: Alignment(0, 1),
          colors: [
            Colors.black,
            Colors.red,
          ],
        ),
      ),
      child: Column(
        children: const [
          HeroTopWidget(),
          HeroSliderWidget(),
        ],
      ),
    );
  }
}

class HeroTopWidget extends StatelessWidget {
  const HeroTopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.swap_horiz,
                    color: Colors.red,
                    size: 20.0,
                  ),
                ),
                const Text(
                  'Transfer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Text(
                    'RM 100.25',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  //margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.green,
                    size: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroSliderWidget extends StatelessWidget {
  const HeroSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
          child: RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Share your feedback',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    )),
                TextSpan(text: ' about the \nBoost eWallet new look'),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 20, bottom: 30),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PromotionsPage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0),
              child: Text(
                'Share Feedback',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
