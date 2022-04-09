import 'package:flutter/material.dart';
import 'package:fyx/widgets/top_bar_widget.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            TopBarWidget(barTitle: 'Transactions'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 10,
                      bottom: 10,
                    ),
                    child: const Text('History'),
                  ),
                  const TransactionsList(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionsList extends StatelessWidget {
  const TransactionsList({Key? key}) : super(key: key);

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
