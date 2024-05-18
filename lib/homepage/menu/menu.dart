import 'package:flutter/material.dart';
import 'package:zomato_restaurent/homepage/menu/menu_card/menu_card.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return MenuCard();
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: null,
          label: Row(
            children: [Icon(Icons.add), Text('ADD')],
          )),
    );
  }
}
