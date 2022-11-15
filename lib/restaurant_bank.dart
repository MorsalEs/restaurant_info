import 'package:restaurant/restaurant.dart';

class RestaurantBank {
  final List<Restaurant> _restaurantList = [
    Restaurant(
      name:"رستورانت نوید",
      address: "گرده پارک ترقی مقابل پوهنتون غالب",
      number: "0799999999",
      image: "assets/images/naweed.jpeg",
      foodListImage: "assets/images/naweedFood.jpeg"
    ),
    Restaurant(
      name: "رستورانت صورتی",
      address: "گرده پارک ترقی در مجاور رستورانت نوید",
      number: "0798888888",
      image: "assets/images/surati.jpeg",
      foodListImage: "assets/images/suratiFood.jpeg"
    ),
    Restaurant(
      name: "رستورانت پدیده",
      address: "گرده پارک ترقی مقابل جمنازیوم میرویس صادق",
      number: "0797123321",
      image: "assets/images/padida.jpeg",
      foodListImage: "assets/images/padidaFood.jpeg"
    ),
    Restaurant(
      name: "رستورانت گلبرک",
      address: "چوک گلها مقابل پاساژ موبایل",
      number: "0788322123",
      image: "assets/images/golbarg.jpeg",
      foodListImage: "assets/images/golbargFood.jpeg"
    ),
    Restaurant(
      name: "پیتزا سرای سلطانی",
      address: "گرده پارک ترقی پهلوی پوهنتون غالب",
      number: "0792763432",
      image: "assets/images/sultani.jpeg",
      foodListImage: "assets/images/sultaniFood.jpeg"
    ),
    Restaurant(
      name: "رستورانت چهار فصل",
      address: "گرده پارک ترقی مقابل میدان والیبال السادات",
      number: "0796556677",
      image: "assets/images/fourFasl.jpeg",
      foodListImage: "assets/images/fourFaslFood.jpeg"
    ),
  ];

  // getter for restaurant List
  List<Restaurant> get restaurantList => _restaurantList;

}