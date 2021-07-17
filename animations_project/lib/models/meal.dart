import 'package:rw_flutter_implicit_animations/models/meal_type.dart';

class Meal {
  final String name;
  final String description;
  final double price;
  final String imgUrl;
  final EMealType type;
  Meal({
    name,
    description,
    price,
    imgUrl,
    type,
  })  : this.name = name,
        this.description = description,
        this.price = price,
        this.imgUrl = imgUrl,
        this.type = type;
}

List<Meal> topMeals = [
  Meal(
      name: "Grilled Pork with Sour Sauce",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/pork-sauce.jpeg",
      type: EMealType.topList),
  Meal(
      name: "Tikka Chicken Pizza",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/pizza-1.jpeg",
      type: EMealType.topList),
  Meal(
      name: "Chicken Wings Barbecue",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/barbecue.jpeg",
      type: EMealType.topList),
  Meal(
      name: "Spaghetti with Sausages",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/spaghetti.jpeg",
      type: EMealType.topList),
];

List<Meal> favouriteMeals = [
  Meal(
      name: "Minced Pork with Rice",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/pork-rice.jpg",
      type: EMealType.favourite),
  Meal(
      name: "Veg Salad with Coconut Juice",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/veg-salad-coconut-juice.jpeg",
      type: EMealType.favourite),
  Meal(
      name: "Chocolate Cake",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/chocolate-cake.jpeg",
      type: EMealType.favourite),
  Meal(
      name: "Veg Corrainder Soup",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/veg-soup.jpeg",
      type: EMealType.favourite),
];

List<Meal> continentalMeals = [
  Meal(
      name: "Egusi Soup with Fufu",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/egusi.jpg",
      type: EMealType.continental),
  Meal(
      name: "Arabian Veg Salata",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/arabian-veg-salata.jpeg",
      type: EMealType.continental),
  Meal(
      name: "African Salad",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/abacha.jpg",
      type: EMealType.continental),
  Meal(
      name: "Caribbean Pork with Sauce",
      description:
          "Deserunt dignissimos voluptatem sed nihil consequatur eum. Rerum odit nulla expedita qui rerum minus. Rerum odit nulla expedita qui rerum minus.",
      price: 17.60,
      imgUrl: "assets/images/pork-sauce.jpeg",
      type: EMealType.continental),
];
