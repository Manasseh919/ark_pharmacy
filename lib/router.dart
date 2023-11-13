import 'package:ark_pharmacy/constants/bottom_bar.dart';
import 'package:ark_pharmacy/features/admin/screens/add_product_screen.dart';
import 'package:ark_pharmacy/features/admin/screens/admin_screen.dart';
import 'package:ark_pharmacy/features/auth/screens/auth_screen.dart';
import 'package:ark_pharmacy/features/home/screens/category_screen.dart';
import 'package:ark_pharmacy/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );

    case CategoryScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryScreen(
          category: category,
        ),
      );
   
    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text("Screen does not exist"),
                ),
              ));
  }
}
