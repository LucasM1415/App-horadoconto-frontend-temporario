import 'package:biblioteca/screens/cart/cartScreen.dart';
import 'package:biblioteca/screens/catalog/Catalog_Screen.dart';
import 'package:biblioteca/screens/details/details_Screen.dart';
import 'package:biblioteca/screens/profile/Profile_Screen.dart';
import 'package:flutter/widgets.dart';
import 'package:biblioteca/screens/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  CatalogScreen.routeName: (context) => const CatalogScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};
