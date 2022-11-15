import 'package:flutter/material.dart';
import 'package:restaurant/restaurant.dart';
import 'package:url_launcher/url_launcher.dart';

import 'food_list_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.restaurant});

  final Restaurant restaurant;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("معلومات"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 8),
            child: Image.asset(widget.restaurant.image),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            widget.restaurant.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "${widget.restaurant.name} :آدرس",
            style:
                const TextStyle(fontWeight: FontWeight.normal, fontSize: 20.0),
            textDirection: TextDirection.rtl,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () async {
                  String telephoneNumber = widget.restaurant.number;
                  String telephoneUrl = "tel:$telephoneNumber";
                  if (await canLaunch(telephoneUrl)) {
                    await launch(telephoneUrl);
                  } else {
                    throw "Error occured trying to call that number.";
                  }
                },
                child: const Text("تماس"),
              ),
              const SizedBox(
                width: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FoodListPage(
                        imageUrl: widget.restaurant.name,
                      ),
                    ),
                  );
                },
                child: const Text("لیست غذاها"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
