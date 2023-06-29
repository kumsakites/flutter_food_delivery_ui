import 'package:flutter/material.dart';

FooditemList fooditemList = FooditemList(
  foodItems: [
    FoodItem(
        id: 1,
        title: 'Donimos Pizza',
        hotel: 'Gambella',
        price: 9.8,
        imgUrl: 'images/donimos_pizza.jpg'),
    FoodItem(
        id: 2,
        title: 'Pepperoni Pizza',
        hotel: 'Harar',
        price: 8.5,
        imgUrl: 'images/pepperoni_pizza.jpg'),
    FoodItem(
        id: 3,
        title: 'Polo Pizza',
        hotel: 'Oromia',
        price: 9.5,
        imgUrl: 'images/polo_pizza.jpg'),
    FoodItem(
        id: 4,
        title: 'Gourment Pizza',
        hotel: 'Mexico',
        price: 8.9,
        imgUrl: 'images/gourment_pizza.jpg'),
    FoodItem(
        id: 5,
        title: 'Burger',
        hotel: 'Piassa',
        price: 4.0,
        imgUrl: 'images/burger.jpg'),
    FoodItem(
        id: 6,
        title: 'Sprite',
        hotel: 'Burayu',
        price: 8.5,
        imgUrl: 'images/sprite.jpg'),
  ],
);

class FooditemList {
  List<FoodItem> foodItems;
  FooditemList({required this.foodItems});
}

class FoodItem {
  int id;
  String title;
  String hotel;
  double price;
  String imgUrl;
  int quantity;
  FoodItem(
      {required this.id,
      required this.title,
      required this.hotel,
      required this.price,
      required this.imgUrl,
      this.quantity = 1});

  void increaseQuantity() {
    this.quantity = this.quantity + 1;
  }

  void deccreaseQuantity() {
    this.quantity = this.quantity - 1;
  }
}
