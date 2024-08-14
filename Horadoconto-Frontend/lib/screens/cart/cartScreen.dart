import 'package:biblioteca/components/default_button.dart';
import 'package:biblioteca/models/Cart.dart';
import 'package:biblioteca/models/Product.dart';
import 'package:biblioteca/screens/cart/components/body.dart';
import 'package:biblioteca/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = "/cart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: CheckOurCart(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Carrinho",
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 24),
          ),
        ],
      ),
      centerTitle: true,
      backgroundColor: Colors.white, // Se quiser que o AppBar seja branco
      elevation: 0, // Se quiser remover a sombra do AppBar
    );
  }
}

class CheckOurCart extends StatelessWidget {
  const CheckOurCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  height: getProportionateScreenWidth(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/TaskWarning.svg"),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    "Você só poderá realizar o empréstimo de até três livros simultaneamente!",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(text: "Total:\n", children: [
                    TextSpan(
                      text: "${demoCarts.length} Livros",
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    )
                  ]),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(
                    text: "Finalizar",
                    color: const Color(0xFF303030),
                    press: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
