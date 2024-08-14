import 'package:biblioteca/components/default_button.dart';
import 'package:biblioteca/models/Cart.dart';
import 'package:biblioteca/models/Product.dart';
import 'package:biblioteca/screens/details/components/Product_Description.dart';
import 'package:biblioteca/screens/details/components/Product_Images.dart';
import 'package:biblioteca/screens/details/components/Top_Rounder_Container.dart';
import 'package:biblioteca/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void toggleFavorite() {
    setState(() {
      widget.product.toggleFavorite();
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isAvailable = widget.product.copys > 0;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductImages(product: widget.product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: widget.product,
                ),
                TopRoundedContainer(
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      Container(
                        height: getProportionateScreenWidth(7),
                        width: getProportionateScreenWidth(40),
                      ),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenWidth(15),
                            bottom: getProportionateScreenWidth(15),
                          ),
                          child: DefaultButton(
                            text: "Realizar Empréstimo",
                            press: () {
                              if (isAvailable) {
                                bool alreadyInCart = demoCarts.any((cart) =>
                                    cart.product.id == widget.product.id);
                                if (alreadyInCart) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Este livro já está no carrinho.'),
                                    ),
                                  );
                                } else if (demoCarts.length >= 3) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Você não pode adicionar mais de 3 itens no carrinho.'),
                                    ),
                                  );
                                } else {
                                  demoCarts.add(Cart(
                                      product: widget.product, numOfItem: 1));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content:
                                          Text('Livro adicionado ao carrinho.'),
                                    ),
                                  );
                                }
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("Livro Indisponível"),
                                      content: const Text(
                                          "Desculpe, este livro não está disponível no momento."),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("OK"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            color: isAvailable
                                ? const Color(0xFF303030)
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
