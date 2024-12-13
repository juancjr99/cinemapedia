import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {

  final int currentIndex;
  const CustomBottomNavigation({super.key, required this.currentIndex});

  void onItemTapped(BuildContext context, int index){
    switch(index){
      case 0:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Inicio',
          ),
          
        BottomNavigationBarItem(
          icon: Icon(Icons.label_outline),
          label: 'Categorias',
          ),

          BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favoritos',
          ),
      ],
    );
  }
}