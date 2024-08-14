import 'package:biblioteca/models/Product.dart';
import 'package:biblioteca/screens/catalog/components/Custom_AppBar.dart';
import 'package:biblioteca/screens/catalog/components/Product_Section.dart';
import 'package:biblioteca/screens/home/components/Home_Header.dart';

import 'package:biblioteca/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F6F9),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: const CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(25)),
              const HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(25)),
              ProductSection(
                text: 'Aventura',
                productType: aventura,
              ),
              SizedBox(height: getProportionateScreenWidth(25)),
              ProductSection(
                text: 'Infantil',
                productType: infantil,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
