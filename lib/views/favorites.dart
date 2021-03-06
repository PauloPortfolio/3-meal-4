import 'package:flutter/material.dart';

import '../data/favoriteMeals.dart';
import '../entity/meal.dart';
import '../utils/specs.dart';
import '../widget/list_meals.dart';

class ViewFavorites extends StatelessWidget {
  final List<Meal> _favoriteMeals = dbFavMeals;

  @override
  Widget build(BuildContext context) {
    Specs _dim = Specs(context);
    if (this._favoriteMeals.isEmpty) {
      return Container(
          child: Center(
              child: Text('There is no meals as favorites.',
                  style: TextStyle(fontSize: _dim.height(5)),
                  textAlign: TextAlign.center)));
    }
    return ListMeals(_favoriteMeals);
  }
}
