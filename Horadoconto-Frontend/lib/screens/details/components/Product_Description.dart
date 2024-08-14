import 'package:biblioteca/models/Product.dart';
import 'package:biblioteca/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool showFullDescription = false;

  void toggleFavorite() {
    setState(() {
      widget.product.toggleFavorite();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            widget.product.title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              toggleFavorite();
            },
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              width: getProportionateScreenWidth(55),
              decoration: BoxDecoration(
                color: widget.product.isFavorite
                    ? const Color(0xFFFFE6E6)
                    : const Color(0xFFF5F6F9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
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
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: AnimatedCrossFade(
            firstChild: Text(
              showFullDescription
                  ? widget.product.description
                  : widget.product.description.substring(0, 100),
              maxLines: showFullDescription ? null : 4,
            ),
            secondChild: Text(
              widget.product.description,
            ),
            crossFadeState: showFullDescription
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 300),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                showFullDescription = !showFullDescription;
              });
            },
            child: Row(
              children: [
                Text(
                  showFullDescription ? "Ver menos" : "Ver mais",
                  style: const TextStyle(
                    color: Color(0xFF303030),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: Color(0xFF303030),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
