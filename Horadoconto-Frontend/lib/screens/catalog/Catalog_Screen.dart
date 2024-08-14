import 'package:flutter/material.dart';
import 'package:biblioteca/screens/catalog/components/body.dart';

class CatalogScreen extends StatelessWidget {
  static String routeName = "/catalog";
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
