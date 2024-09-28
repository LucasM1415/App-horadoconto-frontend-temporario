import 'package:hora_do_conto/widgets/constants.dart';
import 'package:hora_do_conto/widgets/size_config.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenHeight(20),
          ),
          child: TextField(
            onChanged: (value) {
              // Valor Pesquisa
            },
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Procurar livros",
              prefixIcon: const Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(20),
                vertical: getProportionateScreenHeight(15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
