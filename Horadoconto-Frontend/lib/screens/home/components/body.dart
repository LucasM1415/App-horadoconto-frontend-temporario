import 'package:biblioteca/models/Product.dart';
import 'package:biblioteca/screens/home/components/Home_Header.dart';
import 'package:biblioteca/screens/home/components/Logo_Banner.dart';
import 'package:biblioteca/screens/home/components/Product_Section.dart';
import 'package:biblioteca/screens/home/components/special_offers.dart';
import 'package:flutter/material.dart';
import 'package:biblioteca/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(25)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(2)),
            const LogoBanner(),
            SizedBox(height: getProportionateScreenWidth(2)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(15)),
            ProductSection(
              text: 'Livros Populares',
              productType: demoProducts,
            ),
            SizedBox(height: getProportionateScreenWidth(5)),
          ],
        ),
      ),
    );
  }
}
