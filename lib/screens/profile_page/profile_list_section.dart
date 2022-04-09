import 'package:flutter/material.dart';

class ProfileListSection extends StatelessWidget {
  IconData iconImage;
  String profileListName;
  ProfileListSection(
      {Key? key, this.iconImage = Icons.money, this.profileListName = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
        right: 20,
        bottom: 15,
        left: 20,
      ),
      child: Row(
        children: [
          Icon(
            iconImage,
          ),
          Text(profileListName),
        ],
      ),
    );
  }
}
