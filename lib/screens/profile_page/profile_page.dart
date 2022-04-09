import 'package:flutter/material.dart';

import '../../widgets/top_bar_widget.dart';
import 'profile_hero_section.dart';
import 'profile_list_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TopBarWidget(barTitle: 'Profile'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    ProfileHeroSection(),
                    ProfileListContainer(),
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

class ProfileListContainer extends StatelessWidget {
  const ProfileListContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileListSection(
          iconImage: Icons.email,
          profileListName: "Promotions",
        ),
        ProfileListSection(
          iconImage: Icons.wallet_membership,
          profileListName: "My Wallet",
        ),
        ProfileListSection(
          iconImage: Icons.money,
          profileListName: "DuitNow",
        ),
        ProfileListSection(
          iconImage: Icons.point_of_sale,
          profileListName: "Refer & Earn",
        ),
        ProfileListSection(
          iconImage: Icons.redeem,
          profileListName: "Redemption Code",
        ),
        ProfileListSection(
          iconImage: Icons.redeem,
          profileListName: "Account Settings",
        ),
        ProfileListSection(
          iconImage: Icons.redeem,
          profileListName: "Payment Settings",
        ),
        ProfileListSection(
          iconImage: Icons.redeem,
          profileListName: "Sign Up as a Boost Merchant",
        ),
        ProfileListSection(
          iconImage: Icons.redeem,
          profileListName: "Contact Us",
        ),
        ProfileListSection(
          iconImage: Icons.redeem,
          profileListName: "About Boost",
        ),
        ProfileListSection(
          iconImage: Icons.redeem,
          profileListName: "Sign out",
        ),
      ],
    );
  }
}
