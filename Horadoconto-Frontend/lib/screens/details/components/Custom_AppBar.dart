import 'package:biblioteca/constants.dart';
import 'package:biblioteca/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:biblioteca/models/Cart.dart';
import 'package:biblioteca/screens/home/components/Icon_Bnt_with_Counter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getProportionateScreenWidth(15)),
      child: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: getProportionateScreenWidth(40),
                width: getProportionateScreenWidth(40),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                    foregroundColor: kDefaultIconLightColor,
                    backgroundColor: kSecondaryColor.withOpacity(0.1),
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    "assets/icons/Back ICon.svg",
                    height: 15,
                  ),
                ),
              ),
              IconBtnWithCounter(
                svgSrc: "assets/icons/Cart Icon.svg",
                numOfItens: demoCarts.length,
                press: () {
                  Navigator.pushNamed(context, '/cart');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
