import 'package:biblioteca/constants.dart';
import 'package:biblioteca/screens/home/home_screen.dart';
import 'package:biblioteca/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.routeName),
                  child: SvgPicture.asset(
                    "assets/icons/Back ICon.svg",
                    height: 15,
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(83)),
              Text(
                'Catálogo',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(21),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
