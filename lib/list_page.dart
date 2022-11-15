import 'package:flutter/material.dart';
import 'package:restaurant/constants.dart';
import 'package:restaurant/restaurant_bank.dart';


class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  RestaurantBank restaurantBank = RestaurantBank();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('رستورانت'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: restaurantBank.restaurantList.length,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () {
              print("to detail page");
            },
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              height: 50,
              width: double.infinity,
              color: Color(kBackColor[index]),
              child: Center(
                child: Text(restaurantBank.restaurantList[index].name),
              ),
            ),
          );
        },
      ),
    );
  }
}
