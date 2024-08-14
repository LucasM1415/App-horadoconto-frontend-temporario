class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating, copys;
  bool isFavorite;
  final bool isPopular;

  Product({
    required this.id,
    required this.images,
    this.rating = 0.0,
    this.isFavorite = false,
    this.isPopular = false,
    required this.title,
    required this.copys,
    required this.description,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }
}

// Exemplos

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/book_Images/HarryPotter1.png",
      "assets/book_Images/HarryPotter2.png",
    ],
    title: "Harry Potter e a Pedra Filosofal",
    description:
        "Harry Potter é um garoto cujos pais, feiticeiros, foram assassinados por um poderosíssimo bruxo quando ele ainda era um bebê. Ele foi levado, então, para a casa dos tios que nada tinham a ver com o sobrenatural. Pelo contrário. Até os 10 anos, Harry foi uma espécie de gata borralheira: maltratado pelos tios, herdava roupas velhas do primo gorducho, tinha óculos remendados e era tratado como um estorvo. No dia de seu aniversário de 11 anos, entretanto, ele parece deslizar por um buraco sem fundo, como o de Alice no país das maravilhas, que o conduz a um mundo mágico. Descobre sua verdadeira história e seu destino: ser um aprendiz de feiticeiro até o dia em que terá que enfrentar a pior força do mal, o homem que assassinou seus pais. O menino de olhos verde, magricela e desengonçado, tão habituado à rejeição, descobre, também, que é um herói no universo dos magos. Potter fica sabendo que é a única pessoa a ter sobrevivido a um ataque do tal bruxo do mal e essa é a causa da marca em forma de raio que ele carrega na testa. Ele não é um garoto qualquer, ele sequer é um feiticeiro qualquer ele é Harry Potter, símbolo de poder, resistência e um líder natural entre os sobrenaturais. A fábula, recheada de fantasmas, paredes que falam, caldeirões, sapos, unicórnios, dragões e gigantes, não é, entretanto, apenas um passatempo.",
    rating: 4.1,
    copys: 1,
  ),
  Product(
    id: 2,
    images: [
      "assets/book_Images/PercyJackson1.png",
    ],
    title: "Percy Jackson e o ladrão de raios",
    description: description,
    rating: 4.1,
    copys: 0,
  ),
  Product(
    id: 3,
    images: [
      "assets/book_Images/AsCronicasDeNarnia1.png",
    ],
    title: "As Crônicas de Nárnia - O Leão, a Feiticeira e o Guarda-roupa",
    description: description,
    rating: 4.1,
    copys: 3,
  ),
];

List<Product> infantil = [
  Product(
    id: 1,
    images: [
      "assets/book_Images/HarryPotter1.png",
      "assets/book_Images/HarryPotter2.png",
    ],
    title: "Harry Potter e a Pedra Filosofal",
    description:
        "Harry Potter é um garoto cujos pais, feiticeiros, foram assassinados por um poderosíssimo bruxo quando ele ainda era um bebê. Ele foi levado, então, para a casa dos tios que nada tinham a ver com o sobrenatural. Pelo contrário. Até os 10 anos, Harry foi uma espécie de gata borralheira: maltratado pelos tios, herdava roupas velhas do primo gorducho, tinha óculos remendados e era tratado como um estorvo. No dia de seu aniversário de 11 anos, entretanto, ele parece deslizar por um buraco sem fundo, como o de Alice no país das maravilhas, que o conduz a um mundo mágico. Descobre sua verdadeira história e seu destino: ser um aprendiz de feiticeiro até o dia em que terá que enfrentar a pior força do mal, o homem que assassinou seus pais. O menino de olhos verde, magricela e desengonçado, tão habituado à rejeição, descobre, também, que é um herói no universo dos magos. Potter fica sabendo que é a única pessoa a ter sobrevivido a um ataque do tal bruxo do mal e essa é a causa da marca em forma de raio que ele carrega na testa. Ele não é um garoto qualquer, ele sequer é um feiticeiro qualquer ele é Harry Potter, símbolo de poder, resistência e um líder natural entre os sobrenaturais. A fábula, recheada de fantasmas, paredes que falam, caldeirões, sapos, unicórnios, dragões e gigantes, não é, entretanto, apenas um passatempo.",
    rating: 4.1,
    copys: 1,
  ),
  Product(
    id: 2,
    images: [
      "assets/book_Images/PercyJackson1.png",
    ],
    title: "Percy Jackson e o Ladrão de Raios",
    description: description,
    rating: 4.1,
    copys: 0,
  ),
  Product(
    id: 3,
    images: [
      "assets/book_Images/AsCronicasDeNarnia1.png",
    ],
    title: "As Crônicas de Nárnia - O Leão, a Feiticeira e o Guarda-roupa",
    description: description,
    rating: 4.1,
    copys: 3,
  ),
];

List<Product> aventura = [
  Product(
    id: 1,
    images: [
      "assets/book_Images/HarryPotter1.png",
      "assets/book_Images/HarryPotter2.png",
    ],
    title: "Harry Potter e a Pedra Filosofal",
    description:
        "Harry Potter é um garoto cujos pais, feiticeiros, foram assassinados por um poderosíssimo bruxo quando ele ainda era um bebê. Ele foi levado, então, para a casa dos tios que nada tinham a ver com o sobrenatural. Pelo contrário. Até os 10 anos, Harry foi uma espécie de gata borralheira: maltratado pelos tios, herdava roupas velhas do primo gorducho, tinha óculos remendados e era tratado como um estorvo. No dia de seu aniversário de 11 anos, entretanto, ele parece deslizar por um buraco sem fundo, como o de Alice no país das maravilhas, que o conduz a um mundo mágico. Descobre sua verdadeira história e seu destino: ser um aprendiz de feiticeiro até o dia em que terá que enfrentar a pior força do mal, o homem que assassinou seus pais. O menino de olhos verde, magricela e desengonçado, tão habituado à rejeição, descobre, também, que é um herói no universo dos magos. Potter fica sabendo que é a única pessoa a ter sobrevivido a um ataque do tal bruxo do mal e essa é a causa da marca em forma de raio que ele carrega na testa. Ele não é um garoto qualquer, ele sequer é um feiticeiro qualquer ele é Harry Potter, símbolo de poder, resistência e um líder natural entre os sobrenaturais. A fábula, recheada de fantasmas, paredes que falam, caldeirões, sapos, unicórnios, dragões e gigantes, não é, entretanto, apenas um passatempo.",
    rating: 4.1,
    copys: 1,
  ),
  Product(
    id: 2,
    images: [
      "assets/book_Images/PercyJackson1.png",
    ],
    title: "Percy Jackson e o Ladrão de Raios",
    description: description,
    rating: 4.1,
    copys: 0,
  ),
  Product(
    id: 3,
    images: [
      "assets/book_Images/AsCronicasDeNarnia1.png",
    ],
    title: "As Crônicas de Nárnia - O Leão, a Feiticeira e o Guarda-roupa",
    description: description,
    rating: 4.1,
    copys: 3,
  ),
];
const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
