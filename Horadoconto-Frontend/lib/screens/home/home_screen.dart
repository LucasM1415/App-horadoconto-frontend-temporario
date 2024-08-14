import "package:biblioteca/components/custom_Bottom_Nav_Bar.dart";
import "package:biblioteca/enums.dart";
import "package:flutter/material.dart";
import "package:biblioteca/screens/home/components/body.dart";

class HomeScreen extends StatelessWidget {
  static String routeName = "/Home";
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
