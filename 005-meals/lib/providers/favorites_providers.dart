import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]); // never change this list, always replace

  bool toggleMealFavoriteStatus(Meal meal) {
    // check if meal passed in is currently on the favorite meal list
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      // remove meal from favorites list (overwriting existing list with a new list)
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      // add a new meal to the list (createing a new list)
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});
