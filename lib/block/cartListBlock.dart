import 'package:bloc_pattern/bloc_pattern.dart';

import 'package:rxdart/rxdart.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../models/foodItems.dart';
import 'provider.dart';

class CartListBloc extends BlocBase {
  // Observable<int> counter; // observable (Stream)

  CartListBloc();
  var _listController = BehaviorSubject<List<FoodItem>>.seeded([]);
  final CartItemController = StreamController.broadcast();
  CartProvider provider = CartProvider();
  Stream<List<FoodItem>> get listSream => _listController.stream;
  Sink<List<FoodItem>> get listSink => _listController.sink;

  //business logic
  addToList(FoodItem foodItem) {
    listSink.add(provider.addToList(foodItem));
  }

  removeFromList(FoodItem foodItem) {
    listSink.add(provider.removeFromList(foodItem));
  }

  @override
  void dispose() {
    // will be called automatically
    _listController.close();
    super.dispose();
  }
}
