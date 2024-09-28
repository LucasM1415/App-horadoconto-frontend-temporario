import 'package:hora_do_conto/widgets/size_config.dart';
import 'package:flutter/material.dart';

class LogoBanner extends StatelessWidget {
  const LogoBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF303030),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // Texto
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hora do Conto",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "IFPE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(24),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: getProportionateScreenWidth(20)),

          Image.asset(
            'assets/images/ifpe-logo.png',
            width: getProportionateScreenWidth(60),
            height: getProportionateScreenWidth(60),
          ),
        ],
      ),
    );
  }
}
