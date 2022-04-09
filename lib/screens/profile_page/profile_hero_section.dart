import 'package:flutter/material.dart';

class ProfileHeroSection extends StatelessWidget {
  const ProfileHeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        right: 30,
        bottom: 20,
        left: 30,
      ),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              const Text('[Profile Image]'),
              Column(
                children: const [
                  Text('John'),
                ],
              )
            ],
          ),
          Row(
            children: const <Widget>[
              ProfileHighlightSection(cardTitle: 'Rewards'),
              ProfileHighlightSection(cardTitle: 'Purchases'),
              ProfileHighlightSection(cardTitle: 'Missions'),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileHighlightSection extends StatelessWidget {
  final String cardTitle;
  const ProfileHighlightSection({Key? key, required this.cardTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
          child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(Icons.gif_box_outlined),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                cardTitle,
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
