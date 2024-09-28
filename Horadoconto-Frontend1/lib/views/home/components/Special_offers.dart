import 'package:hora_do_conto/models/livro.dart';
import 'package:hora_do_conto/views/catalog/Catalog_Screen.dart';
import 'package:hora_do_conto/views/home/components/Section_title.dart';
import 'package:hora_do_conto/views/profile/tela_perfil.dart';
import 'package:hora_do_conto/widgets/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
    required this.livros,
  });
  final List<Livro> livros;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Recomendações",
          press: () => Navigator.push(
            context,
            //Rota para catalog
            MaterialPageRoute(
                builder: (context) => CatalogScreen(livros: livros)),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(18)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/Recomendação1.png",
                catgory: "Infantil",
                numOfBooks: 20,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/Logo2.png",
                catgory: "Aventura",
                numOfBooks: 15,
                press: () {},
              ),
              SpecialOfferCard(
                image: "assets/images/Image Banner 2.png",
                catgory: "Redes",
                numOfBooks: 10,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.catgory,
    required this.image,
    required this.numOfBooks,
    required this.press,
  });

  final String catgory, image;
  final int numOfBooks;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(242),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.4),
                        const Color(0xFF343434).withOpacity(0.15),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenWidth(10)),
                child: Text.rich(TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                          text: "$catgory\n",
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: "$numOfBooks livros")
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
