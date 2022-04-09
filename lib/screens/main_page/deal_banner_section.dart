import 'package:flutter/material.dart';

class DealBannerSection extends StatelessWidget {
  const DealBannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 20, right: 20, bottom: 20, left: 20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              'Boosted Ramadan Deals',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: const Image(
              image: NetworkImage(
                  'https://fishclub.my/wp-content/uploads/2022/03/01-2-scaled.jpg'),
              height: 80,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
