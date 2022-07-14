class Offers {
  final String offer_title;
  final String validity;
  final double? price;
  final double rating;
  final String? image;

  Offers({
    required this.offer_title,
    required this.validity,
    required this.price,
    required this.rating,
    required this.image,
  });
}

List<Offers> offers_list = [
  Offers(
      offer_title: "Offer No.1",
      validity: "22-2022",
      price: 700,
      rating: 5.0,
      image: "offer1.jpg"),
  Offers(
      offer_title: "Offer No.2",
      validity: "23-2022",
      price: 1700,
      rating: 4.5,
      image: "offer2.jpg"),
  Offers(
      offer_title: "Offer No.3",
      validity: "28-2022",
      price: 470,
      rating: 4.0,
      image: "offer3.jpg"),
  Offers(
      offer_title: "Offer No.4",
      validity: "27-2022",
      price: 780,
      rating: 4.7,
      image: "offer4.jpg"),
  Offers(
      offer_title: "Offer No.5",
      validity: "29-2022",
      price: 1500,
      rating: 4.3,
      image: "offer5.jpg"),
];
