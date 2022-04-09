import 'package:flutter/material.dart';

import '../../widgets/top_bar_widget.dart';

class PromotionsPage extends StatelessWidget {
  const PromotionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TopBarWidget(),
            const PromotionTitleSection(),
            const Expanded(
              child: SingleChildScrollView(
                child: PromotionList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PromotionTitleSection extends StatelessWidget {
  const PromotionTitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color.fromARGB(255, 228, 228, 228),
      child: Row(
        children: const <Widget>[
          Expanded(
            child: Text('Promotions'),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.add_box,
                color: Colors.red,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PromotionList extends StatelessWidget {
  const PromotionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const ScrollPhysics(parent: null),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return const ListTile(
          leading: Icon(Icons.local_activity),
          title: Text('Hello'),
          subtitle: Text('World !!!!!'),
          trailing: Icon(Icons.device_hub),
        );
      },
      itemCount: 20,
    );
  }
}
