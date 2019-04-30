import 'package:flutter/material.dart';

class AppServices {
  IconData image;
  String title;
  Color color;

  AppServices({this.image, this.title, this.color});
}

class Food {
  String title;
  String image;
  Food({this.title, this.image});
}

class Order {
  String title;

  Order({this.title});

  factory Order.fromJson(Map<String, dynamic> parsedJson) {
    return Order(
      title: parsedJson['title'],
    );
  }

  Order fromJson(String str) {
//    final jsonData = json.decode(str);
//    return Order.fromJson(jsonData);
    return Order(title: str);
  }
}