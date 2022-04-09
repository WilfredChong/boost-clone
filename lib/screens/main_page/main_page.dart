import 'package:flutter/material.dart';
import 'package:fyx/screens/main_page/my_missions_section.dart';
import 'package:fyx/screens/main_page/promotions_section.dart';
import 'package:fyx/screens/main_page/what_new_section.dart';
import 'categories_section.dart';
import 'deal_banner_section.dart';
import 'hero_section.dart';
import 'my_partner_wallets_section.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xfff9f9f9),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              HeroSection(),
              CategoriesSection(),
              DealBannerSection(),
              MyPartnerWalletsSection(),
              PromotionsSection(),
              WhatNewSection(),
              MyMissionsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
