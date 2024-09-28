import 'package:hora_do_conto/views/home/components/Icon_Bnt_with_Counter.dart';
import 'package:hora_do_conto/views/home/components/SearchField.dart';
import 'package:hora_do_conto/views/profile/tela_perfil.dart';
import 'package:hora_do_conto/widgets/size_config.dart';
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
            press: () => Navigator.push(
              context,
              //Rota para cart
              MaterialPageRoute(builder: (context) => PerfilScreen()),
            ),
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
