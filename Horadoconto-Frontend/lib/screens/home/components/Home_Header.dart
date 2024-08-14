import 'package:biblioteca/screens/cart/cartScreen.dart';
import 'package:biblioteca/screens/home/components/Icon_Bnt_with_Counter.dart';
import 'package:biblioteca/screens/home/components/SearchField.dart';
import 'package:biblioteca/size_config.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Clipboard.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Notification.svg",
            numOfItens: 1,
            press: () {},
          ),
        ],
      ),
    );
  }
}
