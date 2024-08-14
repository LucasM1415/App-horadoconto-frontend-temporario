import 'package:biblioteca/models/Product.dart';
import 'package:biblioteca/screens/catalog/Catalog_Screen.dart';
import 'package:biblioteca/screens/details/details_Screen.dart';
import 'package:biblioteca/screens/home/components/Product_card.dart';
import 'package:biblioteca/screens/home/components/section_title.dart';
import 'package:biblioteca/size_config.dart';
import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
    required this.text,
    required this.productType,
  });
  final String text;
  final List<Product> productType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: text,
          press: () => Navigator.pushNamed(context, CatalogScreen.routeName),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                productType.length,
                (index) => ProductCard(
                  product: productType[index],
                  press: () => Navigator.pushNamed(
                      context, DetailsScreen.routeName,
                      arguments:
                          ProductDetailsArguments(product: productType[index])),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
