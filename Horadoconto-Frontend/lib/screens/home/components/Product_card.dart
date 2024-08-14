import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:biblioteca/models/Product.dart';
import 'package:biblioteca/size_config.dart';
import 'package:biblioteca/constants.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    this.width = 130,
    this.aspectRatio = 0.8,
    required this.product,
    required this.press,
  }) : super(key: key);

  final double width;
  final double aspectRatio;
  final Product product;
  final GestureTapCallback press;

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: widget.press,
        child: SizedBox(
          width: getProportionateScreenWidth(widget.width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: widget.aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(widget.product.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.product.title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.product.copys > 0 ? "Disponível" : "Indisponível",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.w600,
                      color: widget.product.copys > 0
                          ? const Color(0xFF34942c)
                          : const Color(0xFFcb0c0c),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      setState(() {
                        widget.product.toggleFavorite();
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      width: getProportionateScreenWidth(25),
                      height: getProportionateScreenWidth(25),
                      decoration: BoxDecoration(
                        color: widget.product.isFavorite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        colorFilter: ColorFilter.mode(
                          widget.product.isFavorite
                              ? const Color(0xFFFF4848)
                              : const Color(0xFFDBDEE4),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
