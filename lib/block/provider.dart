import '../models/foodItems.dart';

class CartProvider {
  List<FoodItem> foodItems = [];

  get listSream => null;
  List<FoodItem> addToList(FoodItem foodItem) {
    //foodItems.add(foodItem);
    bool isPresent = false;
    if (foodItems.length > 0) {
      for (int i = 0; i < foodItems.length; i++) {
        if (foodItems[i].id == foodItem.id) {
          increaseItemQuantity(foodItem);
          isPresent = true;
          break;
        } else {
          isPresent = false;
        }
      }
      if (!isPresent) {
        foodItems.add(foodItem);
      }
    } else {
      foodItems.add(foodItem);
    }
    return foodItems;
  }

  void increaseItemQuantity(FoodItem foodItem) => foodItem.increaseQuantity();
  void decreaseItemQuantity(FoodItem foodItem) => foodItem.increaseQuantity();

  List<FoodItem> removeFromList(FoodItem foodItem) {
    foodItems.remove(foodItem);
    return foodItems;
  }
}
