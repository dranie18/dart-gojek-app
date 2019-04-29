import 'package:gojek/Model.dart';

Future<List<Food>> fetchFood() async {
  List<Food> _goFeaturedFoodList = [];
  _goFeaturedFoodList.add(new Food(
      title: "Steak Andakar",
      image: "assets/images/food_1.jpg"
  ));
  _goFeaturedFoodList.add(new Food(
      title: "Mie Ayam Tumini",
      image: "assets/images/food_2.jpg"
  ));
  _goFeaturedFoodList.add(new Food(
      title: "Tengkleng Hohah",
      image: "assets/images/food_3.jpg"
  ));
  _goFeaturedFoodList.add(new Food(
      title: "Warung Steak",
      image: "assets/images/food_4.jpg"
  ));
  _goFeaturedFoodList.add(new Food(
      title: "Kindai Warung Banjar",
      image: "assets/images/food_5.jpg"
  ));

  return new Future.delayed(new Duration(seconds: 3), () {
    return _goFeaturedFoodList;
  });
}