import 'package:flutter/material.dart';

// Define the Recipe model
class Recipe {
  final String title;
  final String photoUrl;
  final String category;

  Recipe({required this.title, required this.photoUrl, required this.category});
}

// Define sample recipe data
final List<Recipe> recipes = [
  Recipe(
    title: 'Spaghetti Carbonara',
    photoUrl: 'https://www.allrecipes.com/thmb/Vg2cRidr2zcYhWGvPD8M18xM_WY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/11973-spaghetti-carbonara-ii-DDMFS-4x3-6edea51e421e4457ac0c3269f3be5157.jpg',
    category: 'Italian',
  ),
  Recipe(
    title: 'Chicken Curry',
    photoUrl: 'https://www.kitchensanctuary.com/wp-content/uploads/2022/09/Air-Fryer-Chicken-Curry-square-FS-36.jpg',
    category: 'Indian',
  ),
  // Add more sample recipes as needed
];

class RecipeListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                title: Text(
                  recipes[index].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  recipes[index].category,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    recipes[index].photoUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {
                  // Navigate to Recipe Detail Page when a recipe is tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeDetailPage(recipe: recipes[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to another page (e.g., Recipe Creation Page)
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RecipeCreationPage()),
          );
        },
        child: Icon(Icons.add),
      ),   
    );
  }
}
