import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ChoiceChip(
                  label: Text('Preparing (0)'),
                  selected: false,
                  onSelected: null,
                ),
                ChoiceChip(
                  label: Text('Ready (0)'),
                  selected: false,
                  onSelected: null,
                ),
                ChoiceChip(
                  label: Text('Picked up (0)'),
                  selected: false,
                  onSelected: null,
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Center(
                  child: Image.asset('assets/no_order.png'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
