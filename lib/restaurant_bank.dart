import 'package:restaurant/restaurant.dart';

class RestaurantBank {
  final List<Restaurant> _restaurantList = [
    Restaurant(
      name:"رستورانت نوید",
      address: "گرده پارک ترقی مقابل پوهنتون غالب",
      number: "0799999999",
      image: "assets/images/naweed.jpg",
      foodListImage: "assets/images/naweedFood.jpg"
    ),
    Restaurant(
      name: "رستورانت صورتی",
      address: "گرده پارک ترقی در مجاور رستورانت نوید",
      number: "0798888888",
      image: "assets/images/surati.jpg",
      foodListImage: "assets/images/suratiFood.jpg"
    ),
    Restaurant(
      name: "رستورانت پدیده",
      address: "گرده پارک ترقی مقابل جمنازیوم میرویس صادق",
      number: "0797123321",
      image: "assets/images/padida.jpg",
      foodListImage: "assets/images/padidaFood.jpg"
    ),
    Restaurant(
      name: "رستورانت گلبرک",
      address: "چوک گلها مقابل پاساژ موبایل",
      number: "0788322123",
      image: "assets/images/golbarg.jpg",
      foodListImage: "assets/images/golbargFood.jpg"
    ),
    Restaurant(
      name: "پیتزا سرای سلطانی",
      address: "گرده پارک ترقی پهلوی پوهنتون غالب",
      number: "0792763432",
      image: "assets/images/sultani.jpg",
      foodListImage: "assets/images/sultaniFood.jpg"
    ),
    Restaurant(
      name: "رستورانت چهار فصل",
      address: "گرده پارک ترقی مقابل میدان والیبال السادات",
      number: "0796556677",
      image: "assets/images/fourFasl.jpg",
      foodListImage: "assets/images/fourFaslFood.jpg"
    ),
  ];

  // getter for restaurant List
  List<Restaurant> get restaurantList => _restaurantList;

}