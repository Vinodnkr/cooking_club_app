import 'package:flutter/material.dart';

import 'package:cooking_club_app/pages/signin_page.dart';
import 'package:cooking_club_app/pages/recipe_list_page.dart';
import 'package:cooking_club_app/pages/recipe_detail_page.dart';
import 'package:cooking_club_app/pages/my_favourites_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //root place
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cooking Club App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignInPage(),
        '/recipe_list': (context) => RecipeListPage(),
        '/recipe_detail': (context) => RecipeDetailPage(),
        '/my_favourites': (context) => MyFavouritesPage(),
      },
    );
  }
}
